wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/m111/m111063548/VLSI_TEST/LAB3/BIST/test/algo_March/BIST_March.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/BIST_March_tb/BIST_March/clk} \
{/BIST_March_tb/BIST_March/delay_data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/pass_or_fail} \
{/BIST_March_tb/BIST_March/sram_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/test_addr\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/BIST_March_tb/BIST_March/clk} \
{/BIST_March_tb/BIST_March/delay_data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/pass_or_fail} \
{/BIST_March_tb/BIST_March/sram_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/test_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/tester} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 1558524.232937 4706434.564809
wvZoom -win $_nWave1 1739869.098642 1802945.573670
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/BIST_March_tb/BIST_March/clk} \
{/BIST_March_tb/BIST_March/delay_data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/pass_or_fail} \
{/BIST_March_tb/BIST_March/sram_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/test_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/tester} \
{/BIST_March_tb/BIST_March/data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/test_data\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/BIST_March_tb/BIST_March/clk} \
{/BIST_March_tb/BIST_March/delay_data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/pass_or_fail} \
{/BIST_March_tb/BIST_March/sram_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/test_addr\[3:0\]} \
{/BIST_March_tb/BIST_March/tester} \
{/BIST_March_tb/BIST_March/data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/test_data\[1:0\]} \
{/BIST_March_tb/BIST_March/delay_we_out} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvGetSignalSetScope -win $_nWave1 "/BIST_March_tb/BIST_March"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/BIST_March_tb/BIST_March/tester} \
{/BIST_March_tb/BIST_March/clk} \
{/BIST_March_tb/BIST_March/delay_we_out} \
{/BIST_March_tb/BIST_March/delay_data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/data_out\[1:0\]} \
{/BIST_March_tb/BIST_March/pass_or_fail} \
{/BIST_March_tb/BIST_March/test_addr\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetCursor -win $_nWave1 1755667.840038 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectGroup -win $_nWave1 {G2}
wvZoom -win $_nWave1 1757563.689006 1802866.579962
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvExit
