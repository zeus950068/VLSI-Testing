`include "Checkboard.v"
`include "Comparator.v"
`include "Delay_data.v"
`include "Delay_addr.v"
`include "Delay_we_n.v"
`include "MUX_addr.v"
`include "MUX_data.v"
`include "MUX_we_n.v"
`include "MUX_cs_n.v"
`include "SRAM.v"

module BIST_Checkboard(
    clk,
    rst,
    normal_input_data,
    normal_input_addr,
	normal_input_we_n,
    normal_input_cs_n,
    tester,
	pass_or_fail,
    BIST_test_done
);

input clk;
input rst;
input [1:0] normal_input_data;
input [3:0] normal_input_addr;
input       normal_input_we_n;
input       normal_input_cs_n;
input tester;

output pass_or_fail;
output BIST_test_done;

wire [1:0] delay_data_out;
wire [3:0] delay_addr_out;
wire       delay_we_out;
wire [1:0] test_data;
wire [3:0] test_addr;
wire [3:0] sram_addr;
wire [1:0] sram_data_in;
wire [1:0] sram_data_out;
wire bist_output_we_n;
wire bist_output_cs_n;
wire pass_or_fail;
wire output_we_n;
wire output_cs_n;
wire test_done;
reg [5:0]  bist_count;

Checkboard Pattern_Generator(
    .clk(clk),
    .rst(rst),
    .checkboard_addr(test_addr),
    .checkboard_data_out(test_data),
    .we_n(bist_output_we_n),
    .cs_n(bist_output_cs_n),
    .test_done(test_done)
);

MUX_data MUX_data(
    .normal_input_data(normal_input_data),
    .test_patterns(test_data),
    .sel(tester),
    .out_data(sram_data_in)
);

MUX_addr MUX_addr(
    .normal_input_addr(normal_input_addr),
    .test_patterns(test_addr),
    .sel(tester),
    .out_addr(sram_addr)
);

MUX_we_n MUX_we_n(
    .normal_input_we_n(normal_input_we_n),
    .bist_we_n(bist_output_we_n),
    .sel(tester),
    .out_we_n(output_we_n)
);

MUX_cs_n MUX_cs_n(
    .normal_input_cs_n(normal_input_cs_n),
    .bist_cs_n(bist_output_cs_n),
    .sel(tester),
    .out_cs_n(output_cs_n)
);

SRAM SRAM(
	.clk(clk),
	.rst(rst), 
    .we_n(output_we_n),
    .cs_n(output_cs_n),
	.data_in(sram_data_in), 
	.data_out(sram_data_out),
	.addr(sram_addr)    
);

Delay_data Delay_data(
    .clk(clk),
    .delay_data_in(test_data),
    .delay_data_out(delay_data_out)
);
Delay_addr Delay_addr(
    .clk(clk),
    .delay_addr_in(test_addr),
    .delay_addr_out(delay_addr_out)
);

Delay_we_n Delay_we_n(
    .clk(clk),
    .delay_we_in(bist_output_we_n),
    .delay_we_out(delay_we_out)
);

Comparator Comparator(
    .data_in1(delay_data_out),
    .data_in2(sram_data_out),
    .Equal_or_not(pass_or_fail),
    .we_n(delay_we_out)
);

always @(posedge clk) begin
    if (!rst) bist_count <= 0;
    else if(delay_we_out == 0) bist_count <= bist_count;
    else bist_count <= bist_count + 1;
end

assign BIST_test_done = (tester)? 0 : test_done;
assign monitoring_Checkboard_data = test_data;
assign monitoring_sram_out = sram_data_out;
assign monitoring_Checkboard_addr = test_addr;
assign monitoring_Checkboard_cs = bist_output_cs_n;
assign monitoring_Checkboard_we = bist_output_we_n;

endmodule
