`timescale 1ns/1ps
// *********************************************************************************
// Project Name : 
// Author       : NingHeChuan
// Email        : ninghechuan@foxmail.com
// Website      : http://www.cnblogs.com/ninghechuan/
// Create Time  :
// File Name    : .v
// Module Name  : 
// Called By    :
// Abstract     :
//
// CopyRight(c) 2018, NingHeChuan Studio.. 
// All Rights Reserved
//
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
//  
// *********************************************************************************

module HDMI_Output_Disp(
	input 				sysclk_p,
	input 				sysclk_n,
	output 		[0:0]	HDMI_OEN,
	output 				TMDS_clk_n,
	output 				TMDS_clk_p,
	output 		[2:0]	TMDS_data_n,
	output 		[2:0]	TMDS_data_p
);
wire            clk_125M;
wire			video_clk;
wire			video_clk_5x;
wire			video_hs;
wire			video_vs;
wire			video_de;
wire	[7:0]	video_r;
wire	[7:0]	video_g;
wire	[7:0]	video_b;

assign HDMI_OEN = 1'b1;


//--------------------------------------------------
  clk_wiz_0 clk125m
 (
  // Clock out ports
  .clk_out1(clk_125M),     // output clk_out1
  // Status and control signals
  .reset(0), // input reset
  .locked(),       // output locked
 // Clock in ports
  .clk_in1_p(sysclk_p),    // input clk_in1_p
  .clk_in1_n(sysclk_n));    // input clk_in1_n


//-----------------------------------------------------
color_bar color_bar_inst(
	.clk			(video_clk),
	.rst			(1'b0),
	.hs				(video_hs),
	.vs				(video_vs),
	.de				(video_de),
	.rgb_r			(video_r),
	.rgb_g			(video_g),
	.rgb_b			(video_b)
);

//----------------------------------------------
video_pll video_pll_inst(
    .clk_in1		(clk_125M),
    .clk_out1		(video_clk),
    .clk_out2		(video_clk_5x),
    .reset			(1'b0),
    .locked			()
 );
 
//--------------------------------------------------
hdmi_disp hdmi_disp_inst (
     // DVI 1.0 TMDS video interface
      .TMDS_Clk_p	(TMDS_clk_p),
      .TMDS_Clk_n	(TMDS_clk_n),
      .TMDS_Data_p	(TMDS_data_p),
      .TMDS_Data_n	(TMDS_data_n),
     //Auxiliary signals 
      .aRst			(1'b0), //asynchronous reset; must be reset when RefClk is not within spec
      .aRst_n		(1'b1), //-asynchronous reset; must be reset when RefClk is not within spec
      // Video in
      .vid_pData	({video_r,video_b,video_g}),
      .vid_pVDE		(video_de),
      .vid_pHSync	(video_hs),
      .vid_pVSync	(video_vs),
      .PixelClk		(video_clk),
      .SerialClk	(video_clk_5x)// 5x PixelClk
      ); 
  
endmodule