module Delay_addr(
    clk,
    delay_addr_in,
    delay_addr_out
);

input clk;
input [3:0] delay_addr_in;
output reg [3:0] delay_addr_out;

//reg [1:0] temp_out;

always @(posedge clk) begin
    //temp_out <= delay_addr_in;
    delay_addr_out <= delay_addr_in;
end
endmodule