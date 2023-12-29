set ref_cycle  1

#/*--------------------------------------------------------------*/
#/*----------------------- 1.Read files -------------------------*/
#/*--------------------------------------------------------------*/
read_file -format verilog ../1.RTL_simulation/divider.v

# Top module name
current_design [get_designs divider]
set_operating_conditions slow
#/*--------------------------------------------------------------*/
#/*--------------- 2. Set design constraints --------------------*/ 
#/*--------------------------------------------------------------*/
create_clock -period $ref_cycle [get_ports clk]
set_dont_touch_network [get_clocks clk]
set_dont_touch_network [get_ports rst_n]

set_drive 1 [all_inputs] 
set_load [load_of slow/CLKBUFX20/A] [all_outputs]
#/*--------------------------------------------------------------*/
#/*----------------- 3.Check and Link Design --------------------*/ 
#/*--------------------------------------------------------------*/
link 
check_design
uniquify
set_fix_multiple_port_nets -all -buffer_constants  
#/*--------------------------------------------------------------*/
#/*------------------------ 4.Compile ---------------------------*/ 
#/*--------------------------------------------------------------*/

set compile_new_boolean_structure 

set_structure false 

compile  -map_effort medium 

check_design 

set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\*cell\*" "cell"}}
define_name_rules name_rule -map {{"*-return", "myreturn"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

set verilogout_show_unconnected_pins true  

#/*--------------------------------------------------------------*/ 
#/*----------------------- 5.Write out files --------------------*/ 
#/*--------------------------------------------------------------*/

report_area > ./divider_syn.report
report_timing -path full -delay max >> ./divider_syn.report
report_power >> ./divider_syn.report

write -format verilog -hierarchy -output ./divider_syn.v
write -format verilog -hierarchy -output ../3.DFT_ATPG/syn/divider_syn.v

write_sdf -version 1.0 -context verilog -load_delay cell ./divider_syn.sdf 
write_sdc ./divider_syn.sdc 

exit
set ref_cycle  1.5

#/*--------------------------------------------------------------*/
#/*----------------------- 1.Read files -------------------------*/
#/*--------------------------------------------------------------*/
read_file -format verilog ../1.RTL_simulation/divider.v

# Top module name
current_design [get_designs divider]
set_operating_conditions slow
#/*--------------------------------------------------------------*/
#/*--------------- 2. Set design constraints --------------------*/ 
#/*--------------------------------------------------------------*/
create_clock -period $ref_cycle [get_ports clk]
set_dont_touch_network [get_clocks clk]
set_dont_touch_network [get_ports rst_n]

set_drive 1 [all_inputs] 
set_load [load_of slow/CLKBUFX20/A] [all_outputs]
#/*--------------------------------------------------------------*/
#/*----------------- 3.Check and Link Design --------------------*/ 
#/*--------------------------------------------------------------*/
link 
check_design
uniquify
set_fix_multiple_port_nets -all -buffer_constants  
#/*--------------------------------------------------------------*/
#/*------------------------ 4.Compile ---------------------------*/ 
#/*--------------------------------------------------------------*/

set compile_new_boolean_structure 

set_structure false 

compile  -map_effort medium 

check_design 

set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\*cell\*" "cell"}}
define_name_rules name_rule -map {{"*-return", "myreturn"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

set verilogout_show_unconnected_pins true  

#/*--------------------------------------------------------------*/ 
#/*----------------------- 5.Write out files --------------------*/ 
#/*--------------------------------------------------------------*/

report_area > ./divider_syn.report
report_timing -path full -delay max >> ./divider_syn.report
report_power >> ./divider_syn.report

write -format verilog -hierarchy -output ./divider_syn.v
write -format verilog -hierarchy -output ../3.DFT_ATPG/syn/divider_syn.v

write_sdf -version 1.0 -context verilog -load_delay cell ./divider_syn.sdf
write_sdc ./divider_syn.sdc 

exit
