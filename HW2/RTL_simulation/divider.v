module divider(dividend, divisor, quotient, remainder, clk, rst_n, in_valid, out_valid);
input clk, rst_n;
input [7:0] dividend;
input [7:0] divisor;
input in_valid;
output reg out_valid;
output reg [7:0] quotient;
output reg [7:0] remainder;

reg [7:0] input_A;
reg [7:0] input_B;
reg [2:0] c_state, n_state;
parameter IDLE = 2'b00;
parameter CALCULATE = 2'b01;
parameter OUTPUT = 2'b10;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		input_A <= 0;
		input_B <= 0;
	end
	else begin
		if(in_valid) begin
			input_A <= dividend;
			input_B <= divisor;
		end
		else if(c_state == CALCULATE) begin
			input_A <= input_A - input_B;
		end
	end
end

always@(posedge clk or negedge rst_n)begin
	if(!rst_n) c_state<=IDLE;
	else c_state<=n_state;
end




always @(*) begin
	
	case(c_state)
		
		IDLE: begin
		
			if(in_valid) n_state = CALCULATE;
			else n_state = IDLE;
		end
		
		CALCULATE: begin
		
			if(input_A >= input_B) n_state = CALCULATE;
			else n_state = OUTPUT;
		end

		OUTPUT: begin

			n_state = IDLE;	
		end
		
		default: n_state = IDLE;
	endcase			
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) quotient<=0;
	else begin
		if(c_state==IDLE) quotient<=0;
		else if (c_state == CALCULATE) quotient <= quotient + 1'b1;
		else if(c_state==OUTPUT) quotient <= quotient - 1;
		else quotient<=quotient;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) remainder<=0;
	else begin
		if(c_state==IDLE) remainder<=0;
		else if(c_state==CALCULATE) remainder <= input_A;
		else remainder<=remainder;
	end
end


always @(posedge clk or negedge rst_n)begin
	if(!rst_n) out_valid<=0;
	else begin
		if(c_state == OUTPUT) out_valid<=1;
		else out_valid <= 0;
	end

end
		
endmodule

