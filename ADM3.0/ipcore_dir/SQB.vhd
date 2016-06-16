--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------
-- You must compile the wrapper file SQB.vhd when simulating
-- the core, SQB. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY SQB IS
	port (
	x_in: in std_logic_vector(24 downto 0);
	x_out: out std_logic_vector(12 downto 0);
	clk: in std_logic);
END SQB;

ARCHITECTURE SQB_a OF SQB IS
-- synthesis translate_off
component wrapped_SQB
	port (
	x_in: in std_logic_vector(24 downto 0);
	x_out: out std_logic_vector(12 downto 0);
	clk: in std_logic);
end component;

-- Configuration specification 
	for all : wrapped_SQB use entity XilinxCoreLib.cordic_v4_0(behavioral)
		generic map(
			c_has_clk => 1,
			c_has_x_out => 1,
			c_has_y_in => 0,
			c_reg_inputs => 1,
			c_architecture => 2,
			c_input_width => 25,
			c_iterations => 0,
			c_precision => 0,
			c_has_rdy => 0,
			c_has_sclr => 0,
			c_scale_comp => 0,
			c_has_nd => 0,
			c_has_phase_in => 0,
			c_has_rfd => 0,
			c_cordic_function => 6,
			c_has_ce => 0,
			c_round_mode => 0,
			c_family => "spartan3",
			c_has_y_out => 0,
			c_data_format => 1,
			c_reg_outputs => 1,
			c_coarse_rotate => 0,
			c_phase_format => 0,
			c_has_x_in => 1,
			c_has_phase_out => 0,
			c_pipeline_mode => -2,
			c_xdevicefamily => "spartan3e",
			c_output_width => 13);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_SQB
		port map (
			x_in => x_in,
			x_out => x_out,
			clk => clk);
-- synthesis translate_on

END SQB_a;

