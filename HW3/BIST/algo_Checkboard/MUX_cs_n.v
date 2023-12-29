module MUX_cs_n(
    normal_input_cs_n,
    bist_cs_n,
    sel,
    out_cs_n
);

input normal_input_cs_n;
input bist_cs_n;
input sel;
output out_cs_n;

assign out_cs_n = (sel)? normal_input_cs_n:bist_cs_n;

endmodule
