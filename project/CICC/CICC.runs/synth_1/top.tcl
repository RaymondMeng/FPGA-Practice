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
set_param synth.incrementalSynthesisCache C:/Users/lenovo/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-22068-LAPTOP-IP0GL19C/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/lenovo/Desktop/CICC/CICC/CICC.cache/wt [current_project]
set_property parent.project_path C:/Users/lenovo/Desktop/CICC/CICC/CICC.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/lenovo/Desktop/CICC/filter/ip [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/lenovo/Desktop/CICC/CICC/CICC.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/new/microphone.v
  C:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/new/sound_out.v
  C:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/new/top.v
}
read_ip -quiet c:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/ip/I2S_fifo/I2S_fifo.xci
set_property used_in_implementation false [get_files -all c:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/ip/I2S_fifo/I2S_fifo.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/ip/I2S_fifo/I2S_fifo_ooc.xdc]

read_ip -quiet c:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/ip/predeal_0/predeal_0.xci
set_property used_in_implementation false [get_files -all c:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/ip/predeal_0/predeal_fir_compiler_v7_2_i0/constraints/fir_compiler_v7_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/sources_1/ip/predeal_0/constrs/predeal.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files C:/Users/lenovo/Desktop/CICC/CICC/CICC.srcs/constrs_1/new/top.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7z010clg400-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
