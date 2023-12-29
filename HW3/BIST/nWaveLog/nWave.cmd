verdiSetActWin -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 0 23 1707 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 0 1707 889
wvResizeWindow -win $_nWave1 8 31 1707 937
wvResizeWindow -win $_nWave1 0 23 1707 889
wvRestoreSignal -win $_nWave1 \
           "/home/m111/m111063548/VLSI_TEST/LAB3/BIST/test/BIST_Checkboard.rc" \
           -overWriteAutoAlias on -appendSignals on
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 281618.497110 -snap {("SRAM" 0)}
wvSelectGroup -win $_nWave1 {G6}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_Checkboard_tb"
wvSetPosition -win $_nWave1 {("BIST" 3)}
wvSetPosition -win $_nWave1 {("BIST" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Checkboard Pattern Generator" \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/clk} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/rst} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/cs_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/we_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/counter\[6:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/checkboard_addr\[3:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/checkboard_data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Delay Buffer" \
{/BIST_Checkboard_tb/BIST_Checkboard/Delay_addr/delay_addr_out\[3:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Delay_data/delay_data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"SRAM" \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/clk} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/rst} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/cs_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/we_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/addr\[3:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/data_in\[1:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Comparator" \
{/BIST_Checkboard_tb/BIST_Checkboard/Comparator/data_in1\[1:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Comparator/data_in2\[1:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Comparator/Equal_or_not} \
}
wvAddSignal -win $_nWave1 -group {"BIST" \
{/BIST_Checkboard_tb/BIST_Checkboard/pass_or_fail} \
{/BIST_Checkboard_tb/BIST_Checkboard/test_done} \
{/BIST_Checkboard_tb/tester} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "BIST" 3 )} 
wvSetPosition -win $_nWave1 {("BIST" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "BIST" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetCursor -win $_nWave1 208699.421965 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 178023.121387 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_Checkboard_tb"
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"Checkboard Pattern Generator" \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/clk} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/rst} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/cs_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/we_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/counter\[6:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/checkboard_addr\[3:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Pattern_Generator/checkboard_data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Delay Buffer" \
{/BIST_Checkboard_tb/BIST_Checkboard/Delay_addr/delay_addr_out\[3:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Delay_data/delay_data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"SRAM" \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/clk} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/rst} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/cs_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/we_n} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/addr\[3:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/data_in\[1:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/SRAM/data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Comparator" \
{/BIST_Checkboard_tb/BIST_Checkboard/Comparator/data_in1\[1:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Comparator/data_in2\[1:0\]} \
{/BIST_Checkboard_tb/BIST_Checkboard/Comparator/Equal_or_not} \
}
wvAddSignal -win $_nWave1 -group {"BIST" \
{/BIST_Checkboard_tb/BIST_Checkboard/pass_or_fail} \
{/BIST_Checkboard_tb/BIST_Checkboard/test_done} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/BIST_Checkboard_tb/tester} \
{/BIST_Checkboard_tb/tester} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSetPosition -win $_nWave1 {("G6" 2)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvResizeWindow -win $_nWave1 8 31 1707 937
wvResizeWindow -win $_nWave1 1 31 851 880
wvExit
