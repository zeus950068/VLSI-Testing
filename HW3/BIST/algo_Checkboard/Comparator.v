module Comparator(
    data_in1,
    data_in2,
    Equal_or_not,
    we_n
);

input [1:0] data_in1;
input [1:0] data_in2;
input       we_n;
output  Equal_or_not;


assign Equal_or_not = (data_in1 != data_in2 && we_n)? 0:1;

endmodule
