set DESIGN "divider"
##   Step 1 :Read In Files            ##
read_netlist ${DESIGN}_dft.v
read_netlist /home/m110/m110061576/process/CBDK_TSMC90GUTM_Arm_f1.0/CIC/Verilog/tsmc090.v -library
report_modules -summary 
report_modules -error 
report_modules -undefined 
##   Step 2 :Build ATPG Design Model  ##
run_build_mode divider
##   Step 3 :Design Rule Validation   ##
set_drc -allow_unstable_set_resets
run_drc ${DESIGN}_dft.stil
##   Step 4 :Run ATPG                 ##
add_faults -all
set_atpg -merge high -abort_limit 250 -coverage 100 -decision random -fill x
run_atpg
##   Step 5 :Write Out Files          ##
write_faults ${DESIGN}_fault.rpt -replace -summary
write_patterns ${DESIGN}_dft.stil -format stil -replace
