###################################################################

# Created by write_sdc on Tue May  9 16:35:45 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions slow -library slow
set_load -pin_load 0.005194 [get_ports {quotient[7]}]
set_load -pin_load 0.005194 [get_ports {quotient[6]}]
set_load -pin_load 0.005194 [get_ports {quotient[5]}]
set_load -pin_load 0.005194 [get_ports {quotient[4]}]
set_load -pin_load 0.005194 [get_ports {quotient[3]}]
set_load -pin_load 0.005194 [get_ports {quotient[2]}]
set_load -pin_load 0.005194 [get_ports {quotient[1]}]
set_load -pin_load 0.005194 [get_ports {quotient[0]}]
set_load -pin_load 0.005194 [get_ports {remainder[7]}]
set_load -pin_load 0.005194 [get_ports {remainder[6]}]
set_load -pin_load 0.005194 [get_ports {remainder[5]}]
set_load -pin_load 0.005194 [get_ports {remainder[4]}]
set_load -pin_load 0.005194 [get_ports {remainder[3]}]
set_load -pin_load 0.005194 [get_ports {remainder[2]}]
set_load -pin_load 0.005194 [get_ports {remainder[1]}]
set_load -pin_load 0.005194 [get_ports {remainder[0]}]
set_load -pin_load 0.005194 [get_ports out_valid]
create_clock [get_ports clk]  -period 1  -waveform {0 0.5}
set_drive 1  [get_ports {dividend[7]}]
set_drive 1  [get_ports {dividend[6]}]
set_drive 1  [get_ports {dividend[5]}]
set_drive 1  [get_ports {dividend[4]}]
set_drive 1  [get_ports {dividend[3]}]
set_drive 1  [get_ports {dividend[2]}]
set_drive 1  [get_ports {dividend[1]}]
set_drive 1  [get_ports {dividend[0]}]
set_drive 1  [get_ports {divisor[7]}]
set_drive 1  [get_ports {divisor[6]}]
set_drive 1  [get_ports {divisor[5]}]
set_drive 1  [get_ports {divisor[4]}]
set_drive 1  [get_ports {divisor[3]}]
set_drive 1  [get_ports {divisor[2]}]
set_drive 1  [get_ports {divisor[1]}]
set_drive 1  [get_ports {divisor[0]}]
set_drive 1  [get_ports clk]
set_drive 1  [get_ports rst_n]
set_drive 1  [get_ports in_valid]
