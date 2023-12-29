module March(
    clk,
    rst,
    march_addr,
    march_data_out,
	we_n,
	cs_n,
	test_done
);
//======================================
//          I/O PORTS
//======================================
input 					clk;
input 					rst;
output [3:0] 	 march_addr;
output [1:0] march_data_out;
output 				   we_n;
output 				   cs_n;
output            test_done;

reg [1:0] march_data_out;
reg we_n;
wire test_done;
//======================================
//      PARAMETERS & VARIABLES
//======================================
reg [6:0]           counter;
reg [3:0]           c_state;
reg [3:0]           n_state;
localparam   IDLE = 4'b0000;   //初始化所有值
localparam     S1 = 4'b0001;     //將SRAM清空，賦值為0
localparam     S2 = 4'b0010;     //讀0 (BIT-0 SPACE)
localparam     S3 = 4'b0011;	 //寫1 (BIT-0 SPACE)
localparam     S4 = 4'b0100;	 //讀1 (BIT-0 SPACE)
localparam     S5 = 4'b0110;	 //讀0 (BIT-1 SPACE)
localparam     S6 = 4'b0111;     //寫1 (BIT-1 SPACE)
localparam     S7 = 4'b1000;     //讀1 (BIT-1 SPACE)
localparam     S8 = 4'b1001;
localparam     S9 = 4'b1010;
localparam    S10 = 4'b1011;
localparam FINISH = 4'b1100;

always @(posedge clk) begin
	if(!rst) c_state <= IDLE;
	else c_state <= n_state;
end

always @(*) begin
	
	case(c_state)
		
		IDLE: begin		
			if(counter == 0) n_state = S1;
			else n_state = IDLE;
		end
		
		S1: begin		
			if(counter[3:0] < 15) n_state = S1;
            else if(counter == 79) n_state = FINISH;
			else n_state = S2;
		end

		S2: n_state = S3;
		
		S3: n_state = S4;

		S4: begin
			if (counter[3:0] != 15) n_state = S2;
			else  n_state = S5; 
		end

		S5: n_state = S6;
		
		S6: n_state = S7;

		S7: begin
			if (counter[3:0] != 15) n_state = S5;
			else  n_state = S8; 
		end

		S8: n_state = S9;
		
		S9: n_state = S10;

		S10: begin
			if (counter[3:0] != 15) n_state = S8;
			else  n_state = S1; 
		end
		
		default: n_state = IDLE;
	endcase			
end

always @(posedge clk) begin
    if(!rst) counter <= 0;
	else if (c_state == IDLE) counter <= 0;
	else if (c_state == S1) counter <= counter + 1;
	else if (c_state == S4) counter <= counter + 1;
	else if (c_state == S7) counter <= counter + 1;
	else if (c_state == S10) counter <= counter + 1;  
	else counter <= counter;
end

always @(posedge clk) begin
    if(!rst) march_data_out <= 2'b00;
	else if(n_state == S1) march_data_out <= 2'b00;
	
	else if (n_state == S2) march_data_out <= 2'b00;
	else if (n_state == S3) march_data_out <= 2'b01;
	else if (n_state == S4) march_data_out <= 2'b01;


	else if (n_state == S5) march_data_out <= 2'b01;
	else if (n_state == S6) march_data_out <= 2'b11;
	else if (n_state == S7) march_data_out <= 2'b11;

	else if (n_state == S8) march_data_out <= 2'b11;
	else if (n_state == S9) march_data_out <= 2'b10;
	else if (n_state == S10) march_data_out <= 2'b10;

	else march_data_out<= march_data_out;
end

always @(posedge clk) begin
	if(!rst) we_n <= 0;
	else if(n_state == S1) we_n <= 0;
	
	else if (n_state == S2) we_n <= 1;
	else if (n_state == S3) we_n <= 0;
	else if (n_state == S4) we_n <= 1;


	else if (n_state == S5) we_n <= 1;
	else if (n_state == S6) we_n <= 0;
	else if (n_state == S7) we_n <= 1;

	else if (n_state == S8) we_n <= 1;
	else if (n_state == S9) we_n <= 0;
	else if (n_state == S10) we_n <= 1;
	else we_n <= we_n;
end

assign march_addr = (counter < 48)? (counter[3:0]):(~counter[3:0]);
assign cs_n = 0;
assign test_done = (c_state == FINISH)? 1'b1 : 1'b0;

endmodule
