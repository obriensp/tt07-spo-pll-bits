# netgen -batch eval "source tcl/lvs_netgen.tcl"
set layout [readnet spice delay_stage.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
readnet spice ../xschem/simulation/delay_stage.spice $source
lvs "$layout delay_stage" "$source delay_stage" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
