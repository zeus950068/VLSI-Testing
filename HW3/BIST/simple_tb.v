
`timescale 1ns / 1ps
`define CYCLE_TIME 4
module BIST_March_tb;
reg clk;
reg rst;
reg [1:0] normal_input_data;
reg [3:0] normal_input_addr;
reg tester;
wire pass_or_fail;
wire test_done;

BIST_March BIST_March(
    .clk(clk),
    .rst(rst),
    //memory_response,
    //test_patterns,
    .pass_or_fail(pass_or_fail),
    .BIST_test_done(BIST_test_done),
    .normal_input_data(normal_input_data),
    .normal_input_addr(normal_input_addr),
	.normal_input_we_n(normal_input_we_n),
    .normal_input_cs_n(normal_input_cs_n),
    .tester(tester)
);

parameter CYCLE = `CYCLE_TIME;

//======================================
//              Clock
//======================================
initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;

initial begin
	tester = 0; //tester為1時無normal input輸入
    rst       = 1;
    #(CYCLE*2.0) rst = 0;
    #(CYCLE*2.0) rst = 1;
	@(negedge clk);
end

initial begin
	for (i = 0; i < PATNUM; i = i + 1) begin
		for(k = 0; k < 16; k = k + 1) begin
			normal_input_addr = k;
			normal_input_data = {$random()} % 4;
			normal_input_we_n = {$random()} % 2;
		end
	end
end

initial begin
	$sdf_annotate("test_syn.sdf", BIST_March);
	$fsdbDumpfile("./BIST_without_normal_input.fsdb");
	$fsdbDumpvars;
    #(CYCLE * 10000) $finish;
end

endmodule

