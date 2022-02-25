################### clock define ####################
create_clock -period 20.000 [get_ports sys_clk]
set_property PACKAGE_PIN H16 [get_ports sys_clk]

################### key define ######################
set_property PACKAGE_PIN B19 [get_ports rst_n]

################### LED define ######################

set_property PACKAGE_PIN G14 [get_ports {led[0]}]
set_property PACKAGE_PIN C20 [get_ports {led[1]}]
set_property PACKAGE_PIN B20 [get_ports {led[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]