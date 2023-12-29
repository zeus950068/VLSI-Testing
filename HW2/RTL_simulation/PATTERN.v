`timescale 1ns/1ps
`define CYCLE_TIME 1.6

module PATTERN(
    //OUTPUT signals
    dividend,
    divisor, 
    clk, 
    rst_n, 
    in_valid,
    //INPUT signals
    quotient, 
    remainder,  
    out_valid
);
//======================================
//          I/O PORTS
//======================================
output reg            clk;
output reg          rst_n;
output reg [7:0] dividend;
output reg [7:0]  divisor;
output reg       in_valid;
input           out_valid;
input [7:0]      quotient;
input [7:0]     remainder;

//======================================
//      PARAMETERS & VARIABLES
//======================================
parameter CYCLE      = `CYCLE_TIME;
parameter PATNUM     = 10;
integer   SEED       = 122;
// PATTERN CONTROL
integer           i;
integer     err_cnt;
integer out_latency;


reg [7:0]  tp_quotient;
reg [7:0] tp_remainder;

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
    $display("\n\t\t\t\t  DIVIDEND    DIVISOR   |  DIVIDEND   DIVISOR  |   QUOTIENT  REMAINDER  |  QUOTIENT  REMAINDER ");
	$display("\t\t\t\t  --------   ---------  |  --------  --------- |   --------  ---------  |  --------  ---------");
    for(i = 0; i < PATNUM; i = i+1) begin 
        input_task;
        check_task;
    end
    if (err_cnt !== 0) fail_task;
    else pass_task;
end endtask

//**************************************
//      Reset Task
//**************************************
task reset_task; begin
    clk   = 0;
    rst_n       = 1;
    in_valid    = 0;
	err_cnt     = 0;
    #(CYCLE/2.0) rst_n = 0;
    #(CYCLE/2.0) rst_n = 1;
end endtask

//**************************************
//      Input Task
//**************************************
task input_task; begin
    in_valid = 1;   //in_valid 為1時才輸入
    dividend = {$random(SEED)} % 255; 
    divisor = {$random(SEED)} % 255 + 1; // +1防止除數為0
    tp_quotient = dividend / divisor;
    tp_remainder = dividend % divisor;
    $write("\tInput%d\t  %b    %b        %d       %d        ", i, dividend, divisor, dividend, divisor);
    repeat(1) @(negedge clk);
    in_valid = 0;
    dividend = 8'bx;
    divisor = 8'bx;
end endtask

//**************************************
//      Check Task
//**************************************
task check_task; begin
    out_latency = 0;
    while(out_valid == 0)begin
        out_latency = out_latency + 1;
        @(negedge clk);   //只要out_valid 還沒拉起來就要多等一個cycle
    end
    if(out_valid)begin
        $display("%b   %b       %d        %d       \n",  quotient, remainder,  quotient, remainder);
        if ((tp_quotient !== quotient) || (tp_remainder !== remainder)) error;
    end
    repeat(5) @(negedge clk);
end endtask

//**************************************
//      Error Task
//**************************************
task error; begin
    $display("\t\t\t -------------------------------------------------------------------------------------------");
    $display("\t\t\t ERROR AT %d,  correct quotient should be %d\t\t   your quotient is %d", i, tp_quotient, quotient);
    $display("\t\t\t -------------------------------------------------------------------------------------------\n");
    err_cnt = err_cnt + 1;
end endtask

//**************************************
//      Failed Task
//**************************************
task fail_task; begin
    $display("\nFAIL!! There were %d errors in all.\n", err_cnt);
    $display("                                                                                ");
    $display("                                                   ./+oo+/.                     ");
    $display("                                                  /s:-----+s`                   ");
    $display("                                                  y/-------:y                   ");
    $display("                                             `.-:/od+/------y`                  ");
    $display("                               `:///+++ooooooo+//::::-----:/y+:`                ");
    $display("                              -m+:::::::---------------------::o+.              ");
    $display("                             `hod-------------------------------:o+             ");
    $display("                       ./++/:s/-o/--------------------------------/s///::.      ");
    $display("                      /s::-://--:--------------------------------:oo/::::o+     ");
    $display("                    -+ho++++//hh:-------------------------------:s:-------+/    ");
    $display("                  -s+shdh+::+hm+--------------------------------+/--------:s    ");
    $display("                 -s:hMMMMNy---+y/-------------------------------:---------//    ");
    $display("                 y:/NMMMMMN:---:s-/o:-------------------------------------+`    ");
    $display("                 h--sdmmdy/-------:hyssoo++:----------------------------:/`     ");
    $display("                 h---::::----------+oo+/::/+o:---------------------:+++s-`      ");
    $display("                 s:----------------/s+///------------------------------o`       ");
    $display("           ``..../s------------------::--------------------------------o        ");
    $display("       -/oyhyyyyyym:----------------://////:--------------------------:/        ");
    $display("      /dyssyyyssssyh:-------------/o+/::::/+o/------------------------+`        ");
    $display("    -+o/---:/oyyssshd/-----------+o:--------:oo---------------------:/.         ");
    $display("  `++--------:/sysssddy+:-------/+------------s/------------------://`          ");
    $display(" .s:---------:+ooyysyyddoo++os-:s-------------/y----------------:++.            ");
    $display(" s:------------/yyhssyshy:---/:o:-------------:dsoo++//:::::-::+syh`            ");
    $display("`h--------------shyssssyyms+oyo:--------------/hyyyyyyyyyyyysyhyyyy`            ");
    $display("`h--------------:yyssssyyhhyy+----------------+dyyyysssssssyyyhs+/.             ");
    $display(" s:--------------/yysssssyhy:-----------------shyyyyyhyyssssyyh.                ");
    $display(" .s---------------+sooosyyo------------------/yssssssyyyyssssyo                 ");
    $display("  /+-------------------:++------------------:ysssssssssssssssy-                 ");
    $display("  `s+--------------------------------------:syssssssssssssssyo                  ");
    $display("`+yhdo--------------------:/--------------:syssssssssssssssyy.                  ");
    $display("+yysyhh:-------------------+o------------/ysyssssssssssssssy/                   ");
    $display(" /hhysyds:------------------y-----------/+yyssssssssssssssyh`                   ");
    $display(" .h-+yysyds:---------------:s----------:--/yssssssssssssssym:                   ");
    $display(" y/---oyyyyhyo:-----------:o:-------------:ysssssssssyyyssyyd-                  ");
    $display("`h------+syyyyhhsoo+///+osh---------------:ysssyysyyyyysssssyd:                 ");
    $display("/s--------:+syyyyyyyyyyyyyyhso/:-------::+oyyyyhyyyysssssssyy+-                 ");
    $display("+s-----------:/osyyysssssssyyyyhyyyyyyyydhyyyyyyssssssssyys/`                   ");
    $display("+s---------------:/osyyyysssssssssssssssyyhyyssssssyyyyso/y`                    ");
    $display("/s--------------------:/+ossyyyyyyssssssssyyyyyyysso+:----:+                    ");
    $display(".h--------------------------:::/++oooooooo+++/:::----------o`                   ");
    repeat(5) @(negedge clk);
    $finish;
end endtask

//**************************************
//      PASS Task
//**************************************
task pass_task; begin
    //$display("\nPASS!! No errors were found!\n");
	$display("\033[1;33m                `oo+oy+`                            \033[1;35m Congratulation!!! \033[1;0m                                   ");
    $display("\033[1;33m               /h/----+y        `+++++:             \033[1;35m PASS This Lab........Maybe \033[1;0m                          ");
    $display("\033[1;33m             .y------:m/+ydoo+:y:---:+o             \033[1;35m Total Latency : %-10d\033[1;0m                                ", out_latency);
    $display("\033[1;33m              o+------/y--::::::+oso+:/y                                                                                     ");
    $display("\033[1;33m              s/-----:/:----------:+ooy+-                                                                                    ");
    $display("\033[1;33m             /o----------------/yhyo/::/o+/:-.`                                                                              ");
    $display("\033[1;33m            `ys----------------:::--------:::+yyo+                                                                           ");
    $display("\033[1;33m            .d/:-------------------:--------/--/hos/                                                                         ");
    $display("\033[1;33m            y/-------------------::ds------:s:/-:sy-                                                                         ");
    $display("\033[1;33m           +y--------------------::os:-----:ssm/o+`                                                                          ");
    $display("\033[1;33m          `d:-----------------------:-----/+o++yNNmms                                                                        ");
    $display("\033[1;33m           /y-----------------------------------hMMMMN.                                                                      ");
    $display("\033[1;33m           o+---------------------://:----------:odmdy/+.                                                                    ");
    $display("\033[1;33m           o+---------------------::y:------------::+o-/h                                                                    ");
    $display("\033[1;33m           :y-----------------------+s:------------/h:-:d                                                                    ");
    $display("\033[1;33m           `m/-----------------------+y/---------:oy:--/y                                                                    ");
    $display("\033[1;33m            /h------------------------:os++/:::/+o/:--:h-                                                                    ");
    $display("\033[1;33m         `:+ym--------------------------://++++o/:---:h/                                                                     ");
    $display("\033[1;31m        `hhhhhoooo++oo+/:\033[1;33m--------------------:oo----\033[1;31m+dd+                                                 ");
    $display("\033[1;31m         shyyyhhhhhhhhhhhso/:\033[1;33m---------------:+/---\033[1;31m/ydyyhs:`                                              ");
    $display("\033[1;31m         .mhyyyyyyhhhdddhhhhhs+:\033[1;33m----------------\033[1;31m:sdmhyyyyyyo:                                            ");
    $display("\033[1;31m        `hhdhhyyyyhhhhhddddhyyyyyo++/:\033[1;33m--------\033[1;31m:odmyhmhhyyyyhy                                            ");
    $display("\033[1;31m        -dyyhhyyyyyyhdhyhhddhhyyyyyhhhs+/::\033[1;33m-\033[1;31m:ohdmhdhhhdmdhdmy:                                           ");
    $display("\033[1;31m         hhdhyyyyyyyyyddyyyyhdddhhyyyyyhhhyyhdhdyyhyys+ossyhssy:-`                                                           ");
    $display("\033[1;31m         `Ndyyyyyyyyyyymdyyyyyyyhddddhhhyhhhhhhhhy+/:\033[1;33m-------::/+o++++-`                                            ");
    $display("\033[1;31m          dyyyyyyyyyyyyhNyydyyyyyyyyyyhhhhyyhhy+/\033[1;33m------------------:/ooo:`                                         ");
    $display("\033[1;31m         :myyyyyyyyyyyyyNyhmhhhyyyyyhdhyyyhho/\033[1;33m-------------------------:+o/`                                       ");
    $display("\033[1;31m        /dyyyyyyyyyyyyyyddmmhyyyyyyhhyyyhh+:\033[1;33m-----------------------------:+s-                                      ");
    $display("\033[1;31m      +dyyyyyyyyyyyyyyydmyyyyyyyyyyyyyds:\033[1;33m---------------------------------:s+                                      ");
    $display("\033[1;31m      -ddhhyyyyyyyyyyyyyddyyyyyyyyyyyhd+\033[1;33m------------------------------------:oo              `-++o+:.`             ");
    $display("\033[1;31m       `/dhshdhyyyyyyyyyhdyyyyyyyyyydh:\033[1;33m---------------------------------------s/            -o/://:/+s             ");
    $display("\033[1;31m         os-:/oyhhhhyyyydhyyyyyyyyyds:\033[1;33m----------------------------------------:h:--.`      `y:------+os            ");
    $display("\033[1;33m         h+-----\033[1;31m:/+oosshdyyyyyyyyhds\033[1;33m-------------------------------------------+h//o+s+-.` :o-------s/y  ");
    $display("\033[1;33m         m:------------\033[1;31mdyyyyyyyyymo\033[1;33m--------------------------------------------oh----:://++oo------:s/d  ");
    $display("\033[1;33m        `N/-----------+\033[1;31mmyyyyyyyydo\033[1;33m---------------------------------------------sy---------:/s------+o/d  ");
    $display("\033[1;33m        .m-----------:d\033[1;31mhhyyyyyyd+\033[1;33m----------------------------------------------y+-----------+:-----oo/h  ");
    $display("\033[1;33m        +s-----------+N\033[1;31mhmyyyyhd/\033[1;33m----------------------------------------------:h:-----------::-----+o/m  ");
    $display("\033[1;33m        h/----------:d/\033[1;31mmmhyyhh:\033[1;33m-----------------------------------------------oo-------------------+o/h  ");
    $display("\033[1;33m       `y-----------so /\033[1;31mNhydh:\033[1;33m-----------------------------------------------/h:-------------------:soo  ");
    $display("\033[1;33m    `.:+o:---------+h   \033[1;31mmddhhh/:\033[1;33m---------------:/osssssoo+/::---------------+d+//++///::+++//::::::/y+`  ");
    $display("\033[1;33m   -s+/::/--------+d.   \033[1;31mohso+/+y/:\033[1;33m-----------:yo+/:-----:/oooo/:----------:+s//::-.....--:://////+/:`    ");
    $display("\033[1;33m   s/------------/y`           `/oo:--------:y/-------------:/oo+:------:/s:                                                 ");
    $display("\033[1;33m   o+:--------::++`              `:so/:-----s+-----------------:oy+:--:+s/``````                                             ");
    $display("\033[1;33m    :+o++///+oo/.                   .+o+::--os-------------------:oy+oo:`/o+++++o-                                           ");
    $display("\033[1;33m       .---.`                          -+oo/:yo:-------------------:oy-:h/:---:+oyo                                          ");
    $display("\033[1;33m                                          `:+omy/---------------------+h:----:y+//so                                         ");
    $display("\033[1;33m                                              `-ys:-------------------+s-----+s///om                                         ");
    $display("\033[1;33m                                                 -os+::---------------/y-----ho///om                                         ");
    $display("\033[1;33m                                                    -+oo//:-----------:h-----h+///+d                                         ");
    $display("\033[1;33m                                                       `-oyy+:---------s:----s/////y                                         ");
    $display("\033[1;33m                                                           `-/o+::-----:+----oo///+s                                         ");
    $display("\033[1;33m                                                               ./+o+::-------:y///s:                                         ");
    $display("\033[1;33m                                                                   ./+oo/-----oo/+h                                          ");
    $display("\033[1;33m                                                                       `://++++syo`                                          ");
    $display("\033[1;0m"); 
    repeat(5) @(negedge clk);
        $finish;
end endtask

endmodule
