
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name UART -dir "/home/rishav/logic/code_repository/UART/planAhead_run_3" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rishav/logic/code_repository/UART/UART_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rishav/logic/code_repository/UART} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "UART_top.ucf" [current_fileset -constrset]
add_files [list {UART_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
