`timescale 1ns/1ps
`define CYCLE_TIME 4
module SRAM_tb;

//======================================
//          I/O PORTS
//======================================
reg clk;
reg rst_n;
reg cs_n;
reg we_n;
reg [1:0] data_in;
reg [3:0] addr;
wire [1:0] data_out;

SRAM SRAM(
	.clk(clk),
	.rst_n(rst_n),
	.we_n(we_n), 
	.cs_n(cs_n), 
	.data_in(data_in), 
	.data_out(data_out),
	.addr(addr)
);



//======================================
//      PARAMETERS & VARIABLES
//======================================
parameter CYCLE      = `CYCLE_TIME;
parameter PATNUM     = 10;
integer   SEED       = 122;
integer i, pattern_num, k;
reg [4:0] read_iteration;
reg [4:0] initial_num;
reg [4:0] interval;
reg [31:0] pattern_data;
reg [31:0] input_data;
reg [31:0] old_input_data;
reg [31:0] input_data_display;
reg [31:0] data_out_space;
reg [15:0] err_cnt;
reg [15:0] wrong_addr_space;
reg data0;
reg data1;
reg in_valid;


//======================================
//              Clock
//======================================
initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;

//======================================
//              MAIN
//======================================
initial main_task;

//======================================
//              TASKS
//======================================
task main_task; begin
    reset_task;
	err_cnt = 0;
    for(pattern_num=0; pattern_num < PATNUM; pattern_num = pattern_num + 1) begin
		input_pattern_task;
		write_task;
		correct_SRAM_display_task;
		read_task;
	end
	if(err_cnt == 0) pass_task;
end endtask

//**************************************
//      Reset Task
//**************************************
task reset_task; begin
    clk   = 0;
	in_valid = 0;
    rst_n       = 1;
	err_cnt = 0;
	pattern_num = 0;
    #(CYCLE/2.0) rst_n = 0;
    #(CYCLE/2.0) rst_n = 1;
	@(negedge clk);
end endtask

//**************************************
//      Input Task
//**************************************
task input_pattern_task; begin
	in_valid = 1;
	pattern_data[7:0] = {$random(SEED)} % 256;
	pattern_data[15:8] = {$random(SEED)} % 256;
	pattern_data[23:16] = {$random(SEED)} % 256;
	pattern_data[31:24] = {$random(SEED)} % 256;
	repeat(1) @(negedge clk);
	in_valid = 0;
	$display("\t\033[1;35m[ PATTERN %0d\033[1;0m ]\n", pattern_num + 1);
	$display("\t[ WRITE MODE ]");
	$write("%c[0m",27);
	$display("\n\t\t\t   CS_N   WE_N  |   DATA IN   |  DATA[1]    DATA[0]  |     ");
	$display("\t\t\t   -----------  |   -------   |  -------    -------  |     ");
end endtask

//**************************************
//      Write Task
//**************************************
task write_task; begin
	if(pattern_num == 0) cs_n = 0;
	else cs_n = {$random()}%2;
	we_n = 0;
	if(cs_n == 0) begin
		input_data = pattern_data;
		input_data_display = pattern_data;
	end
	else begin
		input_data_display = old_input_data;
		input_data = 'bx;
	end
	pattern_data = 32'bx;
	if (pattern_num == 0) begin
		for(i = 0; i < 16; i = i + 1) begin
			addr = i;
			write_display_task;
			input_task;
		end
	end
	else begin
		for(i = 0; i < {$random()}%16; i = i + 1) begin
			addr = {$random(SEED)}%16;
			write_display_task;
			input_task;
		end
	end
	//input_data = 32'bx;
	data_in = 2'bx;
end endtask

task input_task; begin
	//if(pattern_num == 0) addr = i;
	//else addr = {$random(SEED)}%16;
	if(addr == 0) begin
		data_in = input_data[31:30];
		old_input_data[31:30] = input_data_display[31:30];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 1) begin
		data_in = input_data[29:28];
		old_input_data[29:28] = input_data_display[29:28];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 2) begin
		data_in = input_data[27:26];
		old_input_data[27:26] = input_data_display[27:26];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 3) begin
		data_in = input_data[25:24];
		old_input_data[25:24] = input_data_display[25:24];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 4) begin
		data_in = input_data[23:22];
		old_input_data[23:22] = input_data_display[23:22];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 5) begin
		data_in = input_data[21:20];
		old_input_data[21:20] = input_data_display[21:20];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 6) begin
		data_in = input_data[19:18];
		old_input_data[19:18] = input_data_display[19:18];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 7) begin
		data_in = input_data[17:16];
		old_input_data[17:16] = input_data_display[17:16];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 8) begin
		data_in = input_data[15:14];
		old_input_data[15:14] = input_data_display[15:14];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 9) begin
		data_in = input_data[13:12];
		old_input_data[13:12] = input_data_display[13:12];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 10) begin
		data_in = input_data[11:10];
		old_input_data[11:10] = input_data_display[11:10];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 11) begin
		data_in = input_data[9:8];
		old_input_data[9:8] = input_data_display[9:8];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 12) begin
		data_in = input_data[7:6];
		old_input_data[7:6] = input_data_display[7:6];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 13) begin
		data_in = input_data[5:4];
		old_input_data[5:4] = input_data_display[5:4];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 14) begin
		data_in = input_data[3:2];
		old_input_data[3:2] = input_data_display[3:2];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
	else if(addr == 15) begin
		data_in = input_data[1:0];
		old_input_data[1:0] = input_data_display[1:0];
		data1 = data_in[1];
		data0 = data_in[0];
		repeat(1) @(negedge clk);
	end
end endtask

task write_display_task; begin
	$strobe("\tAddress %0d:\t     %b     %2d   \033[1;31m%8d    \033[1;34m%8d   \033[1;33m%8d\033[1;0m \n",  addr, cs_n, we_n, data_in, data1, data0);
end endtask

task display_task; begin
	//$display("\t\033[1;32m[ PATTERN \033[1;31m%0d\033[1;32m ]\n", pattern_num);
	//$write("%c[0m",27);
	$write("\t _______________________     _______________________     _______________________\n");
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	input_data[31], input_data[29], input_data[27], input_data[25], input_data[30], input_data[28], input_data[26], input_data[24],
	input_data[31:30], input_data[29:28], input_data[27:26], input_data[25:24]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	input_data[23], input_data[21], input_data[19], input_data[17], input_data[22], input_data[20], input_data[18], input_data[16],
	input_data[23:22], input_data[21:20], input_data[19:18], input_data[17:16]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	input_data[15], input_data[13], input_data[11], input_data[9], input_data[14], input_data[12], input_data[10], input_data[8],
	input_data[15:14], input_data[13:12], input_data[11:10], input_data[9:8]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	input_data[7], input_data[5], input_data[3], input_data[1], input_data[6], input_data[4], input_data[2], input_data[0],
	input_data[7:6], input_data[5:4], input_data[3:2], input_data[1:0]);
	$display("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");
	$display("\t\033[1;33m      [Bit-1 Space]               [Bit-0 Space]               [Word Space]\n");
	$write("%c[0m",27);
end endtask

task correct_SRAM_display_task; begin
	$display("\t\033[1;32mCorrect SRAM Space:\033[1;0m");
	$write("\t _______________________     _______________________     _______________________\n");
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	old_input_data[31], old_input_data[29], old_input_data[27], old_input_data[25], old_input_data[30], old_input_data[28], old_input_data[26], old_input_data[24],
	old_input_data[31:30], old_input_data[29:28], old_input_data[27:26], old_input_data[25:24]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	old_input_data[23], old_input_data[21], old_input_data[19], old_input_data[17], old_input_data[22], old_input_data[20], old_input_data[18], old_input_data[16],
	old_input_data[23:22], old_input_data[21:20], old_input_data[19:18], old_input_data[17:16]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	old_input_data[15], old_input_data[13], old_input_data[11], old_input_data[9], old_input_data[14], old_input_data[12], old_input_data[10], old_input_data[8],
	old_input_data[15:14], old_input_data[13:12], old_input_data[11:10], old_input_data[9:8]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	old_input_data[7], old_input_data[5], old_input_data[3], old_input_data[1], old_input_data[6], old_input_data[4], old_input_data[2], old_input_data[0],
	old_input_data[7:6], old_input_data[5:4], old_input_data[3:2], old_input_data[1:0]);
	$display("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");
	$display("\t\033[1;31m      [Bit-1 Space]               \033[1;34m [Bit-0 Space]        \033[1;33m       [Word Space]\n\n\n");
	$write("%c[0m",27);
end endtask
//**************************************
//      Read Task
//**************************************
task read_task; begin	
	cs_n = {$random()}%2;
    we_n = 1;
	read_iteration = {$random(SEED)} % 16 + 3;
	initial_num = {$random()} % 16;
	wrong_addr_space = 0;
	$display("\t[ READ MODE ]\n");
	$display("\n\t\t\t   CS_N   WE_N  |   DATA OUT   |  DATA[1]    DATA[0]  |     ");
	$display("\t\t\t   -----------  |   --------   |  -------    -------  |     ");
	for(k = 0; k < read_iteration; k = k + 1) begin
		if(k == (read_iteration-1)) addr = {$random(SEED)} % 16;
		else if(k < (read_iteration - 1)) begin
			addr = {$random(SEED)} % 16;
			output_task;
			//repeat(1) @(negedge clk);
		end
	end
	$display("\t================================================================================\n");
	if(err_cnt !== 0) fail_task;
end endtask

task output_task; begin
	@(negedge clk);
	$display("\tAddress: %d          %d \t    %d \t        %d \t     %b \t        %b \n",  addr, cs_n, we_n, data_out, data_out[1], data_out[0]);
	if(addr == 0) begin
		data_out_space[31:30] = data_out;
		if(data_out != old_input_data[31:30]) begin
			wrong_addr_space[15] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 1) begin
		data_out_space[29:28] = data_out;
		if(data_out != old_input_data[29:28]) begin
			wrong_addr_space[14] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 2) begin
		data_out_space[27:26] = data_out;
		if(data_out != old_input_data[27:26]) begin
			wrong_addr_space[13] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 3) begin
		data_out_space[25:24] = data_out;
		if(data_out != old_input_data[25:24]) begin
			wrong_addr_space[12] = 1;
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 4) begin
		data_out_space[23:22] = data_out;
		if(data_out != old_input_data[23:22]) begin
			wrong_addr_space[11] = 1;
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 5) begin
		data_out_space[21:20] = data_out;
		if(data_out != old_input_data[21:20]) begin
			wrong_addr_space[10] = 1;
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 6) begin
		data_out_space[19:18] = data_out;
		if(data_out != old_input_data[19:18]) begin
			wrong_addr_space[9] = 1;
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 7) begin
		data_out_space[17:16] = data_out;
		if(data_out != old_input_data[17:16]) begin
			wrong_addr_space[8] = 1;
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 8) begin
		data_out_space[15:14] = data_out;
		if(data_out != old_input_data[15:14]) begin
			wrong_addr_space[7] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 9) begin
		data_out_space[13:12] = data_out;
		if(data_out != old_input_data[13:12]) begin
			wrong_addr_space[6] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 10) begin
		data_out_space[11:10] = data_out;
		if(data_out != old_input_data[11:10]) begin
			wrong_addr_space[5] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 11) begin
		data_out_space[9:8] = data_out;
		if(data_out != old_input_data[9:8]) begin
			wrong_addr_space[4] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 12) begin
		data_out_space[7:6] = data_out;
		if(data_out != old_input_data[7:6]) begin
			wrong_addr_space[3] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 13) begin
		data_out_space[5:4] = data_out;
		if(data_out != old_input_data[5:4]) begin
			wrong_addr_space[2] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 14) begin
		data_out_space[3:2] = data_out;
		if(data_out != old_input_data[3:2]) begin
			wrong_addr_space[1] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
	else if(addr == 15) begin
		data_out_space[1:0] = data_out;
		if(data_out != old_input_data[1:0]) begin
			wrong_addr_space[0] = 1; 
			err_cnt = err_cnt + 1;
		end
	end
end endtask

task fail_task; begin
	$display("\nFAIL!! There were %d errors in all.\n", err_cnt);
	$display("\033[1;31m                                                                                                     ");
	$display("\033[1;31m                                           &&&&&&&&&&&&&&                                            ");
	$display("\033[1;31m                                   &&###BBBBBBBBBBBB#&&&  &BBB###&&                                  ");
	$display("\033[1;31m                              &&#BBBBBBBBBBBBBBB#&&      &BBBBBBBBBBB#&&                             ");
	$display("\033[1;31m                          &&#BBBBBBBBBBBBBBBBB#&        #BBBBBBBBBBBBBBBB#&&                         ");
	$display("\033[1;31m                       &#BBBBBBBBBBBBBBBBBBBB&         BBBBBBBBBBBBBBBBBBBBBB#&                      ");
	$display("\033[1;31m                     #BBBBBBBBBBBBBBBBBBBBB#          BBBBBBBBBBBBBBBBBBBBBBBBBB#                    ");
	$display("\033[1;31m                  &#BBBBBBBBBBBBBBBBBBBBBB&          #GBBBBBBBBBBBBBBBBBBBBBBBBBBB#&                 ");
	$display("\033[1;31m                &#BBBBBBBBBBBBBBBBBBBBBBB&          &GBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#&               ");
	$display("\033[1;31m              &#BBBBBBBBBBBBBBBBBBBBBBBG#           BGGGBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#&             ");
	$display("\033[1;31m             #BBBBBBBBBBBBBBBBBBBBBBBBGB            BGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBBBB#            ");
	$display("\033[1;31m           &BBBBBBBBBBBBBBBBBBBBBBGGGGG&            BGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBB&          ");
	$display("\033[1;31m          &BBBBBBBBBBBBBBBBBBBBBGGGGGG#             BGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBB&         ");
	$display("\033[1;31m         #BBBBBBBBBBBBBBBBBBBGGGGGGGGG&             &BBBBBBBGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBB#        ");
	$display("\033[1;31m        #BBBBBBBBBBBBBBBBBBGGGGGGGGGGB               #BBBBBBBBBBGGGGGGGGGGBBBBBBBBBBBBBBBBBBB#       ");
	$display("\033[1;31m       &BBBBBBBBBBBBBBBBBBGGGGGGGGGBG#                &BBBBBBBBBBBGGGGGGGGGGBBBBBBBBBBBBBBBBBB&      ");
	$display("\033[1;31m      &BBBBBBBBBBBBBBBBBGGGGGGGGGBBBB&                  #BBBBBBBBBBBGGGGGGGGGBBBBBBBBBBBBBBBBBB&     ");
	$display("\033[1;31m      BBBBBBBBBBBBBBBBBGGGGGGGGBBBBBB&                   &#BBBBBBBBBBBGGGGGGGGBBBBBBBBBBBBBBBBBB     ");
	$display("\033[1;31m     &BBBBBBBBBBBBBBBBBGGGGGGGBBBBBBB&                      &#BBBBBBBBBGGGGGGGGBBBBBBBBBBBBBBBBB&    ");
	$display("\033[1;31m     BBBBBBBBBBBBBBBBBGGGGGGGBBBBBBBB                          &&#BBBBBBGGGGGGGBBBBBBBBBBBBBBBBBB    ");
	$display("\033[1;31m    &BBBBBBBBBBBBBBBBGGGGGGGBBBBBBBBB          &&####&&            &#BBGGGGGGGGGBBBBBBBBBBBBBBBBB&   ");
	$display("\033[1;31m    &BBBBBBBBBBBBBBBBGGGGGGGBBBBBBBBB        &#BBBBBBBB#&             &#BGGGGGGGBBBBBBBBBBBBBBBBB&   ");
	$display("\033[1;31m    #BBBBBBBBBBBBBBBBGGGGGGGBBBBBBBB#       &BBBBBBBBBBBB&               &#BGGGGGBBBBBBBBBBBBBBBB#   ");
	$display("\033[1;31m    #BBBBBBBBBBBBBBBBGGGGGGGBBBBBBBB&       #BBBBBBBBBBBB#                  #BGGGBBBBBBBBBBBBBBBB#   ");
	$display("\033[1;31m    #BBBBBBBBBBBBBBBBGGGGGGGBBBBBBB#        &BBBBBBBBBBBB&                    &BGGBBBBBBBBBBBBBBB#   ");
	$display("\033[1;31m    &BBBBBBBBBBBBBBBBGGGGGGGBBBBBBB          &#BBBBBBBB#&                       &BGBBBBBBBBBBBBBB&   ");
	$display("\033[1;31m    &BBBBBBBBBBBBBBBBGGGGGGGGBBBBB             &&####&&                           #BBBBBBBBBBBBBB&   ");
	$display("\033[1;31m     BBBBBBBBBBBBBBBBBGGGGGGGGGB#                                                  &BBBBBBBBBBBBB    ");
	$display("\033[1;31m     &BBBBBBBBBBBBBBBBBGGGGGGB#                                                      #BBBBBBBBBB&    ");
	$display("\033[1;31m      BBBBBBBBBBBBBBGGGGGBB#&                            &&###BBBBBB###&              #BBBBBBBBB     ");
	$display("\033[1;31m      &BBBBBBBBBBBBBB##&&                            &#BBBBBBBBBBBGGGGGGBB#&           #BBBBBBB&     ");
	$display("\033[1;31m                                                 &##BBBBBBBBBBBBBBGGGGGGGGGBB&          BBBBBB&      ");
	$display("\033[1;31m        &&                                   &#BBBBBBBBBBBBBBBBGGGGGGGGGGBBBGGB&        #BBBB#       ");
	$display("\033[1;31m         #B#&                          &&##BBGGGBBBBBBBBBBGGGGGGGGGGGGGBBBBBBBBBB&      &BBB#        ");
	$display("\033[1;31m          &BBBB#&&&             &&&##BBBGGGGGGGGGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBB&     &BB&         ");
	$display("\033[1;31m           &BBBBBBBBBBB####BBBBBBGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBB#    #B&          ");
	$display("\033[1;31m             #BBBBBBBBBBBBBBBBBBBBBBBBBBGGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBBBBBBBBBBBB#   &            ");
	$display("\033[1;31m              &#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#               ");
	$display("\033[1;31m                &#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#&               ");
	$display("\033[1;31m                  &#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#&                 ");
	$display("\033[1;31m                     #BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB&                    ");
	$display("\033[1;31m                       &#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#&                      ");
	$display("\033[1;31m                          &&#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB#&&                         ");
	$display("\033[1;31m                              &&##BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB##&&                             ");
	$display("\033[1;31m                                   &&###BBBBBBBBBBBBBBBBBBBBBB###&&                                  ");
	$display("\033[1;31m                                           &&&&&&&&&&&&&&&&                                          ");
	$display("\033[1;31m                                                                                                     ");
    $display("\n\n\n");

	if(wrong_addr_space[15] == 1) $write("\033[1;31mAddress0 is wrong!   ");
	if(wrong_addr_space[14] == 1) $write("\033[1;31mAddress1 is wrong!   ");
	if(wrong_addr_space[13] == 1) $write("\033[1;31mAddress2 is wrong!   ");
	if(wrong_addr_space[12] == 1) $write("\033[1;31mAddress3 is wrong!   ");
	if(wrong_addr_space[11] == 1) $write("\033[1;31mAddress4 is wrong!   ");
	if(wrong_addr_space[10] == 1) $write("\033[1;31mAddress5 is wrong!   ");
	if(wrong_addr_space[9] == 1) $write("\033[1;31mAddress6 is wrong!   ");
	if(wrong_addr_space[8] == 1) $write("\033[1;31mAddress7 is wrong!   ");
	if(wrong_addr_space[7] == 1) $write("\033[1;31mAddress8 is wrong!   ");
	if(wrong_addr_space[6] == 1) $write("\033[1;31mAddress9 is wrong!   ");
	if(wrong_addr_space[5] == 1) $write("\033[1;31mAddress10 is wrong!   ");
	if(wrong_addr_space[4] == 1) $write("\033[1;31mAddress11 is wrong!   ");
	if(wrong_addr_space[3] == 1) $write("\033[1;31mAddress12 is wrong!   ");
	if(wrong_addr_space[2] == 1) $write("\033[1;31mAddress13 is wrong!   ");
	if(wrong_addr_space[1] == 1) $write("\033[1;31mAddress14 is wrong!   ");
	if(wrong_addr_space[0] == 1) $write("\033[1;31mAddress15 is wrong!   ");
	$display("\033[1;0m\n\n");
    repeat(5) @(negedge clk);
	$finish;
end endtask

task pass_task; begin
    $display("\n\t\t\t\033[1;31m  PASS!! No errors were found! You're Powerful Enough\n");
	$display("\033[1;31m                                                                                                       ");

	$display("                                                                                                                 ");
	$display("                                                                                                                 ");
	$display("                                                                                                                 ");
	$display("\033[1;33m                                             #BBBBGGGGGGBBB#                                           ");
	$display("\033[1;33m                                       BPY?7!~^^^^^^^^^^^^^^~!7J5G#                                    ");
	$display("\033[1;33m                                   GY?!~^::^:^^::::::::::::^^^^^^^~!?5B                                ");
	$display("\033[1;33m                               #P?!^^^^^^^^^^^::::::::::::::^^^^^^^^^^~!JG                             ");
	$display("\033[1;33m                             #Y!^^^^^^^^^^^^^^^^::::::::::^::^^^^^^^^^^^^^!Y#                          ");
	$display("\033[1;33m                           #Y!^^^^^^^~~~~~~~~~~~~~~~~~~~~~^^^~~~~~!~~~~~~~~^~Y                         ");
	$display("\033[1;33m                          P7^^^^~!7????77777!!~~~!!!!!!~^~~~!7????777777!!!!~~7G                       ");
	$display("\033[1;33m                         Y!^:^~7JJ7!^^\033[1;0m:::::^~~!!~~~!7!^~~!?J?!~^^^::^^^~\033[1;33m!7!!!!~~5                      ");
	$display("\033[1;33m                        ?~^^~!JJ!\033[1;0m:.....::::::::^~!~~~~~~?J7~\033[1;0m:....::.:::::^\033[1;33m!7!!!~~Y                     ");
	$display("\033[1;33m                       5^^^~!Y?^\033[1;0m.............::::~~~~~~?J!\033[1;0m:.......:::::::::\033[1;33m^7~!!!!J                    ");
	$display("\033[1;33m                      \033[1;0mPY~:^~Y?^\033[1;0m........:\033[1;34m~777~\033[1;0m:::::~~~~7J!:..:\033[1;34m~!77~\033[1;0m::::::::::\033[1;0m~!~!!~7P                   ");
	$display("\033[1;33m                     \033[1;0mBP5~:~!Y7^\033[1;0m.......:\033[1;34mJ??GP5J^\033[1;0m:::^~~~??~:.:\033[1;34mJ77GBGY\033[1;0m::::::::::\033[1;0m7~!!~75#                  ");
	$display("\033[1;33m       GBB#BB#       \033[1;0mG5Y~:~~Y7^\033[1;0m.......\033[1;34m^PYPBBP5~\033[1;0m:::~~~~7J^:.\033[1;34m~55P#BGG^\033[1;0m::::::::\033[1;0m^!~!!~?5B       \033[1;33m#BB#GGB##  ");
	$display("\033[1;33m       G  ##         G7?!^^~7J~\033[1;0m::::::::\033[1;34m!J55YJ!\033[1;0m:::^~~~~!J7:::\033[1;34m!Y5P5Y~\033[1;0m:::::::::\033[1;33m!~!!77!7G        B# B###B  ");
	$display("\033[1;33m          ##         P!!!!^~~7J~\033[1;0m:::::::.::\033[1;34m^\033[1;0m:::::^~~~~~~!J7^\033[1;0m:.:::::.:::::::\033[1;33m^!!~!77777P      # #B#   #   ");
	$display("\033[1;33m       ### ###       Y!!!!!~~~!?7~^\033[1;0m:::::::::::^~~~~!??~~!7?!^\033[1;0m:::::::::::^~\033[1;33m!~!!777777Y      # #B ####   ");
	$display("\033[1;33m       PB##B##       J!!!~~!~~~~!!!!~^^^^^~~!!~~~!?Y55J7!~!!7!~~^^^^~~~!!!!!7777???7J       ##G#G##BB  ");
	$display("\033[1;33m       ####B#B      #?!!~~~~~~~!!~!~~!!~~~!~~!!7?JYYYJJJ?7!!!!!!!!!!!!!!77777777????J      #GGG######  ");
	$display("\033[1;33m       #B### ##     #?!!~~~~~~~~~!!!!!!!777??JJJJJJJ???????77777777777777!!!!!7777??J      BB####B#    ");
	$display("\033[1;33m        ##    G#    G7!!~~~~~~~~~~~~~\033[1;0m!!!77?????????7777!!!!!7777!!!77!!\033[1;33m!!!!!!!!!7777?B    #B   ##B     ");
	$display("\033[1;33m           BPYJY#   PY?!~~~~~~~~~~~~~~~~\033[1;31m!!^^~~~~~~~~~~~~~^^^^^^::^~!!!\033[1;33m!!!!!!!!!~!!7JYG   BY?Y5G        ");
	$display("\033[1;33m            577?JG# P\033[1;34m55YJ?!\033[1;33m ~~~~~~~~~~~~~~\033[1;31m!?JY?777777YJ777??JYP5PP57\033[1;33m!!!!!!!~~~~~\033[1;34m7?JJYYP \033[1;33m#PJ?77Y         ");
	$display("\033[1;33m             GJ777???J5\033[1;34m555YJ7!\033[1;33m ~^~~~~~~~~~^\033[1;31m!J5PGGGGB## ##BBBBBBB5?\033[1;33m!~!!!!!~~~~!\033[1;34m?JJJJJJ?\033[1;33mYYJ?7?YB          ");
	$display("\033[1;33m               BY?7!!!!?\033[1;34mJ555YYJ7\033[1;33m ~^^^^^~^^^^^~!!7???JYYYJJ???77!\033[1;33m~~~~~~~~~~!\033[1;34m7JYJJJJ?!\033[1;33m~~???YP#            ");
	$display("\033[1;33m                   #P7!~~\033[1;34m!?YYYYYJ7!!\033[1;33m ~~~~~~~~~~~~~~~~~~!!!!!!!!!!!!!!!!!\033[1;34m7?YYYJJJ7!\033[1;33m~~^7B#                ");
	$display("\033[1;33m                    #7!!~~~~\033[1;34m7JY5BBPYJJJJJJJJJJJJJJJJJYYYYYYYYYYYYYYYYY5PG5YY?!\033[1;33m~~~~~^?                  ");
	$display("\033[1;33m                    #7!!~~~~~~\033[1;34m!5B#GYYYYYYYYYYYYYYYYY555555555555555555PBBGJ!\033[1;33m~~~~~^~^?                  ");
	$display("\033[1;33m                    #7!!!~~~~~~\033[1;34mJYYYYYYYYYYYYJYYYYYYYY55555555555555555555Y?\033[1;33m~~~~~~~~^?                  ");
	$display("\033[1;33m                    #?!!~~~~~~~\033[1;34mJYYYYYYYYYYYYYYYYYYY55555555555555555555YYY?\033[1;33m~~~~~~~~^J                  ");
	$display("\033[1;33m                     ?!!~~~~~~~\033[1;34mY55YYYY5555555YYYY555555555555555PPP5555555J\033[1;33m~~~~~~~~^Y                  ");
	$display("\033[1;33m                     Y7!!!~~~!Y\033[1;34mB##BGP55PP555555555555555555555PPPPPPPGB# ##Y!\033[1;33m~~~~~~~5                  ");
	$display("\033[1;33m                     \033[1;34mB55YYJJ?P      #GPGGPPPP555555555555555PPPPPPPPB       5777???YB                  ");
	$display("\033[1;33m                      \033[1;34mP555555B       #BBBGGPPPPP5555555PPPPPPPPPPPPB        G555YYYG                   ");
	$display("\033[1;33m                       \033[1;34mG55555G       ##BBBBGGPPP555555PPPPPPPPPGGGG        #555YYYG                    ");
	$display("\033[1;33m                        \033[1;34mBP5555B      # #BBBBGGPPPPPPPPPPPPPPGGGGPPB        PYYYYP#                     ");
	$display("\033[1;33m                         \033[1;34m BP555B       #BBBBBGGGGPPPPPPPPGGGGGGP5P#       PY55P#                       ");
	$display("\033[1;33m                           \033[1;34m #BP5G       #GBBBBBBGGGGGGGGGGGGGGPP5B       PJ5B#                         ");
	$display("\033[1;33m                               \033[1;34m#G### # ##BBB#BBBBBBBBBBBBBBBBBGPG       BG#                            ");
	$display("\033[1;33m                                   \033[1;34m##  ######BBBBBBBBBBBBBBBBBBB#                                      ");
	$display("\033[1;33m                                      #                           #                                    ");
	$display("\033[1;33m                                                                                                       ");
	$display("\033[1;33m                                                                                                       ");
	$display("\033[1;33m                                                                                                       ");
	$display("\033[1;33m                                                                                                       ");

	$display("\033[1;30m  color\n");
	$display("\033[1;31m  color\n");
	$display("\033[1;32m  color\n");
	$display("\033[1;33m  color\n");
	$display("\033[1;34m  color\n");
	$display("\033[1;35m  color\n");
	$display("\033[1;36m  color\n");
	$display("\033[1;37m  color\n");
	$display("\033[1;38m  color\n");
	$display("\033[1;39m  color\n");
	$display("\033[1;40m  color\n");

	$display("\033[1;0m\n");

	repeat(5) @(negedge clk);
    $finish;
end endtask

initial begin
	$sdf_annotate("sram_syn.sdf", SRAM);
	$fsdbDumpfile("./sram.fsdb");
	$fsdbDumpvars;
end
endmodule

/*task data_out_space_task; begin
	$display("\t\033[1;0mMy DATA_OUT SRAM Space:\033[1;0m");
	$write("\t _______________________     _______________________     _______________________\n");
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	data_out_space[31], data_out_space[29], data_out_space[27], data_out_space[25], data_out_space[30], data_out_space[28], data_out_space[26], data_out_space[24],
	data_out_space[31:30], data_out_space[29:28], data_out_space[27:26], data_out_space[25:24]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	data_out_space[23], data_out_space[21], data_out_space[19], data_out_space[17], data_out_space[22], data_out_space[20], data_out_space[18], data_out_space[16],
	data_out_space[23:22], data_out_space[21:20], data_out_space[19:18], data_out_space[17:16]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	data_out_space[15], data_out_space[13], data_out_space[11], data_out_space[9], data_out_space[14], data_out_space[12], data_out_space[10], data_out_space[8],
	data_out_space[15:14], data_out_space[13:12], data_out_space[11:10], data_out_space[9:8]);
	$write("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");

	
	$display("\t|     |     |     |     |   |     |     |     |     |   |     |     |     |     |");
	$display("\t|  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |   |  %d  |  %d  |  %d  |  %d  |",
	data_out_space[7], data_out_space[5], data_out_space[3], data_out_space[1], data_out_space[6], data_out_space[4], data_out_space[2], data_out_space[0],
	data_out_space[7:6], data_out_space[5:4], data_out_space[3:2], data_out_space[1:0]);
	$display("\t|_____|_____|_____|_____|   |_____|_____|_____|_____|   |_____|_____|_____|_____|\n");
	$display("\t\033[1;31m      [Bit-1 Space]               \033[1;34m [Bit-0 Space]        \033[1;33m       [Word Space]\n\n\n");
	$write("%c[0m",27);
end endtask*/