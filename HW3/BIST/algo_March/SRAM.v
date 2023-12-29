module SRAM(
	clk,
	rst, 
	we_n, 
	cs_n, 
	data_in, 
	data_out,
	addr
);

input clk;
input rst;
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


always @(posedge clk) begin
	if(!rst) begin
		mem[0] <= 0;
		mem[1] <= 0;
		mem[2] <= 0;
		mem[3] <= 0;
	end
	else begin
		////////////////////////////////////////////////////////WRITE MODE////////////////////////////////////////////////////////////////
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

always @(posedge clk) begin
	if(!rst) data_out <= 'bx;
	else if((we_n == 1) && (cs_n == 0)) data_out <= {mem[addr[3:2]][addr[1:0] + 4], mem[addr[3:2]][addr[1:0]]};
	else data_out <= 'bx;
end

/*assign data_out = ( (we_n == 1) && (cs_n == 0) && (addr == 0))? {mem[0][4],mem[0][0]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 1))? {mem[0][5],mem[0][1]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 2))? {mem[0][6],mem[0][2]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 3))? {mem[0][7],mem[0][3]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 4))? {mem[1][4],mem[1][0]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 5))? {mem[1][5],mem[1][1]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 6))? {mem[1][6],mem[1][2]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 7))? {mem[1][7],mem[1][3]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 8))? {mem[2][4],mem[2][0]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 9))? {mem[2][5],mem[2][1]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 10))? {mem[2][6],mem[2][2]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 11))? {mem[2][7],mem[2][3]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 12))? {mem[3][4],mem[3][0]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 13))? {mem[3][5],mem[3][1]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 14))? {mem[3][6],mem[3][2]}:
				  ( (we_n == 1) && (cs_n == 0) && (addr == 15))? {mem[3][7],mem[3][3]}:
															                       'bx;
*/



endmodule