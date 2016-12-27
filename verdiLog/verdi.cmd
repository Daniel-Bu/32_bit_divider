debImport "-f" "filelist"
debLoadSimResult /home/edauser/Documents/mycode/32_bit_divider/test.vcd.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowResize -win Verdi_1 "0" "25" "1366" "692"
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiWindowResize -win Verdi_1 "0" "25" "1366" "692"
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/dividend\[31:0\]} \
{/tb/divider\[31:0\]} \
{/tb/error} \
{/tb/quotient\[31:0\]} \
{/tb/remainder\[31:0\]} \
{/tb/s} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/dividend\[31:0\]} \
{/tb/divider\[31:0\]} \
{/tb/error} \
{/tb/quotient\[31:0\]} \
{/tb/remainder\[31:0\]} \
{/tb/s} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 209.048511 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 228.302979 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 439.414468 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 530.185532 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 604.452766 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 705.084011 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 698.514905 -snap {("G1" 4)}
wvZoomAll -win $_nWave2
debExit
