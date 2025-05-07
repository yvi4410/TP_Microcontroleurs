transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/yvidestombes/AppData/Local/quartus/TP1_Adders/half_adder.vhd}
vcom -93 -work work {C:/Users/yvidestombes/AppData/Local/quartus/TP1_Adders/full_adder_4b.vhd}
vcom -93 -work work {C:/Users/yvidestombes/AppData/Local/quartus/TP1_Adders/full_adder_1_bit.vhd}

vcom -93 -work work {C:/Users/yvidestombes/AppData/Local/quartus/TP1_Adders/tb_full_adder_4b.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_full_adder_4b

add wave *
view structure
view signals
run -all
