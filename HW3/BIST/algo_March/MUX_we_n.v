module MUX_we_n(
    normal_input_we_n,
    bist_we_n,
    sel,
    out_we_n
);

input  normal_input_we_n;
input bist_we_n;
input sel;
output  out_we_n;

assign out_we_n = (sel)? normal_input_we_n:bist_we_n;

endmodule
