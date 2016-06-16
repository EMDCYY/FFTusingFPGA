/*******************************************************************************
*     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.              *
*                                                                              *
*     This file contains confidential and proprietary information              *
*     of Xilinx, Inc. and is protected under U.S. and                          *
*     international copyright and other intellectual property                  *
*     laws.                                                                    *
*                                                                              *
*     DISCLAIMER                                                               *
*     This disclaimer is not a license and does not grant any                  *
*     rights to the materials distributed herewith. Except as                  *
*     otherwise provided in a valid license issued to you by                   *
*     Xilinx, and to the maximum extent permitted by applicable                *
*     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                  *
*     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES              *
*     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING                *
*     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                   *
*     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and                 *
*     (2) Xilinx shall not be liable (whether in contract or tort,             *
*     including negligence, or under any other theory of                       *
*     liability) for any loss or damage of any kind or nature                  *
*     related to, arising under or in connection with these                    *
*     materials, including for any direct, or any indirect,                    *
*     special, incidental, or consequential loss or damage                     *
*     (including loss of data, profits, goodwill, or any type of               *
*     loss or damage suffered as a result of any action brought                *
*     by a third party) even if such damage or loss was                        *
*     reasonably foreseeable or Xilinx had been advised of the                 *
*     possibility of the same.                                                 *
*                                                                              *
*     CRITICAL APPLICATIONS                                                    *
*     Xilinx products are not designed or intended to be fail-                 *
*     safe, or for use in any application requiring fail-safe                  *
*     performance, such as life-support or safety devices or                   *
*     systems, Class III medical devices, nuclear facilities,                  *
*     applications related to the deployment of airbags, or any                *
*     other applications that could lead to death, personal                    *
*     injury, or severe property or environmental damage                       *
*     (individually and collectively, "Critical                                *
*     Applications"). Customer assumes the sole risk and                       *
*     liability of any use of Xilinx products in Critical                      *
*     Applications, subject only to applicable laws and                        *
*     regulations governing limitations on product liability.                  *
*                                                                              *
*     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS                 *
*     PART OF THIS FILE AT ALL TIMES.                                          *
*******************************************************************************/
// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
FFTB YourInstanceName (
	.clk(clk), // input clk
	.sclr(sclr), // input sclr
	.start(start), // input start
	.unload(unload), // input unload
	.xn0_re(xn0_re), // input [11 : 0] xn0_re
	.xn0_im(xn0_im), // input [11 : 0] xn0_im
	.xn1_re(xn1_re), // input [11 : 0] xn1_re
	.xn1_im(xn1_im), // input [11 : 0] xn1_im
	.fwd_inv0(fwd_inv0), // input fwd_inv0
	.fwd_inv0_we(fwd_inv0_we), // input fwd_inv0_we
	.fwd_inv1(fwd_inv1), // input fwd_inv1
	.fwd_inv1_we(fwd_inv1_we), // input fwd_inv1_we
	.scale_sch0(scale_sch0), // input [19 : 0] scale_sch0
	.scale_sch0_we(scale_sch0_we), // input scale_sch0_we
	.scale_sch1(scale_sch1), // input [19 : 0] scale_sch1
	.scale_sch1_we(scale_sch1_we), // input scale_sch1_we
	.rfd(rfd), // ouput rfd
	.xn_index(xn_index), // ouput [9 : 0] xn_index
	.busy(busy), // ouput busy
	.edone(edone), // ouput edone
	.done(done), // ouput done
	.dv(dv), // ouput dv
	.xk_index(xk_index), // ouput [9 : 0] xk_index
	.xk0_re(xk0_re), // ouput [11 : 0] xk0_re
	.xk0_im(xk0_im), // ouput [11 : 0] xk0_im
	.xk1_re(xk1_re), // ouput [11 : 0] xk1_re
	.xk1_im(xk1_im)); // ouput [11 : 0] xk1_im

// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file FFTB.v when simulating
// the core, FFTB. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

