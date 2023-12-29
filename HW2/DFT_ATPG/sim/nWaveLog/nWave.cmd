verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/m111/m111063548/VLSI_TEST/LAB2/test/3.DFT_ATPG/sim/novas.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/dividend\[7:0\]} \
{/TESTBED/divisor\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid} \
{/TESTBED/quotient\[7:0\]} \
{/TESTBED/remainder\[7:0\]} \
{/TESTBED/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 8 31 1535 937
wvExit
