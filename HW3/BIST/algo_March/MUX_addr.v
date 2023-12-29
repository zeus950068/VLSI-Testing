module MUX_addr(
    normal_input_addr,
    test_patterns,
    sel,
    out_addr
);

input [3:0] normal_input_addr;
input [3:0] test_patterns;
input sel;
output [3:0] out_addr;

assign out_addr = (sel)? normal_input_addr:test_patterns;

endmodule

