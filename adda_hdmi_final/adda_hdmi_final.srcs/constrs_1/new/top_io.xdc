############## clock define##################
create_clock -period 20.000 [get_ports clk]
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

############## key define##################
set_property PACKAGE_PIN B19 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

set_property PACKAGE_PIN J15 [get_ports key_in]
set_property IOSTANDARD LVCMOS33 [get_ports key_in]

set_property PACKAGE_PIN K17 [get_ports hdmi_tx_clk_p]
set_property PACKAGE_PIN D19 [get_ports {hdmi_tx_chn_r_p}]
set_property PACKAGE_PIN F19 [get_ports {hdmi_tx_chn_g_p}]
set_property PACKAGE_PIN G19 [get_ports {hdmi_tx_chn_b_p}]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_oen]
set_property PACKAGE_PIN M20 [get_ports hdmi_oen]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_chn_r_p]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_chn_g_p]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_chn_b_p]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_clk_p]


set_property PACKAGE_PIN R18 [get_ports {da_data[0]}]
set_property PACKAGE_PIN T17 [get_ports {da_data[1]}]
set_property PACKAGE_PIN P20 [get_ports {da_data[2]}]
set_property PACKAGE_PIN N20 [get_ports {da_data[3]}]
set_property PACKAGE_PIN P18 [get_ports {da_data[4]}]
set_property PACKAGE_PIN N17 [get_ports {da_data[5]}]
set_property PACKAGE_PIN P19 [get_ports {da_data[6]}]
set_property PACKAGE_PIN N18 [get_ports {da_data[7]}]
set_property PACKAGE_PIN T20 [get_ports da_clk]

set_property PACKAGE_PIN T10 [get_ports ad_clk]
set_property PACKAGE_PIN U12 [get_ports {ad_data[0]}]
set_property PACKAGE_PIN T12 [get_ports {ad_data[1]}]
set_property PACKAGE_PIN W13 [get_ports {ad_data[2]}]
set_property PACKAGE_PIN V12 [get_ports {ad_data[3]}]
set_property PACKAGE_PIN V13 [get_ports {ad_data[4]}]
set_property PACKAGE_PIN U13 [get_ports {ad_data[5]}]
set_property PACKAGE_PIN U15 [get_ports {ad_data[6]}]
set_property PACKAGE_PIN U14 [get_ports {ad_data[7]}]

set_property SLEW FAST [get_ports {da_data[*]}]
set_property SLEW FAST [get_ports da_clk]
set_property SLEW FAST [get_ports ad_clk]


set_property IOSTANDARD LVCMOS33 [get_ports da_clk]
set_property IOSTANDARD LVCMOS33 [get_ports ad_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {ad_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da_data[*]}]

