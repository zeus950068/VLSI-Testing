module Delay_data(
    clk,
    delay_data_in,
    delay_data_out
);

input clk;
input [1:0] delay_data_in;
output reg [1:0] delay_data_out;

//reg [1:0] temp_out;

always @(posedge clk) begin
    //temp_out <= delay_data_in;
    delay_data_out <= delay_data_in;
end
endmodule