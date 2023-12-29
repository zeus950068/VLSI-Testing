###################################################################

# Created by write_sdc on Thu Jun  1 16:36:07 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions slow -library slow
set_load -pin_load 0.005194 [get_ports pass_or_fail]
set_load -pin_load 0.005194 [get_ports BIST_test_done]
create_clock [get_ports clk]  -period 1  -waveform {0 0.5}
set_drive 1  [get_ports clk]
set_drive 1  [get_ports rst]
set_drive 1  [get_ports {normal_input_data[1]}]
set_drive 1  [get_ports {normal_input_data[0]}]
set_drive 1  [get_ports {normal_input_addr[3]}]
set_drive 1  [get_ports {normal_input_addr[2]}]
set_drive 1  [get_ports {normal_input_addr[1]}]
set_drive 1  [get_ports {normal_input_addr[0]}]
set_drive 1  [get_ports normal_input_we_n]
set_drive 1  [get_ports normal_input_cs_n]
set_drive 1  [get_ports tester]
