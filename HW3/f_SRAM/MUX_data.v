module MUX_data(
    normal_input_data,
    test_patterns,
    sel,
    out_data
);

input [1:0] normal_input_data;
input [1:0] test_patterns;
input sel;
output [1:0] out_data;

assign out_data = (sel)? normal_input_data:test_patterns;

endmodule
