
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name FreeRunningCounter -dir "/home/rishav/logic/code_repository/FreeRunningCounter/planAhead_run_5" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rishav/logic/code_repository/FreeRunningCounter/FreeRunner.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rishav/logic/code_repository/FreeRunningCounter} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "FreeRunner.ucf" [current_fileset -constrset]
add_files [list {FreeRunner.ucf}] -fileset [get_property constrset [current_run]]
link_design
