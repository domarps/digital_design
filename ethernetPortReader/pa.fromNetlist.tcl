
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ethernetPortReader -dir "/home/rishav/logic/code_repository/ethernetPortReader/planAhead_run_1" -part xc6slx150tfgg676-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/rishav/logic/code_repository/ethernetPortReader/ethernetChipscope.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/rishav/logic/code_repository/ethernetPortReader} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ethernetChipscope.ucf" [current_fileset -constrset]
add_files [list {ethernetChipscope.ucf}] -fileset [get_property constrset [current_run]]
link_design
