`timescale 1ns / 1ps
`define CYCLE_TIME 4
module checkboard_tb;
reg clk;
reg rst;
wire [3:0] checkboard_addr;
wire [1:0] checkboard_data_out;
wire we_n;
wire cs_n;
wire test_done;

Checkboard Checkboard(
    //OUTPUT signals
    clk,
    rst,
    //INPUT signals
    checkboard_addr,
    checkboard_data_out,
    we_n,
    cs_n,
    test_done
);


//======================================
//      PARAMETERS & VARIABLES
//======================================

parameter CYCLE = `CYCLE_TIME;

//======================================
//              Clock
//======================================
initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;

initial begin
    rst       = 1;
    #(CYCLE/2) rst = 0;
    #(CYCLE*2.5) rst = 1;
	@(negedge clk);
end

initial begin
	$sdf_annotate("BIST_SRAM_syn.sdf", Checkboard);
	$fsdbDumpfile("./checkboard.fsdb");
	$fsdbDumpvars;
    #(CYCLE * 1000) $finish;
end

endmodule
