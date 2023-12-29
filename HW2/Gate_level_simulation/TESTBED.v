`include "PATTERN.v"
module TESTBED;

wire clk;
wire rst_n;
wire in_valid;
wire [7:0] dividend;
wire [7:0] divisor;
wire [7:0] quotient;
wire [7:0] remainder;
wire out_valid;

divider U_divider(
	.dividend(dividend),
	.divisor(divisor), 
	.quotient(quotient), 
	.remainder(remainder), 
	.clk(clk), 
	.rst_n(rst_n), 
	.in_valid(in_valid), 
	.out_valid(out_valid)
);

PATTERN U_PATTERN(
	.dividend(dividend),
	.divisor(divisor), 
	.quotient(quotient), 
	.remainder(remainder), 
	.clk(clk), 
	.rst_n(rst_n), 
	.in_valid(in_valid), 
	.out_valid(out_valid)
);

initial begin
	$sdf_annotate("divider_syn.sdf", U_divider);
	$fsdbDumpfile("./divider.fsdb");
	$fsdbDumpvars(0,"+mda");
	$fsdbDumpvars();
end


endmodule
