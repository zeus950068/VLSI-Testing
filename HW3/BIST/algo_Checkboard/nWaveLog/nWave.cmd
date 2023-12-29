wvResizeWindow -win $_nWave1 1377 31 1374 1080
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/m111/m111063548/VLSI_TEST/LAB3/BIST/test/algo_Checkboard/BIST_Checkboard.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/home/m111/m111063548/VLSI_TEST/LAB3/BIST/test/algo_Checkboard/BIST_Checkboard.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 2752 1089
wvSetCursor -win $_nWave1 133526.794034 -snap {("G8" 0)}
wvResizeWindow -win $_nWave1 8 31 1920 1017
wvResizeWindow -win $_nWave1 8 31 1238 1017
wvResizeWindow -win $_nWave1 8 31 1238 1080
wvResizeWindow -win $_nWave1 8 31 1358 1080
wvZoom -win $_nWave1 75243.651440 78500.590848
wvZoom -win $_nWave1 76599.922827 76845.373333
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
