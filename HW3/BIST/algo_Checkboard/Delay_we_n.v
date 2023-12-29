module Delay_we_n(
    clk,
    delay_we_in,
    delay_we_out
);

input clk;
input delay_we_in;
output reg delay_we_out;

//reg [1:0] temp_out;

always @(posedge clk) begin
    //temp_out <= delay_we_in;
    delay_we_out <= delay_we_in;
end
endmodule