#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk_125M }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk_125M }];



set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { sysclk_n }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { sysclk_p }]; #IO_L12P_T1_MRCC_33 Sch=sysclk_p

#set_property -dict { PACKAGE_PIN AB20   IOSTANDARD TMDS_33  } [get_ports { TMDS_clk_n }]; #IO_L11N_T1_SRCC_35 Sch=hdmi_tx_clk_n
#set_property -dict { PACKAGE_PIN AA20   IOSTANDARD TMDS_33  } [get_ports { TMDS_clk_p }]; #IO_L11P_T1_SRCC_35 Sch=hdmi_tx_clk_p
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[0] }]; #IO_L12N_T1_MRCC_35 Sch=hdmi_tx_d_n[0]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[0] }]; #IO_L12P_T1_MRCC_35 Sch=hdmi_tx_d_p[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[1] }]; #IO_L10N_T1_AD11N_35 Sch=hdmi_tx_d_n[1]
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[1] }]; #IO_L10P_T1_AD11P_35 Sch=hdmi_tx_d_p[1]
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[2] }]; #IO_L14N_T2_AD4N_SRCC_35 Sch=hdmi_tx_d_n[2]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[2] }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=hdmi_tx_d_p[2]
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { HDMI_OEN[0] }]; #IO_0_34 Sch=hdmi_tx_hpdn

set_property -dict { PACKAGE_PIN AB20  IOSTANDARD TMDS_33  } [get_ports { TMDS_clk_n }]; #IO_L6N_T0_VREF_12 Sch=hdmi_tx_clk_n
set_property -dict { PACKAGE_PIN AA20  IOSTANDARD TMDS_33  } [get_ports { TMDS_clk_p }]; #IO_L6P_T0_12 Sch=hdmi_tx_clk_p
set_property -dict { PACKAGE_PIN AG29  IOSTANDARD LVCMOS33 } [get_ports { HDMI_OEN[0] }]; #IO_L13P_T2_MRCC_13 Sch=hdmi_tx_hpd
#set_property -dict { PACKAGE_PIN AF27  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_scl }]; #IO_L23N_T3_13 Sch=hdmi_tx_scl
#set_property -dict { PACKAGE_PIN AF26  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_sda }]; #IO_L23P_T3_13 Sch=hdmi_tx_sda
set_property -dict { PACKAGE_PIN AC21  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[0] }]; #IO_L5N_T0_12 Sch=hdmi_tx_n[0]
set_property -dict { PACKAGE_PIN AC20  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[0] }]; #IO_L5P_T0_12 Sch=hdmi_tx_p[0]
set_property -dict { PACKAGE_PIN AA23  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[1] }]; #IO_L4N_T0_12 Sch=hdmi_tx_n[1]
set_property -dict { PACKAGE_PIN AA22  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[1] }]; #IO_L4P_T0_12 Sch=hdmi_tx_p[1]
set_property -dict { PACKAGE_PIN AC25  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[2] }]; #IO_L7N_T1_12 Sch=hdmi_tx_n[2]
set_property -dict { PACKAGE_PIN AB24  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[2] }]; #IO_L7P_T1_12 Sch=hdmi_tx_p[2]
