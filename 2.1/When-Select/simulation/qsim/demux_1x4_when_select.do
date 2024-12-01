onerror {exit -code 1}
vlib work
vcom -work work demux_1x4_when_select.vho
vcom -work work Waveform.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.demux_1x4_when_select_vhd_vec_tst
vcd file -direction demux_1x4_when_select.msim.vcd
vcd add -internal demux_1x4_when_select_vhd_vec_tst/*
vcd add -internal demux_1x4_when_select_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
