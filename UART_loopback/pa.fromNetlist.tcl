
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name UART_loopback -dir "/home/rishav/logic/code_repository/UART_loopback/planAhead_run_1" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rishav/logic/code_repository/UART_loopback/UART_Loopback_Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rishav/logic/code_repository/UART_loopback} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "UART_Loopback_Top.ucf" [current_fileset -constrset]
add_files [list {UART_Loopback_Top.ucf}] -fileset [get_property constrset [current_run]]
link_design
