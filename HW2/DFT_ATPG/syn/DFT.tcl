set DESIGN "divider"
set CLK_period 0.8

##      Step 1 : Read In Files                ##
read_file ./${DESIGN}_syn.v -format verilog
current_design "divider"
create_clock -name "clk" -period $CLK_period clk
report_area > ${DESIGN}.rpt
report_timing >> ${DESIGN}.rpt
report_power >> ${DESIGN}.rpt

##      Step 2 : Set ATE Configuration        ##
set_scan_configuration -style multiplexed_flip_flop -chain_count 1
create_clock -name "clk" -period $CLK_period clk
set_dft_signal -view existing_dft -type ScanClock -port clk -timing {10 20}
set_dft_signal -view existing_dft -port rst_n -type reset -active_state 0

##      Step 3 : Design Rule Validation       ##
create_test_protocol
dft_drc

##      Step 4 : Scan Chain Synthesis         ##
insert_dft

##      Step 5 : Write Out Files              ##
report_area > ${DESIGN}_dft.rpt
report_timing >> ${DESIGN}_dft.rpt
report_power >> ${DESIGN}_dft.rpt


write -format verilog -hierarchy -output ${DESIGN}_dft.v
write_test_protocol -output ${DESIGN}_dft.stil
exit

