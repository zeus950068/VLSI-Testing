module SRAM(
	clk,
	rst_n, 
	we_n, 
	cs_n, 
	data_in, 
	data_out,
	addr
);

input clk;
input rst_n;
input we_n;
input cs_n;   //we:判斷讀取或寫入; cs:chip select
input [1:0] data_in;
input [3:0] addr;
output [1:0] data_out;


reg [1:0] data_out;
reg [7:0] mem [3:0];
wire data0;
wire data1;

assign data0 = data_in[0];
assign data1 = data_in[1];


always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		mem[0] <= 0;
		mem[1] <= 0;
		mem[2] <= 0;
		mem[3] <= 0;
	end
	else begin
		if((cs_n == 0) && (we_n == 0)) begin
			case(addr)
				0: begin
					mem[0][0] <= data0;
					mem[0][4] <= data1;
				end
				1: begin
					mem[0][1] <= data0;
					mem[0][5] <= data1;
				end
				2: begin
					mem[0][2] <= data0;
					mem[0][6] <= data1;
				end
				3: begin
					mem[0][3] <= data0;
					mem[0][7] <= data1;
				end
				4: begin
					mem[1][0] <= data0;
					mem[1][4] <= data1;
				end
				5: begin
					mem[1][1] <= data0;
					mem[1][5] <= data1;
				end
				6: begin
					mem[1][2] <= data0;
					mem[1][6] <= data1;
				end
				7: begin
					mem[1][3] <= data0;
					mem[1][7] <= data1;
				end
				8: begin
					mem[2][0] <= data0;
					mem[2][4] <= data1;
				end
				9: begin
					mem[2][1] <= data0;
					mem[2][5] <= data1;
				end
				10: begin
					mem[2][2] <= data0;
					mem[2][6] <= data1;
				end
			    11: begin
					mem[2][3] <= data0;
					mem[2][7] <= data1;
				end
				12: begin
					mem[3][0] <= data0;
					mem[3][4] <= data1;
				end
				13: begin
					mem[3][1] <= data0;
					mem[3][5] <= data1;
				end
				14: begin
					mem[3][2] <= data0;
					mem[3][6] <= data1;
				end
				15: begin
					mem[3][3] <= data0;
					mem[3][7] <= data1;
				end
			endcase
		end	
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) data_out <= 'bx;
	else if((we_n == 1) && (cs_n == 0)) data_out <= {mem[addr[3:2]][addr[1:0] + 4], mem[addr[3:2]][addr[1:0]]};
	else data_out <= 'bx;
end

endmodule