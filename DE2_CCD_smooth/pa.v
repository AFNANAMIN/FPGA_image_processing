// megafunction wizard: %PARALLEL_ADD%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: parallel_add 

// ============================================================
// File Name: pa.v
// Megafunction Name(s):
// 			parallel_add
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 8.0 Build 215 05/29/2008 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2008 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module pa (
	aclr,
	clock,
	data0x,
	data1x,
	data2x,
	result);

	input	  aclr;
	input	  clock;
	input	[19:0]  data0x;
	input	[19:0]  data1x;
	input	[19:0]  data2x;
	output	[21:0]  result;

	wire [21:0] sub_wire0;
	wire [19:0] sub_wire4 = data2x[19:0];
	wire [19:0] sub_wire3 = data0x[19:0];
	wire [21:0] result = sub_wire0[21:0];
	wire [19:0] sub_wire1 = data1x[19:0];
	wire [59:0] sub_wire2 = {sub_wire4, sub_wire1, sub_wire3};

	parallel_add	parallel_add_component (
				.clock (clock),
				.aclr (aclr),
				.data (sub_wire2),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.clken ()
				// synopsys translate_on
				);
	defparam
		parallel_add_component.msw_subtract = "NO",
		parallel_add_component.pipeline = 1,
		parallel_add_component.representation = "SIGNED",
		parallel_add_component.result_alignment = "LSB",
		parallel_add_component.shift = 0,
		parallel_add_component.size = 3,
		parallel_add_component.width = 20,
		parallel_add_component.widthr = 22;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: MSW_SUBTRACT STRING "NO"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: RESULT_ALIGNMENT STRING "LSB"
// Retrieval info: CONSTANT: SHIFT NUMERIC "0"
// Retrieval info: CONSTANT: SIZE NUMERIC "3"
// Retrieval info: CONSTANT: WIDTH NUMERIC "20"
// Retrieval info: CONSTANT: WIDTHR NUMERIC "22"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT GND "aclr"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT GND "clock"
// Retrieval info: USED_PORT: data0x 0 0 20 0 INPUT NODEFVAL "data0x[19..0]"
// Retrieval info: USED_PORT: data1x 0 0 20 0 INPUT NODEFVAL "data1x[19..0]"
// Retrieval info: USED_PORT: data2x 0 0 20 0 INPUT NODEFVAL "data2x[19..0]"
// Retrieval info: USED_PORT: result 0 0 22 0 OUTPUT NODEFVAL "result[21..0]"
// Retrieval info: CONNECT: @data 0 0 20 40 data2x 0 0 20 0
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 20 20 data1x 0 0 20 0
// Retrieval info: CONNECT: @data 0 0 20 0 data0x 0 0 20 0
// Retrieval info: CONNECT: result 0 0 22 0 @result 0 0 22 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL pa.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL pa.inc FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL pa.cmp FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL pa.bsf FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL pa_inst.v FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL pa_bb.v FALSE FALSE
// Retrieval info: LIB_FILE: altera_mf