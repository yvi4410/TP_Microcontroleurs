transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/yvidestombes/AppData/Local/quartus/TP2_registres/universal_register.vhd}

vcom -93 -work work {C:/Users/yvidestombes/AppData/Local/quartus/TP2_registres/tb_universal_register.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_universal_register

add wave *
view structure
view signals
run -all
