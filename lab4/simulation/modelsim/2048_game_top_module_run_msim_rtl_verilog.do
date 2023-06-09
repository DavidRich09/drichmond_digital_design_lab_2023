transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/logic_Module_tb.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/logic_Module.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/up_slide.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/down_slide.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/add_random.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/reset.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/right_slide.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/left_slide.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/check_matrix_full.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/have_move.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/win.sv}
vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/win_or_lose.sv}

vlog -sv -work work +incdir+C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4 {C:/Users/Joseff01/Documents/Git/drichmond_digital_design_lab_2023/lab4/logic_Module_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  logic_Module_tb

add wave *
view structure
view signals
run -all
