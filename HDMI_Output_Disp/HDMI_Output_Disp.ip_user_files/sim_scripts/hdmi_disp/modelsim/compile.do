vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

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

