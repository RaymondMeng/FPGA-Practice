###### clock define #########
create_clock -period 20.000 [get_ports clk]
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
###### key define ###########
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN B19 [get_ports rst_n]

set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_chn_r_p]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_chn_g_p]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_oen]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_tx_chn_b_p]
set_property PACKAGE_PIN G19 [get_ports hdmi_tx_chn_r_p]
set_property PACKAGE_PIN D19 [get_ports hdmi_tx_chn_b_p]
set_property PACKAGE_PIN M20 [get_ports hdmi_oen]
set_property PACKAGE_PIN K17 [get_ports hdmi_tx_clk_p]
set_property PACKAGE_PIN F19 [get_ports hdmi_tx_chn_g_p]


