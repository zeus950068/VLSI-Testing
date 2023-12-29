wvResizeWindow -win $_nWave1 0 23 1536 889
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 8 31 892 202
wvResizeWindow -win $_nWave1 0 23 1536 889
wvResizeWindow -win $_nWave1 0 23 1536 889
wvResizeWindow -win $_nWave1 0 23 1536 889
wvResizeWindow -win $_nWave1 0 23 1536 889
wvResizeWindow -win $_nWave1 0 23 1536 889
wvResizeWindow -win $_nWave1 8 31 1536 889
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/m111/m111063548/VLSI_TEST/LAB3/SRAM/test/sram.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/m111/m111063548/VLSI_TEST/LAB3/SRAM/test/sram.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1707 889
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 176390.606187 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSelectGroup -win $_nWave1 {G1}
wvRenameGroup -win $_nWave1 {G1} {SRAM}
wvSaveSignal -win $_nWave1 \
           "/home/m111/m111063548/VLSI_TEST/LAB3/SRAM/test/sram.rc"
wvSelectGroup -win $_nWave1 {SRAM}
wvSelectGroup -win $_nWave1 {G2}
wvResizeWindow -win $_nWave1 0 23 1536 889
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "SRAM" 9 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {SRAM}
wvSelectGroup -win $_nWave1 {SRAM}
wvSetCursor -win $_nWave1 153117.121491
wvSelectGroup -win $_nWave1 {SRAM}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 177787.341176 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"SRAM" \
{/SRAM_tb/SRAM/rst_n} \
{/SRAM_tb/SRAM/clk} \
{/SRAM_tb/SRAM/cs_n} \
{/SRAM_tb/SRAM/we_n} \
{/SRAM_tb/SRAM/addr\[3:0\]} \
{/SRAM_tb/SRAM/data0} \
{/SRAM_tb/SRAM/data1} \
{/SRAM_tb/SRAM/data_in\[1:0\]} \
{/SRAM_tb/SRAM/data_out\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/SRAM_tb/SRAM/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvExit
