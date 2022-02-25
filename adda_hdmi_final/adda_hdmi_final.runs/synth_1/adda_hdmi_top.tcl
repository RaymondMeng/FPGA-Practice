# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param simulator.modelsimInstallPath C:/modeltech64_10.7/win64
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg400-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.cache/wt [current_project]
set_property parent.project_path C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files c:/Xilinx/vivado_project/adda_hdmi_final/matlab/sin1920_1080.coe
add_files c:/Xilinx/vivado_project/adda_hdmi_final/matlab/actangle1920_1080.coe
add_files c:/Xilinx/vivado_project/adda_hdmi_final/matlab/square1920_1080.coe
read_verilog -library xil_defaultlib {
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/encode.v
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/gen_wave_data.v
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/hdmi_background.v
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/hdmi_trans.v
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/parallel_to_serial.v
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/wave_mix.v
  C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/new/adda_top.v
}
read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/rom_sin_1024_8/rom_sin_1024_8.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/rom_sin_1024_8/rom_sin_1024_8_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/rom_rectangle_1024_8/rom_rectangle_1024_8.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/rom_rectangle_1024_8/rom_rectangle_1024_8_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/rom_square_1024_8/rom_square_1024_8.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/rom_square_1024_8/rom_square_1024_8_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/clock/clock.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/clock/clock_board.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/clock/clock.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/clock/clock_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_da/ila_da.xci
set_property used_in_synthesis false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_da/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_da/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_da/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_da/ila_da_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_ad/ila_ad.xci
set_property used_in_synthesis false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_ad/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_ad/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_ad/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_ad/ila_ad_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/dpram_8_1024/dpram_8_1024.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/dpram_8_1024/dpram_8_1024_ooc.xdc]

read_ip -quiet c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/hdmi_clock/hdmi_clock.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/hdmi_clock/hdmi_clock_board.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/hdmi_clock/hdmi_clock.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/hdmi_clock/hdmi_clock_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/constrs_1/new/top_io.xdc
set_property used_in_implementation false [get_files C:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/constrs_1/new/top_io.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top adda_hdmi_top -part xc7z020clg400-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef adda_hdmi_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file adda_hdmi_top_utilization_synth.rpt -pb adda_hdmi_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]