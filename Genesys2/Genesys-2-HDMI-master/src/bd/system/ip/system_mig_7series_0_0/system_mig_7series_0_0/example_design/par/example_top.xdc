##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  ���� 5�� 24 09:09:43 2019
##  Generated by MIG Version 4.1
##  
##################################################################################################
##  File name :       example_top.xdc
##  Details :     Constraints file
##                    FPGA Family:       KINTEX7
##                    FPGA Part:         XC7K325T-FFG900
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         0 MHz
##                    Time Period:       2500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41J256m16XX-107
## Data Width: 32
## Time Period: 2500
## Data Mask: 1
##################################################################################################
############## NET - IOSTANDARD ##################



set_property INTERNAL_VREF  0.750 [get_iobanks 34]