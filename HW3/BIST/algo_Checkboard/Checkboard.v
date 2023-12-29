module Checkboard(
    clk,
    rst,
    checkboard_addr,
    checkboard_data_out,
    we_n,
    cs_n,
    test_done
);

input clk;
input rst;
output [3:0] checkboard_addr;
output [1:0] checkboard_data_out;
output we_n;
output cs_n;
output test_done;

reg [1:0] checkboard_data_out;
reg [3:0] checkboard_addr;
reg [6:0] counter;
reg [2:0] c_state;
reg [2:0] n_state;
wire test_done;

localparam IDLE = 3'b000;
localparam S1 = 3'b001;     //write 0303_3030
localparam S2 = 3'b010;     //read
localparam S3 = 3'b011;     //write 3030_0303
localparam FINISH = 3'b100;     

always @(posedge clk) begin
    if(!rst) c_state <= IDLE;
    else c_state <= n_state;
end

always @(*) begin
    case(c_state)
        IDLE: begin
            if(!rst) n_state = IDLE;
            else n_state = S1;
        end

        S1: begin
            if(counter == 16) n_state = S2;
            else n_state = S1;
        end

        S2: begin
            if(counter == 64) n_state = FINISH;
            else if(counter == 32) n_state = S3;
            else n_state = S2;
        end

        S3: begin
            if(counter == 48) n_state = S2;
            else n_state = S3;
        end

        FINISH: begin
            n_state = IDLE;
        end

        default: n_state = IDLE;
    endcase
end

always @(posedge clk) begin
    if(!rst) counter <= 0;
    else if(c_state == IDLE) counter <= 0;
    else if(c_state == S1) counter <= counter + 1;
    else if(c_state == S2) counter <= counter + 1;
    else if(c_state == S3) counter <= counter + 1;
    else if(c_state == FINISH) counter <= 0;
    else counter <= counter;
end

always @(posedge clk) begin
    if(!rst) checkboard_addr <= 0;
    else checkboard_addr <= counter[3:0];
end

always @(posedge clk) begin
    if(!rst) checkboard_data_out <= 0;
    else if(n_state == IDLE) checkboard_data_out <= 0;
    else if(n_state == S1) begin
        if(counter[3:0] == 0) checkboard_data_out <= 0;
        else if(counter[3:0] == 1) checkboard_data_out <= 3;
        else if(counter[3:0] == 2) checkboard_data_out <= 0;
        else if(counter[3:0] == 3) checkboard_data_out <= 3;
        else if(counter[3:0] == 4) checkboard_data_out <= 3;
        else if(counter[3:0] == 5) checkboard_data_out <= 0;
        else if(counter[3:0] == 6) checkboard_data_out <= 3;
        else if(counter[3:0] == 7) checkboard_data_out <= 0;
        else if(counter[3:0] == 8) checkboard_data_out <= 0;
        else if(counter[3:0] == 9) checkboard_data_out <= 3;
        else if(counter[3:0] == 10) checkboard_data_out <= 0;
        else if(counter[3:0] == 11) checkboard_data_out <= 3;
        else if(counter[3:0] == 12) checkboard_data_out <= 3;
        else if(counter[3:0] == 13) checkboard_data_out <= 0;
        else if(counter[3:0] == 14) checkboard_data_out <= 3;
        else if(counter[3:0] == 15) checkboard_data_out <= 0;
    end
    else if(n_state == S2) begin
        if(counter == 16) checkboard_data_out <= 0;
        else if(counter == 17) checkboard_data_out <= 3;
        else if(counter == 18) checkboard_data_out <= 0;
        else if(counter == 19) checkboard_data_out <= 3;
        else if(counter == 20) checkboard_data_out <= 3;
        else if(counter == 21) checkboard_data_out <= 0;
        else if(counter == 22) checkboard_data_out <= 3;
        else if(counter == 23) checkboard_data_out <= 0;
        else if(counter == 24) checkboard_data_out <= 0;
        else if(counter == 25) checkboard_data_out <= 3;
        else if(counter == 26) checkboard_data_out <= 0;
        else if(counter == 27) checkboard_data_out <= 3;
        else if(counter == 28) checkboard_data_out <= 3;
        else if(counter == 29) checkboard_data_out <= 0;
        else if(counter == 30) checkboard_data_out <= 3;
        else if(counter == 31) checkboard_data_out <= 0;

        else if(counter == 48) checkboard_data_out <= 3;
        else if(counter == 49) checkboard_data_out <= 0;
        else if(counter == 50) checkboard_data_out <= 3;
        else if(counter == 51) checkboard_data_out <= 0;
        else if(counter == 52) checkboard_data_out <= 0;
        else if(counter == 53) checkboard_data_out <= 3;
        else if(counter == 54) checkboard_data_out <= 0;
        else if(counter == 55) checkboard_data_out <= 3;
        else if(counter == 56) checkboard_data_out <= 3;
        else if(counter == 57) checkboard_data_out <= 0;
        else if(counter == 58) checkboard_data_out <= 3;
        else if(counter == 59) checkboard_data_out <= 0;
        else if(counter == 60) checkboard_data_out <= 0;
        else if(counter == 61) checkboard_data_out <= 3;
        else if(counter == 62) checkboard_data_out <= 0;
        else if(counter == 63) checkboard_data_out <= 3;
    end
    else if(n_state == S3) begin
        if(counter[3:0] == 0) checkboard_data_out <= 3;
        else if(counter[3:0] == 1) checkboard_data_out <= 0;
        else if(counter[3:0] == 2) checkboard_data_out <= 3;
        else if(counter[3:0] == 3) checkboard_data_out <= 0;
        else if(counter[3:0] == 4) checkboard_data_out <= 0;
        else if(counter[3:0] == 5) checkboard_data_out <= 3;
        else if(counter[3:0] == 6) checkboard_data_out <= 0;
        else if(counter[3:0] == 7) checkboard_data_out <= 3;
        else if(counter[3:0] == 8) checkboard_data_out <= 3;
        else if(counter[3:0] == 9) checkboard_data_out <= 0;
        else if(counter[3:0] == 10) checkboard_data_out <= 3;
        else if(counter[3:0] == 11) checkboard_data_out <= 0;
        else if(counter[3:0] == 12) checkboard_data_out <= 0;
        else if(counter[3:0] == 13) checkboard_data_out <= 3;
        else if(counter[3:0] == 14) checkboard_data_out <= 0;
        else if(counter[3:0] == 15) checkboard_data_out <= 3;
    end
    else checkboard_data_out <= checkboard_data_out;
end

assign test_done = (c_state == FINISH)? 1'b1 : 1'b0;
assign cs_n = 0;
assign we_n = (c_state == S2)? 1:0;


endmodule
