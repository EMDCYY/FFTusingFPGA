////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.40d
//  \   \         Application: netgen
//  /   /         Filename: MLPARE.v
// /___/   /\     Timestamp: Thu Aug 15 16:10:42 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "E:/Design of Laser Tracer/8.ADM/ADMDSP_CODE/ADM3.0/ipcore_dir/tmp/_cg/MLPARE.ngc" "E:/Design of Laser Tracer/8.ADM/ADMDSP_CODE/ADM3.0/ipcore_dir/tmp/_cg/MLPARE.v" 
// Device	: 3s500epq208-4
// Input file	: E:/Design of Laser Tracer/8.ADM/ADMDSP_CODE/ADM3.0/ipcore_dir/tmp/_cg/MLPARE.ngc
// Output file	: E:/Design of Laser Tracer/8.ADM/ADMDSP_CODE/ADM3.0/ipcore_dir/tmp/_cg/MLPARE.v
// # of Modules	: 1
// Design Name	: MLPARE
// Xilinx        : c:\Xilinx\13.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MLPARE (
  clk, p, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [23 : 0] p;
  input [11 : 0] a;
  input [11 : 0] b;
  
  // synthesis translate_off
  
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_0 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_1 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_10 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_11 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_12 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_13 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_14 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_15 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_16 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_17 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_18 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_19 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_2 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_20 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_21 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_22 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_23 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_3 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_4 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_5 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_6 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_7 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_8 ;
  wire \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_9 ;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  assign
    p[23] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_23 ,
    p[22] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_22 ,
    p[21] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_21 ,
    p[20] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_20 ,
    p[19] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_19 ,
    p[18] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_18 ,
    p[17] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_17 ,
    p[16] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_16 ,
    p[15] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_15 ,
    p[14] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_14 ,
    p[13] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_13 ,
    p[12] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_12 ,
    p[11] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_11 ,
    p[10] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_10 ,
    p[9] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_9 ,
    p[8] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_8 ,
    p[7] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_7 ,
    p[6] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_6 ,
    p[5] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_5 ,
    p[4] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_4 ,
    p[3] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_3 ,
    p[2] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_2 ,
    p[1] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_1 ,
    p[0] = \U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_0 ;
  GND   blk00000001 (
    .G(sig00000001)
  );
  VCC   blk00000002 (
    .P(sig00000002)
  );
  XORCY   blk00000003 (
    .CI(sig0000017a),
    .LI(sig000000e5),
    .O(sig000001ce)
  );
  XORCY   blk00000004 (
    .CI(sig00000179),
    .LI(sig000000e6),
    .O(sig000001cd)
  );
  MUXCY   blk00000005 (
    .CI(sig00000179),
    .DI(sig00000133),
    .S(sig000000e6),
    .O(sig0000017a)
  );
  MULT_AND   blk00000006 (
    .I0(b[10]),
    .I1(a[11]),
    .LO(sig00000133)
  );
  XORCY   blk00000007 (
    .CI(sig00000178),
    .LI(sig000000e4),
    .O(sig000001cc)
  );
  MUXCY   blk00000008 (
    .CI(sig00000178),
    .DI(sig00000132),
    .S(sig000000e4),
    .O(sig00000179)
  );
  MULT_AND   blk00000009 (
    .I0(b[10]),
    .I1(a[11]),
    .LO(sig00000132)
  );
  XORCY   blk0000000a (
    .CI(sig00000183),
    .LI(sig000000e2),
    .O(sig000001cb)
  );
  MUXCY   blk0000000b (
    .CI(sig00000183),
    .DI(sig00000131),
    .S(sig000000e2),
    .O(sig00000178)
  );
  MULT_AND   blk0000000c (
    .I0(b[10]),
    .I1(a[10]),
    .LO(sig00000131)
  );
  XORCY   blk0000000d (
    .CI(sig00000182),
    .LI(sig000000e1),
    .O(sig000001d7)
  );
  MUXCY   blk0000000e (
    .CI(sig00000182),
    .DI(sig00000130),
    .S(sig000000e1),
    .O(sig00000183)
  );
  MULT_AND   blk0000000f (
    .I0(b[10]),
    .I1(a[9]),
    .LO(sig00000130)
  );
  XORCY   blk00000010 (
    .CI(sig00000181),
    .LI(sig000000e0),
    .O(sig000001d6)
  );
  MUXCY   blk00000011 (
    .CI(sig00000181),
    .DI(sig0000012f),
    .S(sig000000e0),
    .O(sig00000182)
  );
  MULT_AND   blk00000012 (
    .I0(b[10]),
    .I1(a[8]),
    .LO(sig0000012f)
  );
  XORCY   blk00000013 (
    .CI(sig00000180),
    .LI(sig000000df),
    .O(sig000001d5)
  );
  MUXCY   blk00000014 (
    .CI(sig00000180),
    .DI(sig0000012e),
    .S(sig000000df),
    .O(sig00000181)
  );
  MULT_AND   blk00000015 (
    .I0(b[10]),
    .I1(a[7]),
    .LO(sig0000012e)
  );
  XORCY   blk00000016 (
    .CI(sig0000017f),
    .LI(sig000000de),
    .O(sig000001d4)
  );
  MUXCY   blk00000017 (
    .CI(sig0000017f),
    .DI(sig0000012d),
    .S(sig000000de),
    .O(sig00000180)
  );
  MULT_AND   blk00000018 (
    .I0(b[10]),
    .I1(a[6]),
    .LO(sig0000012d)
  );
  XORCY   blk00000019 (
    .CI(sig0000017e),
    .LI(sig000000dd),
    .O(sig000001d3)
  );
  MUXCY   blk0000001a (
    .CI(sig0000017e),
    .DI(sig0000012b),
    .S(sig000000dd),
    .O(sig0000017f)
  );
  MULT_AND   blk0000001b (
    .I0(b[10]),
    .I1(a[5]),
    .LO(sig0000012b)
  );
  XORCY   blk0000001c (
    .CI(sig0000017d),
    .LI(sig000000dc),
    .O(sig000001d2)
  );
  MUXCY   blk0000001d (
    .CI(sig0000017d),
    .DI(sig0000012a),
    .S(sig000000dc),
    .O(sig0000017e)
  );
  MULT_AND   blk0000001e (
    .I0(b[10]),
    .I1(a[4]),
    .LO(sig0000012a)
  );
  XORCY   blk0000001f (
    .CI(sig0000017c),
    .LI(sig000000db),
    .O(sig000001d1)
  );
  MUXCY   blk00000020 (
    .CI(sig0000017c),
    .DI(sig00000129),
    .S(sig000000db),
    .O(sig0000017d)
  );
  MULT_AND   blk00000021 (
    .I0(b[10]),
    .I1(a[3]),
    .LO(sig00000129)
  );
  XORCY   blk00000022 (
    .CI(sig0000017b),
    .LI(sig000000da),
    .O(sig000001d0)
  );
  MUXCY   blk00000023 (
    .CI(sig0000017b),
    .DI(sig00000128),
    .S(sig000000da),
    .O(sig0000017c)
  );
  MULT_AND   blk00000024 (
    .I0(b[10]),
    .I1(a[2]),
    .LO(sig00000128)
  );
  XORCY   blk00000025 (
    .CI(sig00000177),
    .LI(sig000000d9),
    .O(sig000001cf)
  );
  MUXCY   blk00000026 (
    .CI(sig00000177),
    .DI(sig00000127),
    .S(sig000000d9),
    .O(sig0000017b)
  );
  MULT_AND   blk00000027 (
    .I0(b[10]),
    .I1(a[1]),
    .LO(sig00000127)
  );
  XORCY   blk00000028 (
    .CI(sig00000002),
    .LI(sig000000d7),
    .O(sig000001ca)
  );
  MUXCY   blk00000029 (
    .CI(sig00000002),
    .DI(sig00000126),
    .S(sig000000d7),
    .O(sig00000177)
  );
  MULT_AND   blk0000002a (
    .I0(b[10]),
    .I1(a[0]),
    .LO(sig00000126)
  );
  XORCY   blk0000002b (
    .CI(sig0000016d),
    .LI(sig000000d5),
    .O(sig000001c0)
  );
  XORCY   blk0000002c (
    .CI(sig0000016c),
    .LI(sig000000d6),
    .O(sig000001bf)
  );
  MUXCY   blk0000002d (
    .CI(sig0000016c),
    .DI(sig00000125),
    .S(sig000000d6),
    .O(sig0000016d)
  );
  MULT_AND   blk0000002e (
    .I0(b[9]),
    .I1(a[11]),
    .LO(sig00000125)
  );
  XORCY   blk0000002f (
    .CI(sig0000016b),
    .LI(sig000000d4),
    .O(sig000001be)
  );
  MUXCY   blk00000030 (
    .CI(sig0000016b),
    .DI(sig00000124),
    .S(sig000000d4),
    .O(sig0000016c)
  );
  MULT_AND   blk00000031 (
    .I0(b[9]),
    .I1(a[10]),
    .LO(sig00000124)
  );
  XORCY   blk00000032 (
    .CI(sig00000176),
    .LI(sig000000d3),
    .O(sig000001bd)
  );
  MUXCY   blk00000033 (
    .CI(sig00000176),
    .DI(sig00000123),
    .S(sig000000d3),
    .O(sig0000016b)
  );
  MULT_AND   blk00000034 (
    .I0(b[9]),
    .I1(a[9]),
    .LO(sig00000123)
  );
  XORCY   blk00000035 (
    .CI(sig00000175),
    .LI(sig000000d2),
    .O(sig000001c9)
  );
  MUXCY   blk00000036 (
    .CI(sig00000175),
    .DI(sig00000122),
    .S(sig000000d2),
    .O(sig00000176)
  );
  MULT_AND   blk00000037 (
    .I0(b[9]),
    .I1(a[8]),
    .LO(sig00000122)
  );
  XORCY   blk00000038 (
    .CI(sig00000174),
    .LI(sig000000d1),
    .O(sig000001c8)
  );
  MUXCY   blk00000039 (
    .CI(sig00000174),
    .DI(sig00000120),
    .S(sig000000d1),
    .O(sig00000175)
  );
  MULT_AND   blk0000003a (
    .I0(b[9]),
    .I1(a[7]),
    .LO(sig00000120)
  );
  XORCY   blk0000003b (
    .CI(sig00000173),
    .LI(sig000000d0),
    .O(sig000001c7)
  );
  MUXCY   blk0000003c (
    .CI(sig00000173),
    .DI(sig0000011f),
    .S(sig000000d0),
    .O(sig00000174)
  );
  MULT_AND   blk0000003d (
    .I0(b[9]),
    .I1(a[6]),
    .LO(sig0000011f)
  );
  XORCY   blk0000003e (
    .CI(sig00000172),
    .LI(sig000000cf),
    .O(sig000001c6)
  );
  MUXCY   blk0000003f (
    .CI(sig00000172),
    .DI(sig0000011e),
    .S(sig000000cf),
    .O(sig00000173)
  );
  MULT_AND   blk00000040 (
    .I0(b[9]),
    .I1(a[5]),
    .LO(sig0000011e)
  );
  XORCY   blk00000041 (
    .CI(sig00000171),
    .LI(sig000000ce),
    .O(sig000001c5)
  );
  MUXCY   blk00000042 (
    .CI(sig00000171),
    .DI(sig0000011d),
    .S(sig000000ce),
    .O(sig00000172)
  );
  MULT_AND   blk00000043 (
    .I0(b[9]),
    .I1(a[4]),
    .LO(sig0000011d)
  );
  XORCY   blk00000044 (
    .CI(sig00000170),
    .LI(sig000000cc),
    .O(sig000001c4)
  );
  MUXCY   blk00000045 (
    .CI(sig00000170),
    .DI(sig0000011c),
    .S(sig000000cc),
    .O(sig00000171)
  );
  MULT_AND   blk00000046 (
    .I0(b[9]),
    .I1(a[3]),
    .LO(sig0000011c)
  );
  XORCY   blk00000047 (
    .CI(sig0000016f),
    .LI(sig000000cb),
    .O(sig000001c3)
  );
  MUXCY   blk00000048 (
    .CI(sig0000016f),
    .DI(sig0000011b),
    .S(sig000000cb),
    .O(sig00000170)
  );
  MULT_AND   blk00000049 (
    .I0(b[9]),
    .I1(a[2]),
    .LO(sig0000011b)
  );
  XORCY   blk0000004a (
    .CI(sig0000016e),
    .LI(sig000000ca),
    .O(sig000001c2)
  );
  MUXCY   blk0000004b (
    .CI(sig0000016e),
    .DI(sig0000011a),
    .S(sig000000ca),
    .O(sig0000016f)
  );
  MULT_AND   blk0000004c (
    .I0(b[9]),
    .I1(a[1]),
    .LO(sig0000011a)
  );
  XORCY   blk0000004d (
    .CI(sig0000016a),
    .LI(sig000000c9),
    .O(sig000001c1)
  );
  MUXCY   blk0000004e (
    .CI(sig0000016a),
    .DI(sig00000119),
    .S(sig000000c9),
    .O(sig0000016e)
  );
  MULT_AND   blk0000004f (
    .I0(b[9]),
    .I1(a[0]),
    .LO(sig00000119)
  );
  XORCY   blk00000050 (
    .CI(sig00000001),
    .LI(sig000000c8),
    .O(sig000001bc)
  );
  MUXCY   blk00000051 (
    .CI(sig00000001),
    .DI(sig00000118),
    .S(sig000000c8),
    .O(sig0000016a)
  );
  MULT_AND   blk00000052 (
    .I0(b[8]),
    .I1(a[0]),
    .LO(sig00000118)
  );
  XORCY   blk00000053 (
    .CI(sig00000160),
    .LI(sig000000c6),
    .O(sig000001b2)
  );
  XORCY   blk00000054 (
    .CI(sig0000015f),
    .LI(sig000000c7),
    .O(sig000001b1)
  );
  MUXCY   blk00000055 (
    .CI(sig0000015f),
    .DI(sig00000117),
    .S(sig000000c7),
    .O(sig00000160)
  );
  MULT_AND   blk00000056 (
    .I0(b[7]),
    .I1(a[11]),
    .LO(sig00000117)
  );
  XORCY   blk00000057 (
    .CI(sig0000015e),
    .LI(sig000000c5),
    .O(sig000001b0)
  );
  MUXCY   blk00000058 (
    .CI(sig0000015e),
    .DI(sig00000115),
    .S(sig000000c5),
    .O(sig0000015f)
  );
  MULT_AND   blk00000059 (
    .I0(b[7]),
    .I1(a[10]),
    .LO(sig00000115)
  );
  XORCY   blk0000005a (
    .CI(sig00000169),
    .LI(sig000000c4),
    .O(sig000001af)
  );
  MUXCY   blk0000005b (
    .CI(sig00000169),
    .DI(sig00000114),
    .S(sig000000c4),
    .O(sig0000015e)
  );
  MULT_AND   blk0000005c (
    .I0(b[7]),
    .I1(a[9]),
    .LO(sig00000114)
  );
  XORCY   blk0000005d (
    .CI(sig00000168),
    .LI(sig000000c3),
    .O(sig000001bb)
  );
  MUXCY   blk0000005e (
    .CI(sig00000168),
    .DI(sig00000113),
    .S(sig000000c3),
    .O(sig00000169)
  );
  MULT_AND   blk0000005f (
    .I0(b[7]),
    .I1(a[8]),
    .LO(sig00000113)
  );
  XORCY   blk00000060 (
    .CI(sig00000167),
    .LI(sig000000c1),
    .O(sig000001ba)
  );
  MUXCY   blk00000061 (
    .CI(sig00000167),
    .DI(sig00000112),
    .S(sig000000c1),
    .O(sig00000168)
  );
  MULT_AND   blk00000062 (
    .I0(b[7]),
    .I1(a[7]),
    .LO(sig00000112)
  );
  XORCY   blk00000063 (
    .CI(sig00000166),
    .LI(sig000000c0),
    .O(sig000001b9)
  );
  MUXCY   blk00000064 (
    .CI(sig00000166),
    .DI(sig00000111),
    .S(sig000000c0),
    .O(sig00000167)
  );
  MULT_AND   blk00000065 (
    .I0(b[7]),
    .I1(a[6]),
    .LO(sig00000111)
  );
  XORCY   blk00000066 (
    .CI(sig00000165),
    .LI(sig000000bf),
    .O(sig000001b8)
  );
  MUXCY   blk00000067 (
    .CI(sig00000165),
    .DI(sig00000110),
    .S(sig000000bf),
    .O(sig00000166)
  );
  MULT_AND   blk00000068 (
    .I0(b[7]),
    .I1(a[5]),
    .LO(sig00000110)
  );
  XORCY   blk00000069 (
    .CI(sig00000164),
    .LI(sig000000be),
    .O(sig000001b7)
  );
  MUXCY   blk0000006a (
    .CI(sig00000164),
    .DI(sig0000010f),
    .S(sig000000be),
    .O(sig00000165)
  );
  MULT_AND   blk0000006b (
    .I0(b[7]),
    .I1(a[4]),
    .LO(sig0000010f)
  );
  XORCY   blk0000006c (
    .CI(sig00000163),
    .LI(sig000000bd),
    .O(sig000001b6)
  );
  MUXCY   blk0000006d (
    .CI(sig00000163),
    .DI(sig0000010e),
    .S(sig000000bd),
    .O(sig00000164)
  );
  MULT_AND   blk0000006e (
    .I0(b[7]),
    .I1(a[3]),
    .LO(sig0000010e)
  );
  XORCY   blk0000006f (
    .CI(sig00000162),
    .LI(sig000000bc),
    .O(sig000001b5)
  );
  MUXCY   blk00000070 (
    .CI(sig00000162),
    .DI(sig0000010d),
    .S(sig000000bc),
    .O(sig00000163)
  );
  MULT_AND   blk00000071 (
    .I0(b[7]),
    .I1(a[2]),
    .LO(sig0000010d)
  );
  XORCY   blk00000072 (
    .CI(sig00000161),
    .LI(sig000000bb),
    .O(sig000001b4)
  );
  MUXCY   blk00000073 (
    .CI(sig00000161),
    .DI(sig0000010c),
    .S(sig000000bb),
    .O(sig00000162)
  );
  MULT_AND   blk00000074 (
    .I0(b[7]),
    .I1(a[1]),
    .LO(sig0000010c)
  );
  XORCY   blk00000075 (
    .CI(sig0000015d),
    .LI(sig000000ba),
    .O(sig000001b3)
  );
  MUXCY   blk00000076 (
    .CI(sig0000015d),
    .DI(sig0000010a),
    .S(sig000000ba),
    .O(sig00000161)
  );
  MULT_AND   blk00000077 (
    .I0(b[7]),
    .I1(a[0]),
    .LO(sig0000010a)
  );
  XORCY   blk00000078 (
    .CI(sig00000001),
    .LI(sig000000b9),
    .O(sig000001ae)
  );
  MUXCY   blk00000079 (
    .CI(sig00000001),
    .DI(sig00000109),
    .S(sig000000b9),
    .O(sig0000015d)
  );
  MULT_AND   blk0000007a (
    .I0(b[6]),
    .I1(a[0]),
    .LO(sig00000109)
  );
  XORCY   blk0000007b (
    .CI(sig00000153),
    .LI(sig000000b6),
    .O(sig000001a4)
  );
  XORCY   blk0000007c (
    .CI(sig00000152),
    .LI(sig000000b7),
    .O(sig000001a3)
  );
  MUXCY   blk0000007d (
    .CI(sig00000152),
    .DI(sig00000108),
    .S(sig000000b7),
    .O(sig00000153)
  );
  MULT_AND   blk0000007e (
    .I0(b[5]),
    .I1(a[11]),
    .LO(sig00000108)
  );
  XORCY   blk0000007f (
    .CI(sig00000151),
    .LI(sig000000b5),
    .O(sig000001a2)
  );
  MUXCY   blk00000080 (
    .CI(sig00000151),
    .DI(sig00000107),
    .S(sig000000b5),
    .O(sig00000152)
  );
  MULT_AND   blk00000081 (
    .I0(b[5]),
    .I1(a[10]),
    .LO(sig00000107)
  );
  XORCY   blk00000082 (
    .CI(sig0000015c),
    .LI(sig000000b4),
    .O(sig000001a1)
  );
  MUXCY   blk00000083 (
    .CI(sig0000015c),
    .DI(sig00000106),
    .S(sig000000b4),
    .O(sig00000151)
  );
  MULT_AND   blk00000084 (
    .I0(b[5]),
    .I1(a[9]),
    .LO(sig00000106)
  );
  XORCY   blk00000085 (
    .CI(sig0000015b),
    .LI(sig000000b3),
    .O(sig000001ad)
  );
  MUXCY   blk00000086 (
    .CI(sig0000015b),
    .DI(sig00000105),
    .S(sig000000b3),
    .O(sig0000015c)
  );
  MULT_AND   blk00000087 (
    .I0(b[5]),
    .I1(a[8]),
    .LO(sig00000105)
  );
  XORCY   blk00000088 (
    .CI(sig0000015a),
    .LI(sig000000b2),
    .O(sig000001ac)
  );
  MUXCY   blk00000089 (
    .CI(sig0000015a),
    .DI(sig00000104),
    .S(sig000000b2),
    .O(sig0000015b)
  );
  MULT_AND   blk0000008a (
    .I0(b[5]),
    .I1(a[7]),
    .LO(sig00000104)
  );
  XORCY   blk0000008b (
    .CI(sig00000159),
    .LI(sig000000b1),
    .O(sig000001ab)
  );
  MUXCY   blk0000008c (
    .CI(sig00000159),
    .DI(sig00000103),
    .S(sig000000b1),
    .O(sig0000015a)
  );
  MULT_AND   blk0000008d (
    .I0(b[5]),
    .I1(a[6]),
    .LO(sig00000103)
  );
  XORCY   blk0000008e (
    .CI(sig00000158),
    .LI(sig000000b0),
    .O(sig000001aa)
  );
  MUXCY   blk0000008f (
    .CI(sig00000158),
    .DI(sig00000102),
    .S(sig000000b0),
    .O(sig00000159)
  );
  MULT_AND   blk00000090 (
    .I0(b[5]),
    .I1(a[5]),
    .LO(sig00000102)
  );
  XORCY   blk00000091 (
    .CI(sig00000157),
    .LI(sig000000af),
    .O(sig000001a9)
  );
  MUXCY   blk00000092 (
    .CI(sig00000157),
    .DI(sig00000101),
    .S(sig000000af),
    .O(sig00000158)
  );
  MULT_AND   blk00000093 (
    .I0(b[5]),
    .I1(a[4]),
    .LO(sig00000101)
  );
  XORCY   blk00000094 (
    .CI(sig00000156),
    .LI(sig000000ae),
    .O(sig000001a8)
  );
  MUXCY   blk00000095 (
    .CI(sig00000156),
    .DI(sig000000ff),
    .S(sig000000ae),
    .O(sig00000157)
  );
  MULT_AND   blk00000096 (
    .I0(b[5]),
    .I1(a[3]),
    .LO(sig000000ff)
  );
  XORCY   blk00000097 (
    .CI(sig00000155),
    .LI(sig000000ad),
    .O(sig000001a7)
  );
  MUXCY   blk00000098 (
    .CI(sig00000155),
    .DI(sig000000fe),
    .S(sig000000ad),
    .O(sig00000156)
  );
  MULT_AND   blk00000099 (
    .I0(b[5]),
    .I1(a[2]),
    .LO(sig000000fe)
  );
  XORCY   blk0000009a (
    .CI(sig00000154),
    .LI(sig000000ab),
    .O(sig000001a6)
  );
  MUXCY   blk0000009b (
    .CI(sig00000154),
    .DI(sig000000fd),
    .S(sig000000ab),
    .O(sig00000155)
  );
  MULT_AND   blk0000009c (
    .I0(b[5]),
    .I1(a[1]),
    .LO(sig000000fd)
  );
  XORCY   blk0000009d (
    .CI(sig00000150),
    .LI(sig000000aa),
    .O(sig000001a5)
  );
  MUXCY   blk0000009e (
    .CI(sig00000150),
    .DI(sig000000fc),
    .S(sig000000aa),
    .O(sig00000154)
  );
  MULT_AND   blk0000009f (
    .I0(b[5]),
    .I1(a[0]),
    .LO(sig000000fc)
  );
  XORCY   blk000000a0 (
    .CI(sig00000001),
    .LI(sig000000a9),
    .O(sig000001a0)
  );
  MUXCY   blk000000a1 (
    .CI(sig00000001),
    .DI(sig000000fb),
    .S(sig000000a9),
    .O(sig00000150)
  );
  MULT_AND   blk000000a2 (
    .I0(b[4]),
    .I1(a[0]),
    .LO(sig000000fb)
  );
  XORCY   blk000000a3 (
    .CI(sig00000146),
    .LI(sig000000a7),
    .O(sig00000196)
  );
  XORCY   blk000000a4 (
    .CI(sig00000145),
    .LI(sig000000a8),
    .O(sig00000195)
  );
  MUXCY   blk000000a5 (
    .CI(sig00000145),
    .DI(sig000000fa),
    .S(sig000000a8),
    .O(sig00000146)
  );
  MULT_AND   blk000000a6 (
    .I0(b[3]),
    .I1(a[11]),
    .LO(sig000000fa)
  );
  XORCY   blk000000a7 (
    .CI(sig00000144),
    .LI(sig000000a6),
    .O(sig00000194)
  );
  MUXCY   blk000000a8 (
    .CI(sig00000144),
    .DI(sig000000f9),
    .S(sig000000a6),
    .O(sig00000145)
  );
  MULT_AND   blk000000a9 (
    .I0(b[3]),
    .I1(a[10]),
    .LO(sig000000f9)
  );
  XORCY   blk000000aa (
    .CI(sig0000014f),
    .LI(sig000000a5),
    .O(sig00000193)
  );
  MUXCY   blk000000ab (
    .CI(sig0000014f),
    .DI(sig000000f8),
    .S(sig000000a5),
    .O(sig00000144)
  );
  MULT_AND   blk000000ac (
    .I0(b[3]),
    .I1(a[9]),
    .LO(sig000000f8)
  );
  XORCY   blk000000ad (
    .CI(sig0000014e),
    .LI(sig000000a4),
    .O(sig0000019f)
  );
  MUXCY   blk000000ae (
    .CI(sig0000014e),
    .DI(sig000000f7),
    .S(sig000000a4),
    .O(sig0000014f)
  );
  MULT_AND   blk000000af (
    .I0(b[3]),
    .I1(a[8]),
    .LO(sig000000f7)
  );
  XORCY   blk000000b0 (
    .CI(sig0000014d),
    .LI(sig000000a3),
    .O(sig0000019e)
  );
  MUXCY   blk000000b1 (
    .CI(sig0000014d),
    .DI(sig000000f6),
    .S(sig000000a3),
    .O(sig0000014e)
  );
  MULT_AND   blk000000b2 (
    .I0(b[3]),
    .I1(a[7]),
    .LO(sig000000f6)
  );
  XORCY   blk000000b3 (
    .CI(sig0000014c),
    .LI(sig000000a2),
    .O(sig0000019d)
  );
  MUXCY   blk000000b4 (
    .CI(sig0000014c),
    .DI(sig000000f4),
    .S(sig000000a2),
    .O(sig0000014d)
  );
  MULT_AND   blk000000b5 (
    .I0(b[3]),
    .I1(a[6]),
    .LO(sig000000f4)
  );
  XORCY   blk000000b6 (
    .CI(sig0000014b),
    .LI(sig000000a0),
    .O(sig0000019c)
  );
  MUXCY   blk000000b7 (
    .CI(sig0000014b),
    .DI(sig000000f3),
    .S(sig000000a0),
    .O(sig0000014c)
  );
  MULT_AND   blk000000b8 (
    .I0(b[3]),
    .I1(a[5]),
    .LO(sig000000f3)
  );
  XORCY   blk000000b9 (
    .CI(sig0000014a),
    .LI(sig0000009f),
    .O(sig0000019b)
  );
  MUXCY   blk000000ba (
    .CI(sig0000014a),
    .DI(sig000000f2),
    .S(sig0000009f),
    .O(sig0000014b)
  );
  MULT_AND   blk000000bb (
    .I0(b[3]),
    .I1(a[4]),
    .LO(sig000000f2)
  );
  XORCY   blk000000bc (
    .CI(sig00000149),
    .LI(sig0000009e),
    .O(sig0000019a)
  );
  MUXCY   blk000000bd (
    .CI(sig00000149),
    .DI(sig000000f1),
    .S(sig0000009e),
    .O(sig0000014a)
  );
  MULT_AND   blk000000be (
    .I0(b[3]),
    .I1(a[3]),
    .LO(sig000000f1)
  );
  XORCY   blk000000bf (
    .CI(sig00000148),
    .LI(sig0000009d),
    .O(sig00000199)
  );
  MUXCY   blk000000c0 (
    .CI(sig00000148),
    .DI(sig000000f0),
    .S(sig0000009d),
    .O(sig00000149)
  );
  MULT_AND   blk000000c1 (
    .I0(b[3]),
    .I1(a[2]),
    .LO(sig000000f0)
  );
  XORCY   blk000000c2 (
    .CI(sig00000147),
    .LI(sig0000009c),
    .O(sig00000198)
  );
  MUXCY   blk000000c3 (
    .CI(sig00000147),
    .DI(sig000000ef),
    .S(sig0000009c),
    .O(sig00000148)
  );
  MULT_AND   blk000000c4 (
    .I0(b[3]),
    .I1(a[1]),
    .LO(sig000000ef)
  );
  XORCY   blk000000c5 (
    .CI(sig00000143),
    .LI(sig0000009b),
    .O(sig00000197)
  );
  MUXCY   blk000000c6 (
    .CI(sig00000143),
    .DI(sig000000ee),
    .S(sig0000009b),
    .O(sig00000147)
  );
  MULT_AND   blk000000c7 (
    .I0(b[3]),
    .I1(a[0]),
    .LO(sig000000ee)
  );
  XORCY   blk000000c8 (
    .CI(sig00000001),
    .LI(sig0000009a),
    .O(sig00000192)
  );
  MUXCY   blk000000c9 (
    .CI(sig00000001),
    .DI(sig000000ed),
    .S(sig0000009a),
    .O(sig00000143)
  );
  MULT_AND   blk000000ca (
    .I0(b[2]),
    .I1(a[0]),
    .LO(sig000000ed)
  );
  XORCY   blk000000cb (
    .CI(sig00000139),
    .LI(sig00000098),
    .O(sig00000188)
  );
  XORCY   blk000000cc (
    .CI(sig00000138),
    .LI(sig00000099),
    .O(sig00000187)
  );
  MUXCY   blk000000cd (
    .CI(sig00000138),
    .DI(sig000000ec),
    .S(sig00000099),
    .O(sig00000139)
  );
  MULT_AND   blk000000ce (
    .I0(b[1]),
    .I1(a[11]),
    .LO(sig000000ec)
  );
  XORCY   blk000000cf (
    .CI(sig00000137),
    .LI(sig00000097),
    .O(sig00000186)
  );
  MUXCY   blk000000d0 (
    .CI(sig00000137),
    .DI(sig000000eb),
    .S(sig00000097),
    .O(sig00000138)
  );
  MULT_AND   blk000000d1 (
    .I0(b[1]),
    .I1(a[10]),
    .LO(sig000000eb)
  );
  XORCY   blk000000d2 (
    .CI(sig00000142),
    .LI(sig000000e7),
    .O(sig00000185)
  );
  MUXCY   blk000000d3 (
    .CI(sig00000142),
    .DI(sig00000135),
    .S(sig000000e7),
    .O(sig00000137)
  );
  MULT_AND   blk000000d4 (
    .I0(b[1]),
    .I1(a[9]),
    .LO(sig00000135)
  );
  XORCY   blk000000d5 (
    .CI(sig00000141),
    .LI(sig000000e3),
    .O(sig00000191)
  );
  MUXCY   blk000000d6 (
    .CI(sig00000141),
    .DI(sig00000134),
    .S(sig000000e3),
    .O(sig00000142)
  );
  MULT_AND   blk000000d7 (
    .I0(b[1]),
    .I1(a[8]),
    .LO(sig00000134)
  );
  XORCY   blk000000d8 (
    .CI(sig00000140),
    .LI(sig000000d8),
    .O(sig00000190)
  );
  MUXCY   blk000000d9 (
    .CI(sig00000140),
    .DI(sig0000012c),
    .S(sig000000d8),
    .O(sig00000141)
  );
  MULT_AND   blk000000da (
    .I0(b[1]),
    .I1(a[7]),
    .LO(sig0000012c)
  );
  XORCY   blk000000db (
    .CI(sig0000013f),
    .LI(sig000000cd),
    .O(sig0000018f)
  );
  MUXCY   blk000000dc (
    .CI(sig0000013f),
    .DI(sig00000121),
    .S(sig000000cd),
    .O(sig00000140)
  );
  MULT_AND   blk000000dd (
    .I0(b[1]),
    .I1(a[6]),
    .LO(sig00000121)
  );
  XORCY   blk000000de (
    .CI(sig0000013e),
    .LI(sig000000c2),
    .O(sig0000018e)
  );
  MUXCY   blk000000df (
    .CI(sig0000013e),
    .DI(sig00000116),
    .S(sig000000c2),
    .O(sig0000013f)
  );
  MULT_AND   blk000000e0 (
    .I0(b[1]),
    .I1(a[5]),
    .LO(sig00000116)
  );
  XORCY   blk000000e1 (
    .CI(sig0000013d),
    .LI(sig000000b8),
    .O(sig0000018d)
  );
  MUXCY   blk000000e2 (
    .CI(sig0000013d),
    .DI(sig0000010b),
    .S(sig000000b8),
    .O(sig0000013e)
  );
  MULT_AND   blk000000e3 (
    .I0(b[1]),
    .I1(a[4]),
    .LO(sig0000010b)
  );
  XORCY   blk000000e4 (
    .CI(sig0000013c),
    .LI(sig000000ac),
    .O(sig0000018c)
  );
  MUXCY   blk000000e5 (
    .CI(sig0000013c),
    .DI(sig00000100),
    .S(sig000000ac),
    .O(sig0000013d)
  );
  MULT_AND   blk000000e6 (
    .I0(b[1]),
    .I1(a[3]),
    .LO(sig00000100)
  );
  XORCY   blk000000e7 (
    .CI(sig0000013b),
    .LI(sig000000a1),
    .O(sig0000018b)
  );
  MUXCY   blk000000e8 (
    .CI(sig0000013b),
    .DI(sig000000f5),
    .S(sig000000a1),
    .O(sig0000013c)
  );
  MULT_AND   blk000000e9 (
    .I0(b[1]),
    .I1(a[2]),
    .LO(sig000000f5)
  );
  XORCY   blk000000ea (
    .CI(sig0000013a),
    .LI(sig00000096),
    .O(sig0000018a)
  );
  MUXCY   blk000000eb (
    .CI(sig0000013a),
    .DI(sig000000ea),
    .S(sig00000096),
    .O(sig0000013b)
  );
  MULT_AND   blk000000ec (
    .I0(b[1]),
    .I1(a[1]),
    .LO(sig000000ea)
  );
  XORCY   blk000000ed (
    .CI(sig00000136),
    .LI(sig00000095),
    .O(sig00000189)
  );
  MUXCY   blk000000ee (
    .CI(sig00000136),
    .DI(sig000000e9),
    .S(sig00000095),
    .O(sig0000013a)
  );
  MULT_AND   blk000000ef (
    .I0(b[1]),
    .I1(a[0]),
    .LO(sig000000e9)
  );
  XORCY   blk000000f0 (
    .CI(sig00000001),
    .LI(sig00000094),
    .O(sig00000184)
  );
  MUXCY   blk000000f1 (
    .CI(sig00000001),
    .DI(sig000000e8),
    .S(sig00000094),
    .O(sig00000136)
  );
  MULT_AND   blk000000f2 (
    .I0(b[0]),
    .I1(a[0]),
    .LO(sig000000e8)
  );
  XORCY   blk000000f3 (
    .CI(sig00000029),
    .LI(sig00000039),
    .O(sig000001f6)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000f4 (
    .I0(sig000001e2),
    .I1(sig0000021a),
    .O(sig00000039)
  );
  XORCY   blk000000f5 (
    .CI(sig00000028),
    .LI(sig00000038),
    .O(sig000001f5)
  );
  MUXCY   blk000000f6 (
    .CI(sig00000028),
    .DI(sig000001e2),
    .S(sig00000038),
    .O(sig00000029)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000f7 (
    .I0(sig000001e2),
    .I1(sig00000219),
    .O(sig00000038)
  );
  XORCY   blk000000f8 (
    .CI(sig00000027),
    .LI(sig00000037),
    .O(sig000001f4)
  );
  MUXCY   blk000000f9 (
    .CI(sig00000027),
    .DI(sig000001e2),
    .S(sig00000037),
    .O(sig00000028)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000fa (
    .I0(sig000001e2),
    .I1(sig00000218),
    .O(sig00000037)
  );
  XORCY   blk000000fb (
    .CI(sig00000026),
    .LI(sig00000036),
    .O(sig000001f3)
  );
  MUXCY   blk000000fc (
    .CI(sig00000026),
    .DI(sig000001e2),
    .S(sig00000036),
    .O(sig00000027)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000fd (
    .I0(sig000001e2),
    .I1(sig00000217),
    .O(sig00000036)
  );
  XORCY   blk000000fe (
    .CI(sig00000025),
    .LI(sig00000035),
    .O(sig000001f2)
  );
  MUXCY   blk000000ff (
    .CI(sig00000025),
    .DI(sig000001e1),
    .S(sig00000035),
    .O(sig00000026)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000100 (
    .I0(sig000001e1),
    .I1(sig00000216),
    .O(sig00000035)
  );
  XORCY   blk00000101 (
    .CI(sig00000032),
    .LI(sig00000034),
    .O(sig000001f1)
  );
  MUXCY   blk00000102 (
    .CI(sig00000032),
    .DI(sig000001e0),
    .S(sig00000034),
    .O(sig00000025)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000103 (
    .I0(sig000001e0),
    .I1(sig00000215),
    .O(sig00000034)
  );
  XORCY   blk00000104 (
    .CI(sig00000031),
    .LI(sig00000042),
    .O(sig000001f0)
  );
  MUXCY   blk00000105 (
    .CI(sig00000031),
    .DI(sig000001df),
    .S(sig00000042),
    .O(sig00000032)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000106 (
    .I0(sig000001df),
    .I1(sig00000222),
    .O(sig00000042)
  );
  XORCY   blk00000107 (
    .CI(sig00000030),
    .LI(sig00000041),
    .O(sig000001ef)
  );
  MUXCY   blk00000108 (
    .CI(sig00000030),
    .DI(sig000001de),
    .S(sig00000041),
    .O(sig00000031)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000109 (
    .I0(sig000001de),
    .I1(sig00000221),
    .O(sig00000041)
  );
  XORCY   blk0000010a (
    .CI(sig0000002f),
    .LI(sig00000040),
    .O(sig000001ee)
  );
  MUXCY   blk0000010b (
    .CI(sig0000002f),
    .DI(sig000001dd),
    .S(sig00000040),
    .O(sig00000030)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000010c (
    .I0(sig000001dd),
    .I1(sig00000220),
    .O(sig00000040)
  );
  XORCY   blk0000010d (
    .CI(sig0000002e),
    .LI(sig0000003f),
    .O(sig000001ed)
  );
  MUXCY   blk0000010e (
    .CI(sig0000002e),
    .DI(sig000001dc),
    .S(sig0000003f),
    .O(sig0000002f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000010f (
    .I0(sig000001dc),
    .I1(sig0000021f),
    .O(sig0000003f)
  );
  XORCY   blk00000110 (
    .CI(sig0000002d),
    .LI(sig0000003e),
    .O(sig000001ec)
  );
  MUXCY   blk00000111 (
    .CI(sig0000002d),
    .DI(sig000001db),
    .S(sig0000003e),
    .O(sig0000002e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000112 (
    .I0(sig000001db),
    .I1(sig0000021e),
    .O(sig0000003e)
  );
  XORCY   blk00000113 (
    .CI(sig0000002c),
    .LI(sig0000003d),
    .O(sig000001eb)
  );
  MUXCY   blk00000114 (
    .CI(sig0000002c),
    .DI(sig000001da),
    .S(sig0000003d),
    .O(sig0000002d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000115 (
    .I0(sig000001da),
    .I1(sig0000021d),
    .O(sig0000003d)
  );
  XORCY   blk00000116 (
    .CI(sig0000002b),
    .LI(sig0000003c),
    .O(sig000001ea)
  );
  MUXCY   blk00000117 (
    .CI(sig0000002b),
    .DI(sig000001d9),
    .S(sig0000003c),
    .O(sig0000002c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000118 (
    .I0(sig000001d9),
    .I1(sig0000021c),
    .O(sig0000003c)
  );
  XORCY   blk00000119 (
    .CI(sig0000002a),
    .LI(sig0000003b),
    .O(sig000001e9)
  );
  MUXCY   blk0000011a (
    .CI(sig0000002a),
    .DI(sig000001d8),
    .S(sig0000003b),
    .O(sig0000002b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000011b (
    .I0(sig000001d8),
    .I1(sig0000021b),
    .O(sig0000003b)
  );
  XORCY   blk0000011c (
    .CI(sig00000024),
    .LI(sig0000003a),
    .O(sig000001f8)
  );
  MUXCY   blk0000011d (
    .CI(sig00000024),
    .DI(sig000001e8),
    .S(sig0000003a),
    .O(sig0000002a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000011e (
    .I0(sig000001e8),
    .I1(sig000001c1),
    .O(sig0000003a)
  );
  XORCY   blk0000011f (
    .CI(sig00000001),
    .LI(sig00000033),
    .O(sig000001f7)
  );
  MUXCY   blk00000120 (
    .CI(sig00000001),
    .DI(sig000001e7),
    .S(sig00000033),
    .O(sig00000024)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000121 (
    .I0(sig000001e7),
    .I1(sig000001bc),
    .O(sig00000033)
  );
  XORCY   blk00000122 (
    .CI(sig00000009),
    .LI(sig0000001a),
    .O(sig000001e2)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000123 (
    .I0(sig000001fe),
    .I1(sig0000020c),
    .O(sig0000001a)
  );
  XORCY   blk00000124 (
    .CI(sig00000008),
    .LI(sig00000019),
    .O(sig000001e1)
  );
  MUXCY   blk00000125 (
    .CI(sig00000008),
    .DI(sig000001fe),
    .S(sig00000019),
    .O(sig00000009)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000126 (
    .I0(sig000001fe),
    .I1(sig0000020c),
    .O(sig00000019)
  );
  XORCY   blk00000127 (
    .CI(sig00000007),
    .LI(sig00000018),
    .O(sig000001e0)
  );
  MUXCY   blk00000128 (
    .CI(sig00000007),
    .DI(sig000001fe),
    .S(sig00000018),
    .O(sig00000008)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000129 (
    .I0(sig000001fe),
    .I1(sig0000020b),
    .O(sig00000018)
  );
  XORCY   blk0000012a (
    .CI(sig00000006),
    .LI(sig00000017),
    .O(sig000001df)
  );
  MUXCY   blk0000012b (
    .CI(sig00000006),
    .DI(sig000001fe),
    .S(sig00000017),
    .O(sig00000007)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000012c (
    .I0(sig000001fe),
    .I1(sig0000020a),
    .O(sig00000017)
  );
  XORCY   blk0000012d (
    .CI(sig00000005),
    .LI(sig00000016),
    .O(sig000001de)
  );
  MUXCY   blk0000012e (
    .CI(sig00000005),
    .DI(sig000001fe),
    .S(sig00000016),
    .O(sig00000006)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000012f (
    .I0(sig000001fe),
    .I1(sig00000209),
    .O(sig00000016)
  );
  XORCY   blk00000130 (
    .CI(sig00000004),
    .LI(sig00000015),
    .O(sig000001dd)
  );
  MUXCY   blk00000131 (
    .CI(sig00000004),
    .DI(sig000001fe),
    .S(sig00000015),
    .O(sig00000005)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000132 (
    .I0(sig000001fe),
    .I1(sig00000208),
    .O(sig00000015)
  );
  XORCY   blk00000133 (
    .CI(sig00000012),
    .LI(sig00000014),
    .O(sig000001dc)
  );
  MUXCY   blk00000134 (
    .CI(sig00000012),
    .DI(sig000001fd),
    .S(sig00000014),
    .O(sig00000004)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000135 (
    .I0(sig000001fd),
    .I1(sig00000207),
    .O(sig00000014)
  );
  XORCY   blk00000136 (
    .CI(sig00000011),
    .LI(sig00000023),
    .O(sig000001db)
  );
  MUXCY   blk00000137 (
    .CI(sig00000011),
    .DI(sig000001fc),
    .S(sig00000023),
    .O(sig00000012)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000138 (
    .I0(sig000001fc),
    .I1(sig00000214),
    .O(sig00000023)
  );
  XORCY   blk00000139 (
    .CI(sig00000010),
    .LI(sig00000022),
    .O(sig000001da)
  );
  MUXCY   blk0000013a (
    .CI(sig00000010),
    .DI(sig000001fb),
    .S(sig00000022),
    .O(sig00000011)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000013b (
    .I0(sig000001fb),
    .I1(sig00000213),
    .O(sig00000022)
  );
  XORCY   blk0000013c (
    .CI(sig0000000f),
    .LI(sig00000021),
    .O(sig000001d9)
  );
  MUXCY   blk0000013d (
    .CI(sig0000000f),
    .DI(sig000001fa),
    .S(sig00000021),
    .O(sig00000010)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000013e (
    .I0(sig000001fa),
    .I1(sig00000212),
    .O(sig00000021)
  );
  XORCY   blk0000013f (
    .CI(sig0000000e),
    .LI(sig00000020),
    .O(sig000001d8)
  );
  MUXCY   blk00000140 (
    .CI(sig0000000e),
    .DI(sig000001f9),
    .S(sig00000020),
    .O(sig0000000f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000141 (
    .I0(sig000001f9),
    .I1(sig00000211),
    .O(sig00000020)
  );
  XORCY   blk00000142 (
    .CI(sig0000000d),
    .LI(sig0000001f),
    .O(sig000001e8)
  );
  MUXCY   blk00000143 (
    .CI(sig0000000d),
    .DI(sig00000206),
    .S(sig0000001f),
    .O(sig0000000e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000144 (
    .I0(sig00000206),
    .I1(sig00000210),
    .O(sig0000001f)
  );
  XORCY   blk00000145 (
    .CI(sig0000000c),
    .LI(sig0000001e),
    .O(sig000001e7)
  );
  MUXCY   blk00000146 (
    .CI(sig0000000c),
    .DI(sig00000205),
    .S(sig0000001e),
    .O(sig0000000d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000147 (
    .I0(sig00000205),
    .I1(sig0000020f),
    .O(sig0000001e)
  );
  XORCY   blk00000148 (
    .CI(sig0000000b),
    .LI(sig0000001d),
    .O(sig000001e6)
  );
  MUXCY   blk00000149 (
    .CI(sig0000000b),
    .DI(sig00000204),
    .S(sig0000001d),
    .O(sig0000000c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000014a (
    .I0(sig00000204),
    .I1(sig0000020e),
    .O(sig0000001d)
  );
  XORCY   blk0000014b (
    .CI(sig0000000a),
    .LI(sig0000001c),
    .O(sig000001e5)
  );
  MUXCY   blk0000014c (
    .CI(sig0000000a),
    .DI(sig00000203),
    .S(sig0000001c),
    .O(sig0000000b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000014d (
    .I0(sig00000203),
    .I1(sig0000020d),
    .O(sig0000001c)
  );
  XORCY   blk0000014e (
    .CI(sig00000003),
    .LI(sig0000001b),
    .O(sig000001e4)
  );
  MUXCY   blk0000014f (
    .CI(sig00000003),
    .DI(sig00000202),
    .S(sig0000001b),
    .O(sig0000000a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000150 (
    .I0(sig00000202),
    .I1(sig000001a5),
    .O(sig0000001b)
  );
  XORCY   blk00000151 (
    .CI(sig00000001),
    .LI(sig00000013),
    .O(sig000001e3)
  );
  MUXCY   blk00000152 (
    .CI(sig00000001),
    .DI(sig00000201),
    .S(sig00000013),
    .O(sig00000003)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000153 (
    .I0(sig00000201),
    .I1(sig000001a0),
    .O(sig00000013)
  );
  XORCY   blk00000154 (
    .CI(sig00000046),
    .LI(sig00000054),
    .O(sig000001fe)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000155 (
    .I0(sig00000188),
    .I1(sig00000196),
    .O(sig00000054)
  );
  XORCY   blk00000156 (
    .CI(sig00000045),
    .LI(sig00000053),
    .O(sig000001fd)
  );
  MUXCY   blk00000157 (
    .CI(sig00000045),
    .DI(sig00000188),
    .S(sig00000053),
    .O(sig00000046)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000158 (
    .I0(sig00000188),
    .I1(sig00000195),
    .O(sig00000053)
  );
  XORCY   blk00000159 (
    .CI(sig00000044),
    .LI(sig00000052),
    .O(sig000001fc)
  );
  MUXCY   blk0000015a (
    .CI(sig00000044),
    .DI(sig00000188),
    .S(sig00000052),
    .O(sig00000045)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015b (
    .I0(sig00000188),
    .I1(sig00000194),
    .O(sig00000052)
  );
  XORCY   blk0000015c (
    .CI(sig0000004f),
    .LI(sig00000051),
    .O(sig000001fb)
  );
  MUXCY   blk0000015d (
    .CI(sig0000004f),
    .DI(sig00000187),
    .S(sig00000051),
    .O(sig00000044)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015e (
    .I0(sig00000187),
    .I1(sig00000193),
    .O(sig00000051)
  );
  XORCY   blk0000015f (
    .CI(sig0000004e),
    .LI(sig0000005d),
    .O(sig000001fa)
  );
  MUXCY   blk00000160 (
    .CI(sig0000004e),
    .DI(sig00000186),
    .S(sig0000005d),
    .O(sig0000004f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000161 (
    .I0(sig00000186),
    .I1(sig0000019f),
    .O(sig0000005d)
  );
  XORCY   blk00000162 (
    .CI(sig0000004d),
    .LI(sig0000005c),
    .O(sig000001f9)
  );
  MUXCY   blk00000163 (
    .CI(sig0000004d),
    .DI(sig00000185),
    .S(sig0000005c),
    .O(sig0000004e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000164 (
    .I0(sig00000185),
    .I1(sig0000019e),
    .O(sig0000005c)
  );
  XORCY   blk00000165 (
    .CI(sig0000004c),
    .LI(sig0000005b),
    .O(sig00000206)
  );
  MUXCY   blk00000166 (
    .CI(sig0000004c),
    .DI(sig00000191),
    .S(sig0000005b),
    .O(sig0000004d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000167 (
    .I0(sig00000191),
    .I1(sig0000019d),
    .O(sig0000005b)
  );
  XORCY   blk00000168 (
    .CI(sig0000004b),
    .LI(sig0000005a),
    .O(sig00000205)
  );
  MUXCY   blk00000169 (
    .CI(sig0000004b),
    .DI(sig00000190),
    .S(sig0000005a),
    .O(sig0000004c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000016a (
    .I0(sig00000190),
    .I1(sig0000019c),
    .O(sig0000005a)
  );
  XORCY   blk0000016b (
    .CI(sig0000004a),
    .LI(sig00000059),
    .O(sig00000204)
  );
  MUXCY   blk0000016c (
    .CI(sig0000004a),
    .DI(sig0000018f),
    .S(sig00000059),
    .O(sig0000004b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000016d (
    .I0(sig0000018f),
    .I1(sig0000019b),
    .O(sig00000059)
  );
  XORCY   blk0000016e (
    .CI(sig00000049),
    .LI(sig00000058),
    .O(sig00000203)
  );
  MUXCY   blk0000016f (
    .CI(sig00000049),
    .DI(sig0000018e),
    .S(sig00000058),
    .O(sig0000004a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000170 (
    .I0(sig0000018e),
    .I1(sig0000019a),
    .O(sig00000058)
  );
  XORCY   blk00000171 (
    .CI(sig00000048),
    .LI(sig00000057),
    .O(sig00000202)
  );
  MUXCY   blk00000172 (
    .CI(sig00000048),
    .DI(sig0000018d),
    .S(sig00000057),
    .O(sig00000049)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000173 (
    .I0(sig0000018d),
    .I1(sig00000199),
    .O(sig00000057)
  );
  XORCY   blk00000174 (
    .CI(sig00000047),
    .LI(sig00000056),
    .O(sig00000201)
  );
  MUXCY   blk00000175 (
    .CI(sig00000047),
    .DI(sig0000018c),
    .S(sig00000056),
    .O(sig00000048)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000176 (
    .I0(sig0000018c),
    .I1(sig00000198),
    .O(sig00000056)
  );
  XORCY   blk00000177 (
    .CI(sig00000043),
    .LI(sig00000055),
    .O(sig00000200)
  );
  MUXCY   blk00000178 (
    .CI(sig00000043),
    .DI(sig0000018b),
    .S(sig00000055),
    .O(sig00000047)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000179 (
    .I0(sig0000018b),
    .I1(sig00000197),
    .O(sig00000055)
  );
  XORCY   blk0000017a (
    .CI(sig00000001),
    .LI(sig00000050),
    .O(sig000001ff)
  );
  MUXCY   blk0000017b (
    .CI(sig00000001),
    .DI(sig0000018a),
    .S(sig00000050),
    .O(sig00000043)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017c (
    .I0(sig0000018a),
    .I1(sig00000192),
    .O(sig00000050)
  );
  XORCY   blk0000017d (
    .CI(sig00000061),
    .LI(sig0000006f),
    .O(sig0000020c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017e (
    .I0(sig000001a4),
    .I1(sig000001b2),
    .O(sig0000006f)
  );
  XORCY   blk0000017f (
    .CI(sig00000060),
    .LI(sig0000006e),
    .O(sig0000020b)
  );
  MUXCY   blk00000180 (
    .CI(sig00000060),
    .DI(sig000001a4),
    .S(sig0000006e),
    .O(sig00000061)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000181 (
    .I0(sig000001a4),
    .I1(sig000001b1),
    .O(sig0000006e)
  );
  XORCY   blk00000182 (
    .CI(sig0000005f),
    .LI(sig0000006d),
    .O(sig0000020a)
  );
  MUXCY   blk00000183 (
    .CI(sig0000005f),
    .DI(sig000001a4),
    .S(sig0000006d),
    .O(sig00000060)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000184 (
    .I0(sig000001a4),
    .I1(sig000001b0),
    .O(sig0000006d)
  );
  XORCY   blk00000185 (
    .CI(sig0000006a),
    .LI(sig0000006c),
    .O(sig00000209)
  );
  MUXCY   blk00000186 (
    .CI(sig0000006a),
    .DI(sig000001a3),
    .S(sig0000006c),
    .O(sig0000005f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000187 (
    .I0(sig000001a3),
    .I1(sig000001af),
    .O(sig0000006c)
  );
  XORCY   blk00000188 (
    .CI(sig00000069),
    .LI(sig00000078),
    .O(sig00000208)
  );
  MUXCY   blk00000189 (
    .CI(sig00000069),
    .DI(sig000001a2),
    .S(sig00000078),
    .O(sig0000006a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000018a (
    .I0(sig000001a2),
    .I1(sig000001bb),
    .O(sig00000078)
  );
  XORCY   blk0000018b (
    .CI(sig00000068),
    .LI(sig00000077),
    .O(sig00000207)
  );
  MUXCY   blk0000018c (
    .CI(sig00000068),
    .DI(sig000001a1),
    .S(sig00000077),
    .O(sig00000069)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000018d (
    .I0(sig000001a1),
    .I1(sig000001ba),
    .O(sig00000077)
  );
  XORCY   blk0000018e (
    .CI(sig00000067),
    .LI(sig00000076),
    .O(sig00000214)
  );
  MUXCY   blk0000018f (
    .CI(sig00000067),
    .DI(sig000001ad),
    .S(sig00000076),
    .O(sig00000068)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000190 (
    .I0(sig000001ad),
    .I1(sig000001b9),
    .O(sig00000076)
  );
  XORCY   blk00000191 (
    .CI(sig00000066),
    .LI(sig00000075),
    .O(sig00000213)
  );
  MUXCY   blk00000192 (
    .CI(sig00000066),
    .DI(sig000001ac),
    .S(sig00000075),
    .O(sig00000067)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000193 (
    .I0(sig000001ac),
    .I1(sig000001b8),
    .O(sig00000075)
  );
  XORCY   blk00000194 (
    .CI(sig00000065),
    .LI(sig00000074),
    .O(sig00000212)
  );
  MUXCY   blk00000195 (
    .CI(sig00000065),
    .DI(sig000001ab),
    .S(sig00000074),
    .O(sig00000066)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000196 (
    .I0(sig000001ab),
    .I1(sig000001b7),
    .O(sig00000074)
  );
  XORCY   blk00000197 (
    .CI(sig00000064),
    .LI(sig00000073),
    .O(sig00000211)
  );
  MUXCY   blk00000198 (
    .CI(sig00000064),
    .DI(sig000001aa),
    .S(sig00000073),
    .O(sig00000065)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000199 (
    .I0(sig000001aa),
    .I1(sig000001b6),
    .O(sig00000073)
  );
  XORCY   blk0000019a (
    .CI(sig00000063),
    .LI(sig00000072),
    .O(sig00000210)
  );
  MUXCY   blk0000019b (
    .CI(sig00000063),
    .DI(sig000001a9),
    .S(sig00000072),
    .O(sig00000064)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000019c (
    .I0(sig000001a9),
    .I1(sig000001b5),
    .O(sig00000072)
  );
  XORCY   blk0000019d (
    .CI(sig00000062),
    .LI(sig00000071),
    .O(sig0000020f)
  );
  MUXCY   blk0000019e (
    .CI(sig00000062),
    .DI(sig000001a8),
    .S(sig00000071),
    .O(sig00000063)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000019f (
    .I0(sig000001a8),
    .I1(sig000001b4),
    .O(sig00000071)
  );
  XORCY   blk000001a0 (
    .CI(sig0000005e),
    .LI(sig00000070),
    .O(sig0000020e)
  );
  MUXCY   blk000001a1 (
    .CI(sig0000005e),
    .DI(sig000001a7),
    .S(sig00000070),
    .O(sig00000062)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001a2 (
    .I0(sig000001a7),
    .I1(sig000001b3),
    .O(sig00000070)
  );
  XORCY   blk000001a3 (
    .CI(sig00000001),
    .LI(sig0000006b),
    .O(sig0000020d)
  );
  MUXCY   blk000001a4 (
    .CI(sig00000001),
    .DI(sig000001a6),
    .S(sig0000006b),
    .O(sig0000005e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001a5 (
    .I0(sig000001a6),
    .I1(sig000001ae),
    .O(sig0000006b)
  );
  XORCY   blk000001a6 (
    .CI(sig0000007c),
    .LI(sig0000008a),
    .O(sig0000021a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001a7 (
    .I0(sig000001c0),
    .I1(sig000001ce),
    .O(sig0000008a)
  );
  XORCY   blk000001a8 (
    .CI(sig0000007b),
    .LI(sig00000089),
    .O(sig00000219)
  );
  MUXCY   blk000001a9 (
    .CI(sig0000007b),
    .DI(sig000001c0),
    .S(sig00000089),
    .O(sig0000007c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001aa (
    .I0(sig000001c0),
    .I1(sig000001cd),
    .O(sig00000089)
  );
  XORCY   blk000001ab (
    .CI(sig0000007a),
    .LI(sig00000088),
    .O(sig00000218)
  );
  MUXCY   blk000001ac (
    .CI(sig0000007a),
    .DI(sig000001c0),
    .S(sig00000088),
    .O(sig0000007b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001ad (
    .I0(sig000001c0),
    .I1(sig000001cc),
    .O(sig00000088)
  );
  XORCY   blk000001ae (
    .CI(sig00000085),
    .LI(sig00000087),
    .O(sig00000217)
  );
  MUXCY   blk000001af (
    .CI(sig00000085),
    .DI(sig000001bf),
    .S(sig00000087),
    .O(sig0000007a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b0 (
    .I0(sig000001bf),
    .I1(sig000001cb),
    .O(sig00000087)
  );
  XORCY   blk000001b1 (
    .CI(sig00000084),
    .LI(sig00000093),
    .O(sig00000216)
  );
  MUXCY   blk000001b2 (
    .CI(sig00000084),
    .DI(sig000001be),
    .S(sig00000093),
    .O(sig00000085)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b3 (
    .I0(sig000001be),
    .I1(sig000001d7),
    .O(sig00000093)
  );
  XORCY   blk000001b4 (
    .CI(sig00000083),
    .LI(sig00000092),
    .O(sig00000215)
  );
  MUXCY   blk000001b5 (
    .CI(sig00000083),
    .DI(sig000001bd),
    .S(sig00000092),
    .O(sig00000084)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b6 (
    .I0(sig000001bd),
    .I1(sig000001d6),
    .O(sig00000092)
  );
  XORCY   blk000001b7 (
    .CI(sig00000082),
    .LI(sig00000091),
    .O(sig00000222)
  );
  MUXCY   blk000001b8 (
    .CI(sig00000082),
    .DI(sig000001c9),
    .S(sig00000091),
    .O(sig00000083)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b9 (
    .I0(sig000001c9),
    .I1(sig000001d5),
    .O(sig00000091)
  );
  XORCY   blk000001ba (
    .CI(sig00000081),
    .LI(sig00000090),
    .O(sig00000221)
  );
  MUXCY   blk000001bb (
    .CI(sig00000081),
    .DI(sig000001c8),
    .S(sig00000090),
    .O(sig00000082)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001bc (
    .I0(sig000001c8),
    .I1(sig000001d4),
    .O(sig00000090)
  );
  XORCY   blk000001bd (
    .CI(sig00000080),
    .LI(sig0000008f),
    .O(sig00000220)
  );
  MUXCY   blk000001be (
    .CI(sig00000080),
    .DI(sig000001c7),
    .S(sig0000008f),
    .O(sig00000081)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001bf (
    .I0(sig000001c7),
    .I1(sig000001d3),
    .O(sig0000008f)
  );
  XORCY   blk000001c0 (
    .CI(sig0000007f),
    .LI(sig0000008e),
    .O(sig0000021f)
  );
  MUXCY   blk000001c1 (
    .CI(sig0000007f),
    .DI(sig000001c6),
    .S(sig0000008e),
    .O(sig00000080)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001c2 (
    .I0(sig000001c6),
    .I1(sig000001d2),
    .O(sig0000008e)
  );
  XORCY   blk000001c3 (
    .CI(sig0000007e),
    .LI(sig0000008d),
    .O(sig0000021e)
  );
  MUXCY   blk000001c4 (
    .CI(sig0000007e),
    .DI(sig000001c5),
    .S(sig0000008d),
    .O(sig0000007f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001c5 (
    .I0(sig000001c5),
    .I1(sig000001d1),
    .O(sig0000008d)
  );
  XORCY   blk000001c6 (
    .CI(sig0000007d),
    .LI(sig0000008c),
    .O(sig0000021d)
  );
  MUXCY   blk000001c7 (
    .CI(sig0000007d),
    .DI(sig000001c4),
    .S(sig0000008c),
    .O(sig0000007e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001c8 (
    .I0(sig000001c4),
    .I1(sig000001d0),
    .O(sig0000008c)
  );
  XORCY   blk000001c9 (
    .CI(sig00000079),
    .LI(sig0000008b),
    .O(sig0000021c)
  );
  MUXCY   blk000001ca (
    .CI(sig00000079),
    .DI(sig000001c3),
    .S(sig0000008b),
    .O(sig0000007d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001cb (
    .I0(sig000001c3),
    .I1(sig000001cf),
    .O(sig0000008b)
  );
  XORCY   blk000001cc (
    .CI(sig00000001),
    .LI(sig00000086),
    .O(sig0000021b)
  );
  MUXCY   blk000001cd (
    .CI(sig00000001),
    .DI(sig000001c2),
    .S(sig00000086),
    .O(sig00000079)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001ce (
    .I0(sig000001c2),
    .I1(sig000001ca),
    .O(sig00000086)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001cf (
    .C(clk),
    .D(sig000001f6),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_23 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d0 (
    .C(clk),
    .D(sig000001f5),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_22 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d1 (
    .C(clk),
    .D(sig000001f4),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_21 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d2 (
    .C(clk),
    .D(sig000001f3),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_20 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d3 (
    .C(clk),
    .D(sig000001f2),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_19 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d4 (
    .C(clk),
    .D(sig000001f1),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_18 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d5 (
    .C(clk),
    .D(sig000001f0),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_17 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d6 (
    .C(clk),
    .D(sig000001ef),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_16 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d7 (
    .C(clk),
    .D(sig000001ee),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_15 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d8 (
    .C(clk),
    .D(sig000001ed),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_14 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001d9 (
    .C(clk),
    .D(sig000001ec),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_13 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001da (
    .C(clk),
    .D(sig000001eb),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_12 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001db (
    .C(clk),
    .D(sig000001ea),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_11 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001dc (
    .C(clk),
    .D(sig000001e9),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_10 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001dd (
    .C(clk),
    .D(sig000001f8),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001de (
    .C(clk),
    .D(sig000001f7),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001df (
    .C(clk),
    .D(sig000001e6),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e0 (
    .C(clk),
    .D(sig000001e5),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e1 (
    .C(clk),
    .D(sig000001e4),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e2 (
    .C(clk),
    .D(sig000001e3),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e3 (
    .C(clk),
    .D(sig00000200),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e4 (
    .C(clk),
    .D(sig000001ff),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e5 (
    .C(clk),
    .D(sig00000189),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001e6 (
    .C(clk),
    .D(sig00000184),
    .Q(\U0/i_mult/gLUT.gNO_LUT6.iLUT/s3_add_out_0_0 )
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  blk000001e7 (
    .I0(b[11]),
    .I1(b[10]),
    .I2(a[11]),
    .O(sig000000e5)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001e8 (
    .I0(a[11]),
    .I1(a[10]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000e4)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001e9 (
    .I0(a[9]),
    .I1(a[10]),
    .I2(b[10]),
    .I3(b[11]),
    .O(sig000000e2)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001ea (
    .I0(a[9]),
    .I1(a[8]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000e1)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk000001eb (
    .I0(a[11]),
    .I1(b[8]),
    .I2(b[9]),
    .O(sig000000d5)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001ec (
    .I0(a[8]),
    .I1(a[7]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000e0)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001ed (
    .I0(a[10]),
    .I1(b[8]),
    .I2(a[11]),
    .I3(b[9]),
    .O(sig000000d4)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001ee (
    .I0(a[7]),
    .I1(a[6]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000df)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001ef (
    .I0(a[10]),
    .I1(b[9]),
    .I2(a[9]),
    .I3(b[8]),
    .O(sig000000d3)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001f0 (
    .I0(a[6]),
    .I1(a[5]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000de)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001f1 (
    .I0(a[8]),
    .I1(b[8]),
    .I2(a[9]),
    .I3(b[9]),
    .O(sig000000d2)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001f2 (
    .I0(a[5]),
    .I1(a[4]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000dd)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001f3 (
    .I0(a[7]),
    .I1(b[8]),
    .I2(a[8]),
    .I3(b[9]),
    .O(sig000000d1)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001f4 (
    .I0(a[4]),
    .I1(a[3]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000dc)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001f5 (
    .I0(a[6]),
    .I1(b[8]),
    .I2(a[7]),
    .I3(b[9]),
    .O(sig000000d0)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001f6 (
    .I0(a[3]),
    .I1(a[2]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000db)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001f7 (
    .I0(a[5]),
    .I1(b[8]),
    .I2(a[6]),
    .I3(b[9]),
    .O(sig000000cf)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001f8 (
    .I0(a[2]),
    .I1(a[1]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000da)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001f9 (
    .I0(a[4]),
    .I1(b[8]),
    .I2(a[5]),
    .I3(b[9]),
    .O(sig000000ce)
  );
  LUT4 #(
    .INIT ( 16'h953F ))
  blk000001fa (
    .I0(a[1]),
    .I1(a[0]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig000000d9)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001fb (
    .I0(a[3]),
    .I1(b[8]),
    .I2(a[4]),
    .I3(b[9]),
    .O(sig000000cc)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  blk000001fc (
    .I0(a[0]),
    .I1(b[10]),
    .O(sig000000d7)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001fd (
    .I0(a[2]),
    .I1(b[8]),
    .I2(a[3]),
    .I3(b[9]),
    .O(sig000000cb)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001fe (
    .I0(a[1]),
    .I1(b[8]),
    .I2(a[2]),
    .I3(b[9]),
    .O(sig000000ca)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk000001ff (
    .I0(a[0]),
    .I1(b[8]),
    .I2(a[1]),
    .I3(b[9]),
    .O(sig000000c9)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000200 (
    .I0(a[0]),
    .I1(b[8]),
    .O(sig000000c8)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000201 (
    .I0(a[11]),
    .I1(b[6]),
    .I2(b[7]),
    .O(sig000000c6)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000202 (
    .I0(a[11]),
    .I1(b[2]),
    .I2(b[3]),
    .O(sig000000a7)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000203 (
    .I0(a[10]),
    .I1(b[6]),
    .I2(a[11]),
    .I3(b[7]),
    .O(sig000000c5)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000204 (
    .I0(a[10]),
    .I1(b[7]),
    .I2(a[9]),
    .I3(b[6]),
    .O(sig000000c4)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000205 (
    .I0(a[8]),
    .I1(b[6]),
    .I2(a[9]),
    .I3(b[7]),
    .O(sig000000c3)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000206 (
    .I0(a[11]),
    .I1(b[4]),
    .I2(b[5]),
    .O(sig000000b6)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000207 (
    .I0(a[7]),
    .I1(b[6]),
    .I2(a[8]),
    .I3(b[7]),
    .O(sig000000c1)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000208 (
    .I0(a[10]),
    .I1(b[4]),
    .I2(a[11]),
    .I3(b[5]),
    .O(sig000000b5)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000209 (
    .I0(a[6]),
    .I1(b[6]),
    .I2(a[7]),
    .I3(b[7]),
    .O(sig000000c0)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000020a (
    .I0(a[10]),
    .I1(b[5]),
    .I2(a[9]),
    .I3(b[4]),
    .O(sig000000b4)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000020b (
    .I0(a[5]),
    .I1(b[6]),
    .I2(a[6]),
    .I3(b[7]),
    .O(sig000000bf)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000020c (
    .I0(a[8]),
    .I1(b[4]),
    .I2(a[9]),
    .I3(b[5]),
    .O(sig000000b3)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000020d (
    .I0(a[10]),
    .I1(b[2]),
    .I2(a[11]),
    .I3(b[3]),
    .O(sig000000a6)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000020e (
    .I0(b[6]),
    .I1(b[7]),
    .I2(a[4]),
    .I3(a[5]),
    .O(sig000000be)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000020f (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[7]),
    .I3(a[8]),
    .O(sig000000b2)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000210 (
    .I0(b[3]),
    .I1(b[2]),
    .I2(a[10]),
    .I3(a[9]),
    .O(sig000000a5)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000211 (
    .I0(b[6]),
    .I1(b[7]),
    .I2(a[3]),
    .I3(a[4]),
    .O(sig000000bd)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000212 (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[6]),
    .I3(a[7]),
    .O(sig000000b1)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000213 (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[8]),
    .I3(a[9]),
    .O(sig000000a4)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000214 (
    .I0(b[6]),
    .I1(b[7]),
    .I2(a[2]),
    .I3(a[3]),
    .O(sig000000bc)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000215 (
    .I0(a[11]),
    .I1(b[0]),
    .I2(b[1]),
    .O(sig00000098)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000216 (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[5]),
    .I3(a[6]),
    .O(sig000000b0)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000217 (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[7]),
    .I3(a[8]),
    .O(sig000000a3)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000218 (
    .I0(b[6]),
    .I1(b[7]),
    .I2(a[1]),
    .I3(a[2]),
    .O(sig000000bb)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000219 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[10]),
    .I3(a[11]),
    .O(sig00000097)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000021a (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[4]),
    .I3(a[5]),
    .O(sig000000af)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000021b (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[6]),
    .I3(a[7]),
    .O(sig000000a2)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000021c (
    .I0(b[6]),
    .I1(b[7]),
    .I2(a[0]),
    .I3(a[1]),
    .O(sig000000ba)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000021d (
    .I0(b[1]),
    .I1(b[0]),
    .I2(a[10]),
    .I3(a[9]),
    .O(sig000000e7)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000021e (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[3]),
    .I3(a[4]),
    .O(sig000000ae)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000021f (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[5]),
    .I3(a[6]),
    .O(sig000000a0)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000220 (
    .I0(a[0]),
    .I1(b[6]),
    .O(sig000000b9)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000221 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[8]),
    .I3(a[9]),
    .O(sig000000e3)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000222 (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[2]),
    .I3(a[3]),
    .O(sig000000ad)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000223 (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[4]),
    .I3(a[5]),
    .O(sig0000009f)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000224 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[7]),
    .I3(a[8]),
    .O(sig000000d8)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000225 (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[1]),
    .I3(a[2]),
    .O(sig000000ab)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000226 (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[3]),
    .I3(a[4]),
    .O(sig0000009e)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000227 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[6]),
    .I3(a[7]),
    .O(sig000000cd)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000228 (
    .I0(b[4]),
    .I1(b[5]),
    .I2(a[0]),
    .I3(a[1]),
    .O(sig000000aa)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000229 (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[2]),
    .I3(a[3]),
    .O(sig0000009d)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000022a (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[5]),
    .I3(a[6]),
    .O(sig000000c2)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000022b (
    .I0(a[0]),
    .I1(b[4]),
    .O(sig000000a9)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000022c (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[1]),
    .I3(a[2]),
    .O(sig0000009c)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000022d (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[4]),
    .I3(a[5]),
    .O(sig000000b8)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000022e (
    .I0(b[2]),
    .I1(b[3]),
    .I2(a[0]),
    .I3(a[1]),
    .O(sig0000009b)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk0000022f (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[3]),
    .I3(a[4]),
    .O(sig000000ac)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000230 (
    .I0(a[0]),
    .I1(b[2]),
    .O(sig0000009a)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000231 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[2]),
    .I3(a[3]),
    .O(sig000000a1)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000232 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[1]),
    .I3(a[2]),
    .O(sig00000096)
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  blk00000233 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(a[0]),
    .I3(a[1]),
    .O(sig00000095)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000234 (
    .I0(a[0]),
    .I1(b[0]),
    .O(sig00000094)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  blk00000235 (
    .I0(b[11]),
    .I1(b[10]),
    .I2(a[11]),
    .O(sig000000e6)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000236 (
    .I0(a[11]),
    .I1(b[8]),
    .I2(b[9]),
    .O(sig000000d6)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000237 (
    .I0(a[11]),
    .I1(b[6]),
    .I2(b[7]),
    .O(sig000000c7)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000238 (
    .I0(a[11]),
    .I1(b[4]),
    .I2(b[5]),
    .O(sig000000b7)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk00000239 (
    .I0(a[11]),
    .I1(b[2]),
    .I2(b[3]),
    .O(sig000000a8)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  blk0000023a (
    .I0(a[11]),
    .I1(b[0]),
    .I2(b[1]),
    .O(sig00000099)
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
