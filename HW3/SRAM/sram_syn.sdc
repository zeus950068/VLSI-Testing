###################################################################

# Created by write_sdc on Fri Jun  2 22:56:34 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions slow -library slow
set_load -pin_load 0.005194 [get_ports {data_out[1]}]
set_load -pin_load 0.005194 [get_ports {data_out[0]}]
create_clock [get_ports clk]  -period 2  -waveform {0 1}
set_drive 1  [get_ports clk]
set_drive 1  [get_ports rst_n]
set_drive 1  [get_ports we_n]
set_drive 1  [get_ports cs_n]
set_drive 1  [get_ports {data_in[1]}]
set_drive 1  [get_ports {data_in[0]}]
set_drive 1  [get_ports {addr[3]}]
set_drive 1  [get_ports {addr[2]}]
set_drive 1  [get_ports {addr[1]}]
set_drive 1  [get_ports {addr[0]}]
