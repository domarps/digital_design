
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name FreeRunningShiftRegister -dir "/home/rishav/Logic/FreeRunningShiftRegister/planAhead_run_1" -part xc6slx45csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rishav/Logic/FreeRunningShiftRegister/freeRunner.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rishav/Logic/FreeRunningShiftRegister} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "freeRunner.ucf" [current_fileset -constrset]
add_files [list {freeRunner.ucf}] -fileset [get_property constrset [current_run]]
link_design
