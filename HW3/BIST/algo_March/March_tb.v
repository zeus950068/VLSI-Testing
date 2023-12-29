`timescale 1ns / 1ps
`define CYCLE_TIME 4
module march_tb;

reg clk;
reg rst;
wire [3:0] march_addr;
wire [1:0] march_data_out;

March U1(
    clk,
    rst,
    march_addr,
    march_data_out,
);

parameter CYCLE = `CYCLE_TIME;

//======================================
//              Clock
//======================================
initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;

initial begin
    rst       = 1;
    #(CYCLE*2.0) rst = 0;
    #(CYCLE*2.0) rst = 1;
	@(negedge clk);
end

initial begin
	$sdf_annotate("test_syn.sdf", U1);
	$fsdbDumpfile("./march.fsdb");
	$fsdbDumpvars;
    #(CYCLE * 10000) $finish;
end

endmodule