vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv \
"D:/Xilinx/Vivado2017.3/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado2017.3/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/SyncAsync.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/SyncAsyncReset.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/ClockGen.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/DVI_Constants.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/OutputSERDES.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/TMDS_Encoder.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/rgb2dvi.vhd" \
"../../../../HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/sim/hdmi_disp.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

