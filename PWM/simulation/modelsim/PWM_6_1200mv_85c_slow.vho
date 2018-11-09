-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/09/2018 14:58:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_out : OUT std_logic
	);
END pwm;

-- Design Ports Information
-- pwm_out	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_duty : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[3]~input_o\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \duty_prop~0_combout\ : std_logic;
SIGNAL \duty[5]~input_o\ : std_logic;
SIGNAL \duty[4]~input_o\ : std_logic;
SIGNAL \duty[6]~input_o\ : std_logic;
SIGNAL \duty_prop~1_combout\ : std_logic;
SIGNAL \duty[7]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \duty_prop~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][14]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][12]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][11]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][14]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][1]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~235_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~237_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~239_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~238_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~241_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~243_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~242_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~245_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~246_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~247_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~249_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~248_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~250_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~394_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~395_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~251_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~252_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~396_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~397_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~253_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~254_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~398_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~255_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~399_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~400_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~256_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~258_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~257_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~18_combout\ : std_logic;
SIGNAL \duty_prop~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~337_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~259_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~260_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~338_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~339_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~261_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~262_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~340_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~263_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~341_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~264_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~342_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~401_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~265_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~266_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~267_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \duty_prop~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~343_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~268_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~269_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~270_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~345_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~271_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~272_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~347_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~348_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~402_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~276_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~275_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~18_combout\ : std_logic;
SIGNAL \duty_prop~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~277_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~349_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~350_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~278_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~351_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~279_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~280_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~352_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~353_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~281_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~354_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~282_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~403_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~283_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~284_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~285_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \duty_prop~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~286_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~355_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~356_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~287_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~288_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~357_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~289_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~358_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[111]~290_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[111]~359_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~360_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~291_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~404_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~292_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~294_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~293_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18_combout\ : std_logic;
SIGNAL \duty_prop~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~361_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~295_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~296_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~362_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~297_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~363_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~298_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~364_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~299_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~365_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~366_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~300_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~405_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~301_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~302_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~303_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \duty_prop~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~367_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~304_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~305_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~368_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~306_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~369_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~307_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~370_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~371_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~308_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~309_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~372_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~406_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~310_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~312_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \duty_prop~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~373_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~313_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~374_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~314_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~315_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~375_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~376_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~316_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~317_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~377_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~318_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~378_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~319_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~407_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~321_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~320_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][2]~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \duty_prop~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~379_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~322_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~323_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~380_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[149]~381_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[149]~324_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~325_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~382_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~326_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~383_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~327_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~384_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~408_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~328_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[144]~329_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[144]~385_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][1]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \duty_prop~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[160]~386_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[160]~330_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[159]~331_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[159]~387_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[158]~332_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[158]~388_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[157]~389_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[157]~333_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[156]~390_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[156]~334_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[155]~335_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[155]~391_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[154]~336_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[154]~392_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~393_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \duty_prop~12_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \s~q\ : std_logic;
SIGNAL duty_prop : std_logic_vector(10 DOWNTO 0);
SIGNAL count : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_duty <= duty;
pwm_out <= ww_pwm_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X28_Y29_N2
\pwm_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~q\,
	devoe => ww_devoe,
	o => \pwm_out~output_o\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y25_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X27_Y25_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X27_Y25_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X27_Y25_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X27_Y25_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X27_Y25_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X27_Y25_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(2) & (count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y25_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X28_Y25_N27
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X27_Y25_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X28_Y25_N18
\count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~8_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~8_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~1_combout\);

-- Location: FF_X28_Y25_N19
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X27_Y25_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X28_Y25_N13
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X27_Y25_N16
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X27_Y25_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X28_Y25_N10
\count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\Add0~14_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~14_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~4_combout\);

-- Location: FF_X28_Y25_N11
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X27_Y25_N20
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X28_Y25_N0
\count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~16_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~16_combout\,
	combout => \count~3_combout\);

-- Location: FF_X28_Y25_N1
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X27_Y25_N22
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X28_Y25_N4
\count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~18_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~18_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~2_combout\);

-- Location: FF_X28_Y25_N5
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X28_Y25_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(4) & (count(9) & (!count(5) & count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(9),
	datac => count(5),
	datad => count(10),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y25_N24
\count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add0~12_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~5_combout\);

-- Location: FF_X28_Y25_N25
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X27_Y25_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(6) & (count(8) & (count(7) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(8),
	datac => count(7),
	datad => count(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X27_Y25_N24
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \Add0~19\ $ (!count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(10),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X28_Y25_N8
\count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~20_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~20_combout\,
	combout => \count~0_combout\);

-- Location: FF_X28_Y25_N9
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: IOIBUF_X28_Y29_N29
\duty[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: IOIBUF_X30_Y29_N8
\duty[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\duty[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(3),
	o => \duty[3]~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\duty[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: LCCOMB_X28_Y26_N16
\duty_prop~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~0_combout\ = (\duty[2]~input_o\) # ((\duty[3]~input_o\) # ((\duty[1]~input_o\ & \duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \duty_prop~0_combout\);

-- Location: IOIBUF_X26_Y29_N15
\duty[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(5),
	o => \duty[5]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\duty[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(4),
	o => \duty[4]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\duty[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(6),
	o => \duty[6]~input_o\);

-- Location: LCCOMB_X27_Y24_N0
\duty_prop~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~1_combout\ = (\duty_prop~0_combout\) # ((\duty[5]~input_o\) # ((\duty[4]~input_o\) # (\duty[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~0_combout\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \duty_prop~1_combout\);

-- Location: IOIBUF_X28_Y29_N15
\duty[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(7),
	o => \duty[7]~input_o\);

-- Location: FF_X28_Y25_N15
\duty_prop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(10));

-- Location: LCCOMB_X28_Y25_N2
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(5) & (!count(9) & (!count(10) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(9),
	datac => count(10),
	datad => count(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y25_N26
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(7) & (!count(6) & (!count(3) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(6),
	datac => count(3),
	datad => count(8),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X27_Y25_N28
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!count(2) & (!count(0) & !count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X28_Y25_N28
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X28_Y25_N14
\duty_prop~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~2_combout\ = (\Equal1~3_combout\ & (\duty_prop~1_combout\ & (\duty[7]~input_o\))) # (!\Equal1~3_combout\ & (((duty_prop(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~1_combout\,
	datab => \duty[7]~input_o\,
	datac => duty_prop(10),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~2_combout\);

-- Location: LCCOMB_X27_Y24_N2
\Mult0|mult_core|romout[1][14]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][14]~0_combout\ = (\duty[7]~input_o\ & ((\duty[5]~input_o\) # ((\duty[4]~input_o\) # (\duty[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][14]~0_combout\);

-- Location: LCCOMB_X27_Y24_N12
\Mult0|mult_core|romout[1][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][13]~combout\ = (\duty[5]~input_o\ & (((\duty[6]~input_o\)))) # (!\duty[5]~input_o\ & ((\duty[4]~input_o\ & ((\duty[6]~input_o\))) # (!\duty[4]~input_o\ & (\duty[7]~input_o\ & !\duty[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][13]~combout\);

-- Location: LCCOMB_X27_Y24_N30
\Mult0|mult_core|romout[1][12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][12]~1_combout\ = (\duty[5]~input_o\ & (((\duty[4]~input_o\)))) # (!\duty[5]~input_o\ & (!\duty[4]~input_o\ & ((\duty[7]~input_o\) # (\duty[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][12]~1_combout\);

-- Location: LCCOMB_X27_Y24_N20
\Mult0|mult_core|romout[1][11]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][11]~2_combout\ = (!\duty[4]~input_o\ & ((\duty[7]~input_o\) # ((\duty[5]~input_o\) # (\duty[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][11]~2_combout\);

-- Location: LCCOMB_X27_Y24_N10
\Mult0|mult_core|romout[1][10]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~3_combout\ = (\duty[7]~input_o\) # ((\duty[5]~input_o\) # ((\duty[4]~input_o\) # (\duty[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][10]~3_combout\);

-- Location: LCCOMB_X28_Y26_N14
\Mult0|mult_core|romout[0][14]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][14]~4_combout\ = (\duty[3]~input_o\ & ((\duty[2]~input_o\) # ((\duty[1]~input_o\) # (\duty[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][14]~4_combout\);

-- Location: LCCOMB_X27_Y24_N8
\Mult0|mult_core|romout[1][9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~combout\ = (\duty[7]~input_o\ & (!\duty[6]~input_o\ & ((!\duty[4]~input_o\) # (!\duty[5]~input_o\)))) # (!\duty[7]~input_o\ & ((\duty[5]~input_o\) # ((\duty[4]~input_o\) # (\duty[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][9]~combout\);

-- Location: LCCOMB_X28_Y26_N28
\Mult0|mult_core|romout[0][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][13]~combout\ = (\duty[2]~input_o\ & ((\duty[1]~input_o\) # ((\duty[0]~input_o\)))) # (!\duty[2]~input_o\ & (!\duty[1]~input_o\ & (\duty[3]~input_o\ & !\duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][13]~combout\);

-- Location: LCCOMB_X28_Y26_N6
\Mult0|mult_core|romout[0][12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~combout\ = (\duty[1]~input_o\ & (((\duty[0]~input_o\)))) # (!\duty[1]~input_o\ & (!\duty[0]~input_o\ & ((\duty[2]~input_o\) # (\duty[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][12]~combout\);

-- Location: LCCOMB_X27_Y24_N18
\Mult0|mult_core|romout[1][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~5_combout\ = (\duty[7]~input_o\ & ((\duty[6]~input_o\) # ((\duty[5]~input_o\ & \duty[4]~input_o\)))) # (!\duty[7]~input_o\ & ((\duty[5]~input_o\ & ((!\duty[6]~input_o\))) # (!\duty[5]~input_o\ & ((\duty[4]~input_o\) # 
-- (\duty[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][8]~5_combout\);

-- Location: LCCOMB_X28_Y26_N20
\Mult0|mult_core|romout[0][11]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~7_combout\ = (!\duty[0]~input_o\ & ((\duty[2]~input_o\) # ((\duty[1]~input_o\) # (\duty[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][11]~7_combout\);

-- Location: LCCOMB_X27_Y24_N24
\Mult0|mult_core|romout[1][7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~6_combout\ = (\duty[7]~input_o\ & ((\duty[5]~input_o\ & (\duty[4]~input_o\ & !\duty[6]~input_o\)) # (!\duty[5]~input_o\ & ((\duty[6]~input_o\))))) # (!\duty[7]~input_o\ & (\duty[5]~input_o\ $ (((\duty[4]~input_o\ & 
-- !\duty[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][7]~6_combout\);

-- Location: LCCOMB_X28_Y26_N30
\Mult0|mult_core|romout[0][10]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~9_combout\ = (\duty[2]~input_o\) # ((\duty[1]~input_o\) # ((\duty[3]~input_o\) # (\duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][10]~9_combout\);

-- Location: LCCOMB_X27_Y24_N22
\Mult0|mult_core|romout[1][6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~8_combout\ = (\duty[5]~input_o\ & ((\duty[4]~input_o\ $ (\duty[6]~input_o\)))) # (!\duty[5]~input_o\ & (!\duty[6]~input_o\ & ((\duty[7]~input_o\) # (\duty[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][6]~8_combout\);

-- Location: LCCOMB_X28_Y26_N12
\Mult0|mult_core|romout[0][9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~combout\ = (\duty[2]~input_o\ & (((!\duty[3]~input_o\)))) # (!\duty[2]~input_o\ & ((\duty[1]~input_o\ & ((!\duty[0]~input_o\) # (!\duty[3]~input_o\))) # (!\duty[1]~input_o\ & ((\duty[3]~input_o\) # (\duty[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X28_Y26_N10
\Mult0|mult_core|romout[0][8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~combout\ = (\duty[2]~input_o\ & (((\duty[3]~input_o\)) # (!\duty[1]~input_o\))) # (!\duty[2]~input_o\ & ((\duty[1]~input_o\ & ((\duty[0]~input_o\) # (!\duty[3]~input_o\))) # (!\duty[1]~input_o\ & (!\duty[3]~input_o\ & 
-- \duty[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][8]~combout\);

-- Location: LCCOMB_X28_Y26_N4
\Mult0|mult_core|romout[0][7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~combout\ = (\duty[2]~input_o\ & (\duty[1]~input_o\ $ ((\duty[3]~input_o\)))) # (!\duty[2]~input_o\ & ((\duty[1]~input_o\ & (\duty[3]~input_o\ $ (!\duty[0]~input_o\))) # (!\duty[1]~input_o\ & (!\duty[3]~input_o\ & 
-- \duty[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][7]~combout\);

-- Location: LCCOMB_X27_Y24_N28
\Mult0|mult_core|romout[1][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~combout\ = \duty[7]~input_o\ $ (((\duty[5]~input_o\) # ((\duty[4]~input_o\) # (\duty[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[7]~input_o\,
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][3]~combout\);

-- Location: LCCOMB_X27_Y24_N6
\Mult0|mult_core|romout[1][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][2]~combout\ = \duty[6]~input_o\ $ (((\duty[5]~input_o\) # (\duty[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	datad => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][2]~combout\);

-- Location: LCCOMB_X28_Y26_N18
\Mult0|mult_core|romout[0][6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~10_combout\ = (\duty[2]~input_o\ & (\duty[1]~input_o\ & ((!\duty[0]~input_o\)))) # (!\duty[2]~input_o\ & ((\duty[0]~input_o\) # ((!\duty[1]~input_o\ & \duty[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][6]~10_combout\);

-- Location: LCCOMB_X27_Y24_N4
\Mult0|mult_core|romout[1][1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][1]~11_combout\ = \duty[5]~input_o\ $ (\duty[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[5]~input_o\,
	datac => \duty[4]~input_o\,
	combout => \Mult0|mult_core|romout[1][1]~11_combout\);

-- Location: LCCOMB_X27_Y26_N0
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|romout[0][11]~7_combout\ & (\duty[4]~input_o\ $ (VCC))) # (!\Mult0|mult_core|romout[0][11]~7_combout\ & (\duty[4]~input_o\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|romout[0][11]~7_combout\ & \duty[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~7_combout\,
	datab => \duty[4]~input_o\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X27_Y26_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[0][12]~combout\ & ((\Mult0|mult_core|romout[1][1]~11_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][1]~11_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[0][12]~combout\ & ((\Mult0|mult_core|romout[1][1]~11_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[1][1]~11_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[0][12]~combout\ & (!\Mult0|mult_core|romout[1][1]~11_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[0][12]~combout\ 
-- & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[1][1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~combout\,
	datab => \Mult0|mult_core|romout[1][1]~11_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X27_Y26_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[1][2]~combout\ $ (\Mult0|mult_core|romout[0][6]~10_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[1][2]~combout\ & ((\Mult0|mult_core|romout[0][6]~10_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[1][2]~combout\ & (\Mult0|mult_core|romout[0][6]~10_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][2]~combout\,
	datab => \Mult0|mult_core|romout[0][6]~10_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X27_Y26_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[0][7]~combout\ & ((\Mult0|mult_core|romout[1][3]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][3]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|romout[0][7]~combout\ & ((\Mult0|mult_core|romout[1][3]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|romout[1][3]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[0][7]~combout\ & (!\Mult0|mult_core|romout[1][3]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][7]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~combout\,
	datab => \Mult0|mult_core|romout[1][3]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X27_Y26_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[0][8]~combout\ $ (\Mult0|mult_core|romout[1][11]~2_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[0][8]~combout\ & ((\Mult0|mult_core|romout[1][11]~2_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|romout[0][8]~combout\ & (\Mult0|mult_core|romout[1][11]~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~combout\,
	datab => \Mult0|mult_core|romout[1][11]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X27_Y26_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[0][9]~combout\ & ((\Mult0|mult_core|romout[1][12]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][12]~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[0][9]~combout\ & ((\Mult0|mult_core|romout[1][12]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[1][12]~1_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[0][9]~combout\ & (!\Mult0|mult_core|romout[1][12]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[0][9]~combout\ 
-- & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[1][12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~combout\,
	datab => \Mult0|mult_core|romout[1][12]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X27_Y26_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[0][10]~9_combout\ $ (\Mult0|mult_core|romout[1][6]~8_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[0][10]~9_combout\ & ((\Mult0|mult_core|romout[1][6]~8_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|romout[0][10]~9_combout\ & (\Mult0|mult_core|romout[1][6]~8_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~9_combout\,
	datab => \Mult0|mult_core|romout[1][6]~8_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X27_Y26_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[0][11]~7_combout\ & ((\Mult0|mult_core|romout[1][7]~6_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][7]~6_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|romout[0][11]~7_combout\ & ((\Mult0|mult_core|romout[1][7]~6_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[1][7]~6_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[0][11]~7_combout\ & (!\Mult0|mult_core|romout[1][7]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|romout[0][11]~7_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[1][7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~7_combout\,
	datab => \Mult0|mult_core|romout[1][7]~6_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X27_Y26_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\Mult0|mult_core|romout[0][12]~combout\ $ (\Mult0|mult_core|romout[1][8]~5_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[0][12]~combout\ & ((\Mult0|mult_core|romout[1][8]~5_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\Mult0|mult_core|romout[0][12]~combout\ & (\Mult0|mult_core|romout[1][8]~5_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~combout\,
	datab => \Mult0|mult_core|romout[1][8]~5_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X27_Y26_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|romout[1][9]~combout\ & ((\Mult0|mult_core|romout[0][13]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][13]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)))) # (!\Mult0|mult_core|romout[1][9]~combout\ & ((\Mult0|mult_core|romout[0][13]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[0][13]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((\Mult0|mult_core|romout[1][9]~combout\ & (!\Mult0|mult_core|romout[0][13]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[1][9]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|romout[0][13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][9]~combout\,
	datab => \Mult0|mult_core|romout[0][13]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X27_Y26_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = ((\Mult0|mult_core|romout[1][10]~3_combout\ $ (\Mult0|mult_core|romout[0][14]~4_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Mult0|mult_core|romout[1][10]~3_combout\ & ((\Mult0|mult_core|romout[0][14]~4_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))) # 
-- (!\Mult0|mult_core|romout[1][10]~3_combout\ & (\Mult0|mult_core|romout[0][14]~4_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][10]~3_combout\,
	datab => \Mult0|mult_core|romout[0][14]~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X27_Y26_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\Mult0|mult_core|romout[1][11]~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\Mult0|mult_core|romout[1][11]~2_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\Mult0|mult_core|romout[1][11]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][11]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X27_Y26_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = (\Mult0|mult_core|romout[1][12]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (GND))) # (!\Mult0|mult_core|romout[1][12]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ = CARRY((\Mult0|mult_core|romout[1][12]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][12]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X27_Y26_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ = (\Mult0|mult_core|romout[1][13]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\)) # (!\Mult0|mult_core|romout[1][13]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (!\Mult0|mult_core|romout[1][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][13]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X27_Y26_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ $ (!\Mult0|mult_core|romout[1][14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[1][14]~0_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X27_Y23_N10
\Div0|auto_generated|divider|divider|op_15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_15~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_15~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~1\);

-- Location: LCCOMB_X27_Y23_N12
\Div0|auto_generated|divider|divider|op_15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~2_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Div0|auto_generated|divider|divider|op_15~1\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_15~1\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_15~3\ = CARRY((!\Div0|auto_generated|divider|divider|op_15~1\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~1\,
	combout => \Div0|auto_generated|divider|divider|op_15~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~3\);

-- Location: LCCOMB_X27_Y23_N14
\Div0|auto_generated|divider|divider|op_15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~4_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|divider|op_15~3\ $ (GND))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_15~3\ & VCC))
-- \Div0|auto_generated|divider|divider|op_15~5\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & !\Div0|auto_generated|divider|divider|op_15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~3\,
	combout => \Div0|auto_generated|divider|divider|op_15~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~5\);

-- Location: LCCOMB_X27_Y23_N16
\Div0|auto_generated|divider|divider|op_15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~6_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\Div0|auto_generated|divider|divider|op_15~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_15~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_15~7\ = CARRY((!\Div0|auto_generated|divider|divider|op_15~5\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~5\,
	combout => \Div0|auto_generated|divider|divider|op_15~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~7\);

-- Location: LCCOMB_X27_Y23_N18
\Div0|auto_generated|divider|divider|op_15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~8_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (\Div0|auto_generated|divider|divider|op_15~7\ $ (GND))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_15~7\ & VCC))
-- \Div0|auto_generated|divider|divider|op_15~9\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & !\Div0|auto_generated|divider|divider|op_15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~7\,
	combout => \Div0|auto_generated|divider|divider|op_15~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~9\);

-- Location: LCCOMB_X27_Y23_N20
\Div0|auto_generated|divider|divider|op_15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~10_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & (!\Div0|auto_generated|divider|divider|op_15~9\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_15~9\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_15~11\ = CARRY((!\Div0|auto_generated|divider|divider|op_15~9\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~9\,
	combout => \Div0|auto_generated|divider|divider|op_15~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~11\);

-- Location: LCCOMB_X27_Y23_N22
\Div0|auto_generated|divider|divider|op_15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~12_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & (\Div0|auto_generated|divider|divider|op_15~11\ $ (GND))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_15~11\ & VCC))
-- \Div0|auto_generated|divider|divider|op_15~13\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & !\Div0|auto_generated|divider|divider|op_15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~11\,
	combout => \Div0|auto_generated|divider|divider|op_15~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~13\);

-- Location: LCCOMB_X27_Y23_N24
\Div0|auto_generated|divider|divider|op_15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~14_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & (!\Div0|auto_generated|divider|divider|op_15~13\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_15~13\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_15~15\ = CARRY((!\Div0|auto_generated|divider|divider|op_15~13\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~13\,
	combout => \Div0|auto_generated|divider|divider|op_15~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~15\);

-- Location: LCCOMB_X27_Y23_N26
\Div0|auto_generated|divider|divider|op_15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~16_combout\ = \Div0|auto_generated|divider|divider|op_15~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_15~15\,
	combout => \Div0|auto_generated|divider|divider|op_15~16_combout\);

-- Location: LCCOMB_X27_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[70]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~235_combout\ = (\Div0|auto_generated|divider|divider|op_15~14_combout\ & !\Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~235_combout\);

-- Location: LCCOMB_X27_Y22_N28
\Div0|auto_generated|divider|divider|StageOut[70]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ = (\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~234_combout\);

-- Location: LCCOMB_X27_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[69]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ = (\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~236_combout\);

-- Location: LCCOMB_X27_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[69]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~237_combout\ = (\Div0|auto_generated|divider|divider|op_15~12_combout\ & !\Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~237_combout\);

-- Location: LCCOMB_X28_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[68]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~239_combout\ = (\Div0|auto_generated|divider|divider|op_15~10_combout\ & !\Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~239_combout\);

-- Location: LCCOMB_X27_Y22_N2
\Div0|auto_generated|divider|divider|StageOut[68]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~238_combout\ = (\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~238_combout\);

-- Location: LCCOMB_X28_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[67]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & \Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~240_combout\);

-- Location: LCCOMB_X28_Y22_N12
\Div0|auto_generated|divider|divider|StageOut[67]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~241_combout\ = (\Div0|auto_generated|divider|divider|op_15~8_combout\ & !\Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~241_combout\);

-- Location: LCCOMB_X27_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[66]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~243_combout\ = (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Div0|auto_generated|divider|divider|op_15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~243_combout\);

-- Location: LCCOMB_X28_Y22_N18
\Div0|auto_generated|divider|divider|StageOut[66]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~242_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & \Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~242_combout\);

-- Location: LCCOMB_X28_Y22_N20
\Div0|auto_generated|divider|divider|StageOut[65]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~245_combout\ = (\Div0|auto_generated|divider|divider|op_15~4_combout\ & !\Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~245_combout\);

-- Location: LCCOMB_X27_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[65]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~244_combout\);

-- Location: LCCOMB_X28_Y22_N2
\Div0|auto_generated|divider|divider|StageOut[64]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~246_combout\ = (\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~246_combout\);

-- Location: LCCOMB_X28_Y22_N8
\Div0|auto_generated|divider|divider|StageOut[64]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~247_combout\ = (\Div0|auto_generated|divider|divider|op_15~2_combout\ & !\Div0|auto_generated|divider|divider|op_15~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~247_combout\);

-- Location: LCCOMB_X27_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[63]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~249_combout\ = (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Div0|auto_generated|divider|divider|op_15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~249_combout\);

-- Location: LCCOMB_X27_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[63]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~248_combout\ = (\Div0|auto_generated|divider|divider|op_15~16_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~248_combout\);

-- Location: LCCOMB_X27_Y22_N8
\Div0|auto_generated|divider|divider|op_16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_16~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_16~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~1\);

-- Location: LCCOMB_X27_Y22_N10
\Div0|auto_generated|divider|divider|op_16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[63]~249_combout\ & (((!\Div0|auto_generated|divider|divider|op_16~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[63]~249_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[63]~248_combout\ & (!\Div0|auto_generated|divider|divider|op_16~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[63]~248_combout\ & ((\Div0|auto_generated|divider|divider|op_16~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_16~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[63]~249_combout\ & !\Div0|auto_generated|divider|divider|StageOut[63]~248_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[63]~249_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[63]~248_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~1\,
	combout => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X27_Y22_N12
\Div0|auto_generated|divider|divider|op_16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~4_combout\ = (\Div0|auto_generated|divider|divider|op_16~3\ & (((\Div0|auto_generated|divider|divider|StageOut[64]~246_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~247_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_16~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[64]~246_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~247_combout\)))))
-- \Div0|auto_generated|divider|divider|op_16~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_16~3\ & ((\Div0|auto_generated|divider|divider|StageOut[64]~246_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~246_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[64]~247_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~3\,
	combout => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X27_Y22_N14
\Div0|auto_generated|divider|divider|op_16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[65]~245_combout\ & (((!\Div0|auto_generated|divider|divider|op_16~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[65]~245_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ & (!\Div0|auto_generated|divider|divider|op_16~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ & ((\Div0|auto_generated|divider|divider|op_16~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_16~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[65]~245_combout\ & !\Div0|auto_generated|divider|divider|StageOut[65]~244_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[65]~245_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~244_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~5\,
	combout => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X27_Y22_N16
\Div0|auto_generated|divider|divider|op_16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~8_combout\ = (\Div0|auto_generated|divider|divider|op_16~7\ & (((\Div0|auto_generated|divider|divider|StageOut[66]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[66]~242_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_16~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[66]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[66]~242_combout\)))))
-- \Div0|auto_generated|divider|divider|op_16~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_16~7\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[66]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~243_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~242_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~7\,
	combout => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X27_Y22_N18
\Div0|auto_generated|divider|divider|op_16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ & (((!\Div0|auto_generated|divider|divider|op_16~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[67]~241_combout\ & (!\Div0|auto_generated|divider|divider|op_16~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[67]~241_combout\ & ((\Div0|auto_generated|divider|divider|op_16~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_16~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ & !\Div0|auto_generated|divider|divider|StageOut[67]~241_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~240_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~241_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~9\,
	combout => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X27_Y22_N20
\Div0|auto_generated|divider|divider|op_16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~12_combout\ = (\Div0|auto_generated|divider|divider|op_16~11\ & (((\Div0|auto_generated|divider|divider|StageOut[68]~239_combout\) # (\Div0|auto_generated|divider|divider|StageOut[68]~238_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_16~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[68]~239_combout\) # (\Div0|auto_generated|divider|divider|StageOut[68]~238_combout\)))))
-- \Div0|auto_generated|divider|divider|op_16~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_16~11\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~239_combout\) # (\Div0|auto_generated|divider|divider|StageOut[68]~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~239_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~238_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~11\,
	combout => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X27_Y22_N22
\Div0|auto_generated|divider|divider|op_16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ & (((!\Div0|auto_generated|divider|divider|op_16~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[69]~237_combout\ & (!\Div0|auto_generated|divider|divider|op_16~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[69]~237_combout\ & ((\Div0|auto_generated|divider|divider|op_16~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_16~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ & !\Div0|auto_generated|divider|divider|StageOut[69]~237_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[69]~236_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~237_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~13\,
	combout => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~15\);

-- Location: LCCOMB_X27_Y22_N24
\Div0|auto_generated|divider|divider|op_16~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~235_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[70]~234_combout\) # (!\Div0|auto_generated|divider|divider|op_16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~235_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~234_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~15\,
	cout => \Div0|auto_generated|divider|divider|op_16~17_cout\);

-- Location: LCCOMB_X27_Y22_N26
\Div0|auto_generated|divider|divider|op_16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~18_combout\ = !\Div0|auto_generated|divider|divider|op_16~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_16~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_16~18_combout\);

-- Location: LCCOMB_X28_Y22_N10
\Div0|auto_generated|divider|divider|StageOut[79]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~250_combout\ = (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & \Div0|auto_generated|divider|divider|op_16~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~250_combout\);

-- Location: LCCOMB_X28_Y22_N28
\Div0|auto_generated|divider|divider|StageOut[79]~394\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~394_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Div0|auto_generated|divider|divider|op_15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~12_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~394_combout\);

-- Location: LCCOMB_X28_Y22_N26
\Div0|auto_generated|divider|divider|StageOut[78]~395\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~395_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Div0|auto_generated|divider|divider|op_15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~10_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~395_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[78]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~251_combout\ = (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & \Div0|auto_generated|divider|divider|op_16~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~251_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Div0|auto_generated|divider|divider|StageOut[77]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~252_combout\ = (\Div0|auto_generated|divider|divider|op_16~10_combout\ & !\Div0|auto_generated|divider|divider|op_16~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~252_combout\);

-- Location: LCCOMB_X28_Y22_N16
\Div0|auto_generated|divider|divider|StageOut[77]~396\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~396_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Div0|auto_generated|divider|divider|op_15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~8_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~396_combout\);

-- Location: LCCOMB_X28_Y22_N14
\Div0|auto_generated|divider|divider|StageOut[76]~397\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~397_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Div0|auto_generated|divider|divider|op_15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~6_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~397_combout\);

-- Location: LCCOMB_X29_Y22_N2
\Div0|auto_generated|divider|divider|StageOut[76]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~253_combout\ = (\Div0|auto_generated|divider|divider|op_16~8_combout\ & !\Div0|auto_generated|divider|divider|op_16~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~253_combout\);

-- Location: LCCOMB_X30_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[75]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~254_combout\ = (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & \Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~254_combout\);

-- Location: LCCOMB_X28_Y22_N24
\Div0|auto_generated|divider|divider|StageOut[75]~398\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~398_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Div0|auto_generated|divider|divider|op_15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_15~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~398_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[74]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~255_combout\ = (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & \Div0|auto_generated|divider|divider|op_16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~255_combout\);

-- Location: LCCOMB_X28_Y22_N22
\Div0|auto_generated|divider|divider|StageOut[74]~399\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~399_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Div0|auto_generated|divider|divider|op_15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~399_combout\);

-- Location: LCCOMB_X27_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[73]~400\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~400_combout\ = (\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Div0|auto_generated|divider|divider|op_15~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~16_combout\ & (\Div0|auto_generated|divider|divider|op_15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_15~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~400_combout\);

-- Location: LCCOMB_X29_Y22_N8
\Div0|auto_generated|divider|divider|StageOut[73]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~256_combout\ = (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & \Div0|auto_generated|divider|divider|op_16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~256_combout\);

-- Location: LCCOMB_X29_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[72]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~258_combout\ = (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & \Div0|auto_generated|divider|divider|op_16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~258_combout\);

-- Location: LCCOMB_X27_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[72]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~257_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & \Div0|auto_generated|divider|divider|op_16~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~257_combout\);

-- Location: LCCOMB_X29_Y22_N10
\Div0|auto_generated|divider|divider|op_17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_17~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_17~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~1\);

-- Location: LCCOMB_X29_Y22_N12
\Div0|auto_generated|divider|divider|op_17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[72]~258_combout\ & (((!\Div0|auto_generated|divider|divider|op_17~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[72]~258_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[72]~257_combout\ & (!\Div0|auto_generated|divider|divider|op_17~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[72]~257_combout\ & ((\Div0|auto_generated|divider|divider|op_17~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_17~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[72]~258_combout\ & !\Div0|auto_generated|divider|divider|StageOut[72]~257_combout\)) # (!\Div0|auto_generated|divider|divider|op_17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[72]~258_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~257_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~1\,
	combout => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~3\);

-- Location: LCCOMB_X29_Y22_N14
\Div0|auto_generated|divider|divider|op_17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~4_combout\ = (\Div0|auto_generated|divider|divider|op_17~3\ & (((\Div0|auto_generated|divider|divider|StageOut[73]~400_combout\) # (\Div0|auto_generated|divider|divider|StageOut[73]~256_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_17~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[73]~400_combout\) # (\Div0|auto_generated|divider|divider|StageOut[73]~256_combout\)))))
-- \Div0|auto_generated|divider|divider|op_17~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_17~3\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~400_combout\) # (\Div0|auto_generated|divider|divider|StageOut[73]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[73]~400_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~256_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~3\,
	combout => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~5\);

-- Location: LCCOMB_X29_Y22_N16
\Div0|auto_generated|divider|divider|op_17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[74]~255_combout\ & (((!\Div0|auto_generated|divider|divider|op_17~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[74]~255_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[74]~399_combout\ & (!\Div0|auto_generated|divider|divider|op_17~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[74]~399_combout\ & ((\Div0|auto_generated|divider|divider|op_17~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_17~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[74]~255_combout\ & !\Div0|auto_generated|divider|divider|StageOut[74]~399_combout\)) # (!\Div0|auto_generated|divider|divider|op_17~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~255_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~399_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~5\,
	combout => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~7\);

-- Location: LCCOMB_X29_Y22_N18
\Div0|auto_generated|divider|divider|op_17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~8_combout\ = (\Div0|auto_generated|divider|divider|op_17~7\ & (((\Div0|auto_generated|divider|divider|StageOut[75]~254_combout\) # (\Div0|auto_generated|divider|divider|StageOut[75]~398_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_17~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[75]~254_combout\) # (\Div0|auto_generated|divider|divider|StageOut[75]~398_combout\)))))
-- \Div0|auto_generated|divider|divider|op_17~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_17~7\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~254_combout\) # (\Div0|auto_generated|divider|divider|StageOut[75]~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~254_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~398_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~7\,
	combout => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~9\);

-- Location: LCCOMB_X29_Y22_N20
\Div0|auto_generated|divider|divider|op_17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[76]~397_combout\ & (((!\Div0|auto_generated|divider|divider|op_17~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[76]~397_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[76]~253_combout\ & (!\Div0|auto_generated|divider|divider|op_17~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[76]~253_combout\ & ((\Div0|auto_generated|divider|divider|op_17~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_17~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[76]~397_combout\ & !\Div0|auto_generated|divider|divider|StageOut[76]~253_combout\)) # (!\Div0|auto_generated|divider|divider|op_17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[76]~397_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[76]~253_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~9\,
	combout => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~11\);

-- Location: LCCOMB_X29_Y22_N22
\Div0|auto_generated|divider|divider|op_17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~12_combout\ = (\Div0|auto_generated|divider|divider|op_17~11\ & (((\Div0|auto_generated|divider|divider|StageOut[77]~252_combout\) # (\Div0|auto_generated|divider|divider|StageOut[77]~396_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_17~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[77]~252_combout\) # (\Div0|auto_generated|divider|divider|StageOut[77]~396_combout\)))))
-- \Div0|auto_generated|divider|divider|op_17~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_17~11\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~252_combout\) # (\Div0|auto_generated|divider|divider|StageOut[77]~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[77]~252_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~396_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~11\,
	combout => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~13\);

-- Location: LCCOMB_X29_Y22_N24
\Div0|auto_generated|divider|divider|op_17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[78]~395_combout\ & (((!\Div0|auto_generated|divider|divider|op_17~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[78]~395_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[78]~251_combout\ & (!\Div0|auto_generated|divider|divider|op_17~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[78]~251_combout\ & ((\Div0|auto_generated|divider|divider|op_17~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_17~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[78]~395_combout\ & !\Div0|auto_generated|divider|divider|StageOut[78]~251_combout\)) # (!\Div0|auto_generated|divider|divider|op_17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[78]~395_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[78]~251_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~13\,
	combout => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~15\);

-- Location: LCCOMB_X29_Y22_N26
\Div0|auto_generated|divider|divider|op_17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[79]~250_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[79]~394_combout\) # (!\Div0|auto_generated|divider|divider|op_17~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[79]~250_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[79]~394_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~15\,
	cout => \Div0|auto_generated|divider|divider|op_17~17_cout\);

-- Location: LCCOMB_X29_Y22_N28
\Div0|auto_generated|divider|divider|op_17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~18_combout\ = !\Div0|auto_generated|divider|divider|op_17~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_17~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_17~18_combout\);

-- Location: FF_X29_Y25_N31
\duty_prop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(9));

-- Location: LCCOMB_X29_Y25_N30
\duty_prop~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~3_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_17~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datac => duty_prop(9),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~3_combout\);

-- Location: LCCOMB_X28_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[88]~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~337_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[78]~395_combout\) # ((\Div0|auto_generated|divider|divider|op_16~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[78]~395_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~337_combout\);

-- Location: LCCOMB_X29_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[88]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~259_combout\ = (\Div0|auto_generated|divider|divider|op_17~14_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~259_combout\);

-- Location: LCCOMB_X29_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[87]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~260_combout\ = (\Div0|auto_generated|divider|divider|op_17~12_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~260_combout\);

-- Location: LCCOMB_X30_Y22_N0
\Div0|auto_generated|divider|divider|StageOut[87]~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~338_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~396_combout\) # ((\Div0|auto_generated|divider|divider|op_16~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~396_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~338_combout\);

-- Location: LCCOMB_X29_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[86]~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~339_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~397_combout\) # ((\Div0|auto_generated|divider|divider|op_16~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[76]~397_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~339_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[86]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~261_combout\ = (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & \Div0|auto_generated|divider|divider|op_17~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~261_combout\);

-- Location: LCCOMB_X29_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[85]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~262_combout\ = (\Div0|auto_generated|divider|divider|op_17~8_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~262_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Div0|auto_generated|divider|divider|StageOut[85]~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~340_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~398_combout\) # ((\Div0|auto_generated|divider|divider|op_16~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~398_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~340_combout\);

-- Location: LCCOMB_X30_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[84]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~263_combout\ = (\Div0|auto_generated|divider|divider|op_17~6_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~263_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[84]~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~341_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~399_combout\) # ((\Div0|auto_generated|divider|divider|op_16~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[74]~399_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~341_combout\);

-- Location: LCCOMB_X30_Y23_N10
\Div0|auto_generated|divider|divider|StageOut[83]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~264_combout\ = (\Div0|auto_generated|divider|divider|op_17~4_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~264_combout\);

-- Location: LCCOMB_X28_Y22_N6
\Div0|auto_generated|divider|divider|StageOut[83]~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~342_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~400_combout\) # ((!\Div0|auto_generated|divider|divider|op_16~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[73]~400_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~342_combout\);

-- Location: LCCOMB_X28_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[82]~401\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~401_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|op_16~18_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_16~18_combout\ & (\Div0|auto_generated|divider|divider|op_16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~401_combout\);

-- Location: LCCOMB_X30_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[82]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~265_combout\ = (\Div0|auto_generated|divider|divider|op_17~2_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~265_combout\);

-- Location: LCCOMB_X30_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[81]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~266_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & \Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~266_combout\);

-- Location: LCCOMB_X30_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[81]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~267_combout\ = (\Div0|auto_generated|divider|divider|op_17~0_combout\ & !\Div0|auto_generated|divider|divider|op_17~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_17~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~267_combout\);

-- Location: LCCOMB_X29_Y23_N6
\Div0|auto_generated|divider|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_1~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X29_Y23_N8
\Div0|auto_generated|divider|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[81]~266_combout\ & (((!\Div0|auto_generated|divider|divider|op_1~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[81]~266_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[81]~267_combout\ & (!\Div0|auto_generated|divider|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[81]~267_combout\ & ((\Div0|auto_generated|divider|divider|op_1~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_1~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[81]~266_combout\ & !\Div0|auto_generated|divider|divider|StageOut[81]~267_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[81]~266_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[81]~267_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X29_Y23_N10
\Div0|auto_generated|divider|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|op_1~3\ & (((\Div0|auto_generated|divider|divider|StageOut[82]~401_combout\) # (\Div0|auto_generated|divider|divider|StageOut[82]~265_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[82]~401_combout\) # (\Div0|auto_generated|divider|divider|StageOut[82]~265_combout\)))))
-- \Div0|auto_generated|divider|divider|op_1~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_1~3\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~401_combout\) # (\Div0|auto_generated|divider|divider|StageOut[82]~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~401_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~265_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X29_Y23_N12
\Div0|auto_generated|divider|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[83]~264_combout\ & (((!\Div0|auto_generated|divider|divider|op_1~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[83]~264_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[83]~342_combout\ & (!\Div0|auto_generated|divider|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[83]~342_combout\ & ((\Div0|auto_generated|divider|divider|op_1~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_1~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[83]~264_combout\ & !\Div0|auto_generated|divider|divider|StageOut[83]~342_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~264_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[83]~342_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X29_Y23_N14
\Div0|auto_generated|divider|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~8_combout\ = (\Div0|auto_generated|divider|divider|op_1~7\ & (((\Div0|auto_generated|divider|divider|StageOut[84]~263_combout\) # (\Div0|auto_generated|divider|divider|StageOut[84]~341_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[84]~263_combout\) # (\Div0|auto_generated|divider|divider|StageOut[84]~341_combout\)))))
-- \Div0|auto_generated|divider|divider|op_1~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_1~7\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~263_combout\) # (\Div0|auto_generated|divider|divider|StageOut[84]~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~263_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[84]~341_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X29_Y23_N16
\Div0|auto_generated|divider|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[85]~262_combout\ & (((!\Div0|auto_generated|divider|divider|op_1~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[85]~262_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[85]~340_combout\ & (!\Div0|auto_generated|divider|divider|op_1~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[85]~340_combout\ & ((\Div0|auto_generated|divider|divider|op_1~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_1~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[85]~262_combout\ & !\Div0|auto_generated|divider|divider|StageOut[85]~340_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[85]~262_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~340_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X29_Y23_N18
\Div0|auto_generated|divider|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~12_combout\ = (\Div0|auto_generated|divider|divider|op_1~11\ & (((\Div0|auto_generated|divider|divider|StageOut[86]~339_combout\) # (\Div0|auto_generated|divider|divider|StageOut[86]~261_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[86]~339_combout\) # (\Div0|auto_generated|divider|divider|StageOut[86]~261_combout\)))))
-- \Div0|auto_generated|divider|divider|op_1~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_1~11\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~339_combout\) # (\Div0|auto_generated|divider|divider|StageOut[86]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~339_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~261_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|divider|op_1~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X29_Y23_N20
\Div0|auto_generated|divider|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[87]~260_combout\ & (((!\Div0|auto_generated|divider|divider|op_1~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[87]~260_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[87]~338_combout\ & (!\Div0|auto_generated|divider|divider|op_1~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[87]~338_combout\ & ((\Div0|auto_generated|divider|divider|op_1~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_1~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[87]~260_combout\ & !\Div0|auto_generated|divider|divider|StageOut[87]~338_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~260_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[87]~338_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~13\,
	combout => \Div0|auto_generated|divider|divider|op_1~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X29_Y23_N22
\Div0|auto_generated|divider|divider|op_1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[88]~337_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[88]~259_combout\) # (!\Div0|auto_generated|divider|divider|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~337_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~259_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~15\,
	cout => \Div0|auto_generated|divider|divider|op_1~17_cout\);

-- Location: LCCOMB_X29_Y23_N24
\Div0|auto_generated|divider|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~18_combout\ = !\Div0|auto_generated|divider|divider|op_1~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_1~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_1~18_combout\);

-- Location: FF_X28_Y25_N23
\duty_prop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(8));

-- Location: LCCOMB_X28_Y25_N22
\duty_prop~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~4_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_1~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => duty_prop(8),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~4_combout\);

-- Location: LCCOMB_X29_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[97]~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~343_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[87]~338_combout\) # ((\Div0|auto_generated|divider|divider|op_17~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[87]~338_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~343_combout\);

-- Location: LCCOMB_X30_Y23_N18
\Div0|auto_generated|divider|divider|StageOut[97]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~268_combout\ = (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~268_combout\);

-- Location: LCCOMB_X29_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[96]~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~339_combout\) # ((\Div0|auto_generated|divider|divider|op_17~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~339_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~344_combout\);

-- Location: LCCOMB_X31_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[96]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~269_combout\ = (\Div0|auto_generated|divider|divider|op_1~12_combout\ & !\Div0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~269_combout\);

-- Location: LCCOMB_X30_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[95]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~270_combout\ = (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~270_combout\);

-- Location: LCCOMB_X29_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[95]~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~345_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[85]~340_combout\) # ((\Div0|auto_generated|divider|divider|op_17~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[85]~340_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~345_combout\);

-- Location: LCCOMB_X30_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[94]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~271_combout\ = (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~271_combout\);

-- Location: LCCOMB_X30_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[94]~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~341_combout\) # ((!\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~341_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~346_combout\);

-- Location: LCCOMB_X30_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[93]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~272_combout\ = (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~272_combout\);

-- Location: LCCOMB_X29_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[93]~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~347_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[83]~342_combout\) # ((\Div0|auto_generated|divider|divider|op_17~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[83]~342_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~347_combout\);

-- Location: LCCOMB_X30_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[92]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ = (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[92]~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~348_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~401_combout\) # ((!\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~401_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~348_combout\);

-- Location: LCCOMB_X30_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[91]~402\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~402_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & (\Div0|auto_generated|divider|divider|op_17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~0_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~402_combout\);

-- Location: LCCOMB_X30_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[91]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\ = (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & \Div0|auto_generated|divider|divider|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\);

-- Location: LCCOMB_X31_Y25_N16
\Div0|auto_generated|divider|divider|StageOut[90]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~276_combout\ = (\Div0|auto_generated|divider|divider|op_1~0_combout\ & !\Div0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~276_combout\);

-- Location: LCCOMB_X31_Y25_N6
\Div0|auto_generated|divider|divider|StageOut[90]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~275_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \Div0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~275_combout\);

-- Location: LCCOMB_X31_Y23_N0
\Div0|auto_generated|divider|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X31_Y23_N2
\Div0|auto_generated|divider|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[90]~276_combout\ & (((!\Div0|auto_generated|divider|divider|op_2~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[90]~276_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[90]~275_combout\ & (!\Div0|auto_generated|divider|divider|op_2~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[90]~275_combout\ & ((\Div0|auto_generated|divider|divider|op_2~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[90]~276_combout\ & !\Div0|auto_generated|divider|divider|StageOut[90]~275_combout\)) # (!\Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[90]~276_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[90]~275_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1\,
	combout => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X31_Y23_N4
\Div0|auto_generated|divider|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~4_combout\ = (\Div0|auto_generated|divider|divider|op_2~3\ & (((\Div0|auto_generated|divider|divider|StageOut[91]~402_combout\) # (\Div0|auto_generated|divider|divider|StageOut[91]~274_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[91]~402_combout\) # (\Div0|auto_generated|divider|divider|StageOut[91]~274_combout\)))))
-- \Div0|auto_generated|divider|divider|op_2~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~3\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~402_combout\) # (\Div0|auto_generated|divider|divider|StageOut[91]~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[91]~402_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~274_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3\,
	combout => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X31_Y23_N6
\Div0|auto_generated|divider|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ & (((!\Div0|auto_generated|divider|divider|op_2~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[92]~348_combout\ & (!\Div0|auto_generated|divider|divider|op_2~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[92]~348_combout\ & ((\Div0|auto_generated|divider|divider|op_2~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_2~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[92]~273_combout\ & !\Div0|auto_generated|divider|divider|StageOut[92]~348_combout\)) # (!\Div0|auto_generated|divider|divider|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[92]~273_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~348_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~5\,
	combout => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X31_Y23_N8
\Div0|auto_generated|divider|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~8_combout\ = (\Div0|auto_generated|divider|divider|op_2~7\ & (((\Div0|auto_generated|divider|divider|StageOut[93]~272_combout\) # (\Div0|auto_generated|divider|divider|StageOut[93]~347_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[93]~272_combout\) # (\Div0|auto_generated|divider|divider|StageOut[93]~347_combout\)))))
-- \Div0|auto_generated|divider|divider|op_2~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~7\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~272_combout\) # (\Div0|auto_generated|divider|divider|StageOut[93]~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[93]~272_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[93]~347_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~7\,
	combout => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X31_Y23_N10
\Div0|auto_generated|divider|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[94]~271_combout\ & (((!\Div0|auto_generated|divider|divider|op_2~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[94]~271_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ & (!\Div0|auto_generated|divider|divider|op_2~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ & ((\Div0|auto_generated|divider|divider|op_2~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_2~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[94]~271_combout\ & !\Div0|auto_generated|divider|divider|StageOut[94]~346_combout\)) # (!\Div0|auto_generated|divider|divider|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[94]~271_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~346_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~9\,
	combout => \Div0|auto_generated|divider|divider|op_2~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X31_Y23_N12
\Div0|auto_generated|divider|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~12_combout\ = (\Div0|auto_generated|divider|divider|op_2~11\ & (((\Div0|auto_generated|divider|divider|StageOut[95]~270_combout\) # (\Div0|auto_generated|divider|divider|StageOut[95]~345_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[95]~270_combout\) # (\Div0|auto_generated|divider|divider|StageOut[95]~345_combout\)))))
-- \Div0|auto_generated|divider|divider|op_2~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~11\ & ((\Div0|auto_generated|divider|divider|StageOut[95]~270_combout\) # (\Div0|auto_generated|divider|divider|StageOut[95]~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[95]~270_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[95]~345_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~11\,
	combout => \Div0|auto_generated|divider|divider|op_2~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X31_Y23_N14
\Div0|auto_generated|divider|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ & (((!\Div0|auto_generated|divider|divider|op_2~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[96]~269_combout\ & (!\Div0|auto_generated|divider|divider|op_2~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[96]~269_combout\ & ((\Div0|auto_generated|divider|divider|op_2~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_2~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ & !\Div0|auto_generated|divider|divider|StageOut[96]~269_combout\)) # (!\Div0|auto_generated|divider|divider|op_2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[96]~344_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[96]~269_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~13\,
	combout => \Div0|auto_generated|divider|divider|op_2~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X31_Y23_N16
\Div0|auto_generated|divider|divider|op_2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[97]~343_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[97]~268_combout\) # (!\Div0|auto_generated|divider|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[97]~343_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[97]~268_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~15\,
	cout => \Div0|auto_generated|divider|divider|op_2~17_cout\);

-- Location: LCCOMB_X31_Y23_N18
\Div0|auto_generated|divider|divider|op_2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~18_combout\ = !\Div0|auto_generated|divider|divider|op_2~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_2~18_combout\);

-- Location: FF_X28_Y25_N21
\duty_prop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(7));

-- Location: LCCOMB_X28_Y25_N20
\duty_prop~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~5_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_2~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => duty_prop(7),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~5_combout\);

-- Location: LCCOMB_X31_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[106]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~277_combout\ = (\Div0|auto_generated|divider|divider|op_2~14_combout\ & !\Div0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~277_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[106]~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~349_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[96]~344_combout\) # ((\Div0|auto_generated|divider|divider|op_1~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[96]~344_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~349_combout\);

-- Location: LCCOMB_X30_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[105]~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~350_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[95]~345_combout\) # ((\Div0|auto_generated|divider|divider|op_1~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[95]~345_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~350_combout\);

-- Location: LCCOMB_X31_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[105]~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~278_combout\ = (!\Div0|auto_generated|divider|divider|op_2~18_combout\ & \Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~278_combout\);

-- Location: LCCOMB_X30_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[104]~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~351_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[94]~346_combout\) # ((\Div0|auto_generated|divider|divider|op_1~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[94]~346_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~351_combout\);

-- Location: LCCOMB_X30_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[104]~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~279_combout\ = (!\Div0|auto_generated|divider|divider|op_2~18_combout\ & \Div0|auto_generated|divider|divider|op_2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~279_combout\);

-- Location: LCCOMB_X31_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[103]~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~280_combout\ = (!\Div0|auto_generated|divider|divider|op_2~18_combout\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~280_combout\);

-- Location: LCCOMB_X30_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[103]~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~352_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~347_combout\) # ((\Div0|auto_generated|divider|divider|op_1~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[93]~347_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~352_combout\);

-- Location: LCCOMB_X30_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[102]~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~353_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~348_combout\) # ((!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[92]~348_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~353_combout\);

-- Location: LCCOMB_X30_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[102]~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~281_combout\ = (!\Div0|auto_generated|divider|divider|op_2~18_combout\ & \Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~281_combout\);

-- Location: LCCOMB_X30_Y23_N20
\Div0|auto_generated|divider|divider|StageOut[101]~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~354_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~402_combout\) # ((!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[91]~402_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~354_combout\);

-- Location: LCCOMB_X31_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[101]~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~282_combout\ = (\Div0|auto_generated|divider|divider|op_2~4_combout\ & !\Div0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~282_combout\);

-- Location: LCCOMB_X30_Y24_N14
\Div0|auto_generated|divider|divider|StageOut[100]~403\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~403_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & (\Div0|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~403_combout\);

-- Location: LCCOMB_X31_Y23_N20
\Div0|auto_generated|divider|divider|StageOut[100]~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~283_combout\ = (!\Div0|auto_generated|divider|divider|op_2~18_combout\ & \Div0|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~283_combout\);

-- Location: LCCOMB_X31_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[99]~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~284_combout\ = (\Div0|auto_generated|divider|divider|op_2~18_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~284_combout\);

-- Location: LCCOMB_X31_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[99]~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~285_combout\ = (\Div0|auto_generated|divider|divider|op_2~0_combout\ & !\Div0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~285_combout\);

-- Location: LCCOMB_X31_Y24_N4
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X31_Y24_N6
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[99]~284_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[99]~284_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[99]~285_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[99]~285_combout\ & ((\Div0|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[99]~284_combout\ & !\Div0|auto_generated|divider|divider|StageOut[99]~285_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[99]~284_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[99]~285_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X31_Y24_N8
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = (\Div0|auto_generated|divider|divider|op_3~3\ & (((\Div0|auto_generated|divider|divider|StageOut[100]~403_combout\) # (\Div0|auto_generated|divider|divider|StageOut[100]~283_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[100]~403_combout\) # (\Div0|auto_generated|divider|divider|StageOut[100]~283_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~3\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~403_combout\) # (\Div0|auto_generated|divider|divider|StageOut[100]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[100]~403_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~283_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X31_Y24_N10
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[101]~354_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[101]~354_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[101]~282_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[101]~282_combout\ & ((\Div0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[101]~354_combout\ & !\Div0|auto_generated|divider|divider|StageOut[101]~282_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~354_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~282_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X31_Y24_N12
\Div0|auto_generated|divider|divider|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_combout\ = (\Div0|auto_generated|divider|divider|op_3~7\ & (((\Div0|auto_generated|divider|divider|StageOut[102]~353_combout\) # (\Div0|auto_generated|divider|divider|StageOut[102]~281_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[102]~353_combout\) # (\Div0|auto_generated|divider|divider|StageOut[102]~281_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~7\ & ((\Div0|auto_generated|divider|divider|StageOut[102]~353_combout\) # (\Div0|auto_generated|divider|divider|StageOut[102]~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~353_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~281_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~7\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X31_Y24_N14
\Div0|auto_generated|divider|divider|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[103]~280_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[103]~280_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[103]~352_combout\ & (!\Div0|auto_generated|divider|divider|op_3~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[103]~352_combout\ & ((\Div0|auto_generated|divider|divider|op_3~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[103]~280_combout\ & !\Div0|auto_generated|divider|divider|StageOut[103]~352_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~280_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[103]~352_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~9\,
	combout => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X31_Y24_N16
\Div0|auto_generated|divider|divider|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~12_combout\ = (\Div0|auto_generated|divider|divider|op_3~11\ & (((\Div0|auto_generated|divider|divider|StageOut[104]~351_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~279_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[104]~351_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~279_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~11\ & ((\Div0|auto_generated|divider|divider|StageOut[104]~351_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~351_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~279_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~11\,
	combout => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X31_Y24_N18
\Div0|auto_generated|divider|divider|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[105]~350_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[105]~350_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[105]~278_combout\ & (!\Div0|auto_generated|divider|divider|op_3~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[105]~278_combout\ & ((\Div0|auto_generated|divider|divider|op_3~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[105]~350_combout\ & !\Div0|auto_generated|divider|divider|StageOut[105]~278_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~350_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~278_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~13\,
	combout => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~15\);

-- Location: LCCOMB_X31_Y24_N20
\Div0|auto_generated|divider|divider|op_3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[106]~277_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[106]~349_combout\) # (!\Div0|auto_generated|divider|divider|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~277_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~349_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~15\,
	cout => \Div0|auto_generated|divider|divider|op_3~17_cout\);

-- Location: LCCOMB_X31_Y24_N22
\Div0|auto_generated|divider|divider|op_3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~18_combout\ = !\Div0|auto_generated|divider|divider|op_3~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~18_combout\);

-- Location: FF_X28_Y25_N31
\duty_prop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(6));

-- Location: LCCOMB_X28_Y25_N30
\duty_prop~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~6_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_3~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => duty_prop(6),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~6_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[115]~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~286_combout\ = (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & \Div0|auto_generated|divider|divider|op_3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~286_combout\);

-- Location: LCCOMB_X31_Y25_N10
\Div0|auto_generated|divider|divider|StageOut[115]~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~355_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~350_combout\) # ((\Div0|auto_generated|divider|divider|op_2~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~12_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[105]~350_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~355_combout\);

-- Location: LCCOMB_X30_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[114]~356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~356_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[104]~351_combout\) # ((\Div0|auto_generated|divider|divider|op_2~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~351_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~356_combout\);

-- Location: LCCOMB_X30_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[114]~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~287_combout\ = (\Div0|auto_generated|divider|divider|op_3~12_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~287_combout\);

-- Location: LCCOMB_X30_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[113]~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~288_combout\ = (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & \Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~288_combout\);

-- Location: LCCOMB_X31_Y25_N12
\Div0|auto_generated|divider|divider|StageOut[113]~357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~357_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[103]~352_combout\) # ((!\Div0|auto_generated|divider|divider|op_2~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[103]~352_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~357_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[112]~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~289_combout\ = (\Div0|auto_generated|divider|divider|op_3~8_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~289_combout\);

-- Location: LCCOMB_X30_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[112]~358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~358_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[102]~353_combout\) # ((\Div0|auto_generated|divider|divider|op_2~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~353_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~358_combout\);

-- Location: LCCOMB_X30_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[111]~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[111]~290_combout\ = (\Div0|auto_generated|divider|divider|op_3~6_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[111]~290_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[111]~359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[111]~359_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[101]~354_combout\) # ((\Div0|auto_generated|divider|divider|op_2~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~354_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[111]~359_combout\);

-- Location: LCCOMB_X30_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[110]~360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~360_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~403_combout\) # ((\Div0|auto_generated|divider|divider|op_2~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~403_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~360_combout\);

-- Location: LCCOMB_X30_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[110]~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~291_combout\ = (\Div0|auto_generated|divider|divider|op_3~4_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~291_combout\);

-- Location: LCCOMB_X31_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[109]~404\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~404_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|op_2~18_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\Div0|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~404_combout\);

-- Location: LCCOMB_X31_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[109]~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~292_combout\ = (\Div0|auto_generated|divider|divider|op_3~2_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~292_combout\);

-- Location: LCCOMB_X31_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[108]~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~294_combout\ = (\Div0|auto_generated|divider|divider|op_3~0_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~294_combout\);

-- Location: LCCOMB_X30_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[108]~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~293_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & \Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~293_combout\);

-- Location: LCCOMB_X30_Y25_N6
\Div0|auto_generated|divider|divider|op_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X30_Y25_N8
\Div0|auto_generated|divider|divider|op_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[108]~294_combout\ & (((!\Div0|auto_generated|divider|divider|op_4~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[108]~294_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[108]~293_combout\ & (!\Div0|auto_generated|divider|divider|op_4~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[108]~293_combout\ & ((\Div0|auto_generated|divider|divider|op_4~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[108]~294_combout\ & !\Div0|auto_generated|divider|divider|StageOut[108]~293_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~294_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~293_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1\,
	combout => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X30_Y25_N10
\Div0|auto_generated|divider|divider|op_4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~4_combout\ = (\Div0|auto_generated|divider|divider|op_4~3\ & (((\Div0|auto_generated|divider|divider|StageOut[109]~404_combout\) # (\Div0|auto_generated|divider|divider|StageOut[109]~292_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[109]~404_combout\) # (\Div0|auto_generated|divider|divider|StageOut[109]~292_combout\)))))
-- \Div0|auto_generated|divider|divider|op_4~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~3\ & ((\Div0|auto_generated|divider|divider|StageOut[109]~404_combout\) # (\Div0|auto_generated|divider|divider|StageOut[109]~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[109]~404_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[109]~292_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3\,
	combout => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X30_Y25_N12
\Div0|auto_generated|divider|divider|op_4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[110]~360_combout\ & (((!\Div0|auto_generated|divider|divider|op_4~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[110]~360_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[110]~291_combout\ & (!\Div0|auto_generated|divider|divider|op_4~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[110]~291_combout\ & ((\Div0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[110]~360_combout\ & !\Div0|auto_generated|divider|divider|StageOut[110]~291_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[110]~360_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[110]~291_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5\,
	combout => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X30_Y25_N14
\Div0|auto_generated|divider|divider|op_4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~8_combout\ = (\Div0|auto_generated|divider|divider|op_4~7\ & (((\Div0|auto_generated|divider|divider|StageOut[111]~290_combout\) # (\Div0|auto_generated|divider|divider|StageOut[111]~359_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[111]~290_combout\) # (\Div0|auto_generated|divider|divider|StageOut[111]~359_combout\)))))
-- \Div0|auto_generated|divider|divider|op_4~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~7\ & ((\Div0|auto_generated|divider|divider|StageOut[111]~290_combout\) # (\Div0|auto_generated|divider|divider|StageOut[111]~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[111]~290_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[111]~359_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~7\,
	combout => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X30_Y25_N16
\Div0|auto_generated|divider|divider|op_4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[112]~289_combout\ & (((!\Div0|auto_generated|divider|divider|op_4~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[112]~289_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[112]~358_combout\ & (!\Div0|auto_generated|divider|divider|op_4~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[112]~358_combout\ & ((\Div0|auto_generated|divider|divider|op_4~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[112]~289_combout\ & !\Div0|auto_generated|divider|divider|StageOut[112]~358_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[112]~289_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~358_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~9\,
	combout => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X30_Y25_N18
\Div0|auto_generated|divider|divider|op_4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~12_combout\ = (\Div0|auto_generated|divider|divider|op_4~11\ & (((\Div0|auto_generated|divider|divider|StageOut[113]~288_combout\) # (\Div0|auto_generated|divider|divider|StageOut[113]~357_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[113]~288_combout\) # (\Div0|auto_generated|divider|divider|StageOut[113]~357_combout\)))))
-- \Div0|auto_generated|divider|divider|op_4~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~11\ & ((\Div0|auto_generated|divider|divider|StageOut[113]~288_combout\) # (\Div0|auto_generated|divider|divider|StageOut[113]~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~288_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~357_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~11\,
	combout => \Div0|auto_generated|divider|divider|op_4~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X30_Y25_N20
\Div0|auto_generated|divider|divider|op_4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[114]~356_combout\ & (((!\Div0|auto_generated|divider|divider|op_4~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[114]~356_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[114]~287_combout\ & (!\Div0|auto_generated|divider|divider|op_4~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[114]~287_combout\ & ((\Div0|auto_generated|divider|divider|op_4~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[114]~356_combout\ & !\Div0|auto_generated|divider|divider|StageOut[114]~287_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~356_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~287_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~13\,
	combout => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~15\);

-- Location: LCCOMB_X30_Y25_N22
\Div0|auto_generated|divider|divider|op_4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[115]~286_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[115]~355_combout\) # (!\Div0|auto_generated|divider|divider|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~286_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~355_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~15\,
	cout => \Div0|auto_generated|divider|divider|op_4~17_cout\);

-- Location: LCCOMB_X30_Y25_N24
\Div0|auto_generated|divider|divider|op_4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~18_combout\ = !\Div0|auto_generated|divider|divider|op_4~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~18_combout\);

-- Location: FF_X29_Y25_N29
\duty_prop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(5));

-- Location: LCCOMB_X29_Y25_N28
\duty_prop~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~7_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_4~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => duty_prop(5),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~7_combout\);

-- Location: LCCOMB_X30_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[124]~361\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~361_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~356_combout\) # ((\Div0|auto_generated|divider|divider|op_3~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~356_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~361_combout\);

-- Location: LCCOMB_X31_Y25_N22
\Div0|auto_generated|divider|divider|StageOut[124]~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~295_combout\ = (!\Div0|auto_generated|divider|divider|op_4~18_combout\ & \Div0|auto_generated|divider|divider|op_4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~295_combout\);

-- Location: LCCOMB_X30_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[123]~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~296_combout\ = (!\Div0|auto_generated|divider|divider|op_4~18_combout\ & \Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~296_combout\);

-- Location: LCCOMB_X30_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[123]~362\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~362_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[113]~357_combout\) # ((!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[113]~357_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~362_combout\);

-- Location: LCCOMB_X29_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[122]~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~297_combout\ = (!\Div0|auto_generated|divider|divider|op_4~18_combout\ & \Div0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~297_combout\);

-- Location: LCCOMB_X30_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[122]~363\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~363_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[112]~358_combout\) # ((\Div0|auto_generated|divider|divider|op_3~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~358_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~363_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[121]~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~298_combout\ = (\Div0|auto_generated|divider|divider|op_4~8_combout\ & !\Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~298_combout\);

-- Location: LCCOMB_X31_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[121]~364\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~364_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[111]~359_combout\) # ((\Div0|auto_generated|divider|divider|op_3~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[111]~359_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~364_combout\);

-- Location: LCCOMB_X31_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[120]~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~299_combout\ = (\Div0|auto_generated|divider|divider|op_4~6_combout\ & !\Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~299_combout\);

-- Location: LCCOMB_X30_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[120]~365\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~365_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[110]~360_combout\) # ((!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[110]~360_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~365_combout\);

-- Location: LCCOMB_X31_Y25_N14
\Div0|auto_generated|divider|divider|StageOut[119]~366\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~366_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[109]~404_combout\) # ((\Div0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[109]~404_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~366_combout\);

-- Location: LCCOMB_X32_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[119]~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~300_combout\ = (!\Div0|auto_generated|divider|divider|op_4~18_combout\ & \Div0|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~300_combout\);

-- Location: LCCOMB_X31_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[118]~405\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~405_combout\ = (\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|op_3~18_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~405_combout\);

-- Location: LCCOMB_X29_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[118]~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~301_combout\ = (!\Div0|auto_generated|divider|divider|op_4~18_combout\ & \Div0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~301_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[117]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~302_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~302_combout\);

-- Location: LCCOMB_X29_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[117]~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~303_combout\ = (\Div0|auto_generated|divider|divider|op_4~0_combout\ & !\Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~303_combout\);

-- Location: LCCOMB_X32_Y25_N12
\Div0|auto_generated|divider|divider|op_5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X32_Y25_N14
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[117]~302_combout\ & (((!\Div0|auto_generated|divider|divider|op_5~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[117]~302_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[117]~303_combout\ & (!\Div0|auto_generated|divider|divider|op_5~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[117]~303_combout\ & ((\Div0|auto_generated|divider|divider|op_5~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[117]~302_combout\ & !\Div0|auto_generated|divider|divider|StageOut[117]~303_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~302_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~303_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X32_Y25_N16
\Div0|auto_generated|divider|divider|op_5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~4_combout\ = (\Div0|auto_generated|divider|divider|op_5~3\ & (((\Div0|auto_generated|divider|divider|StageOut[118]~405_combout\) # (\Div0|auto_generated|divider|divider|StageOut[118]~301_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[118]~405_combout\) # (\Div0|auto_generated|divider|divider|StageOut[118]~301_combout\)))))
-- \Div0|auto_generated|divider|divider|op_5~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_5~3\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~405_combout\) # (\Div0|auto_generated|divider|divider|StageOut[118]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[118]~405_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~301_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	combout => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X32_Y25_N18
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[119]~366_combout\ & (((!\Div0|auto_generated|divider|divider|op_5~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[119]~366_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[119]~300_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[119]~300_combout\ & ((\Div0|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[119]~366_combout\ & !\Div0|auto_generated|divider|divider|StageOut[119]~300_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~366_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~300_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X32_Y25_N20
\Div0|auto_generated|divider|divider|op_5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~8_combout\ = (\Div0|auto_generated|divider|divider|op_5~7\ & (((\Div0|auto_generated|divider|divider|StageOut[120]~299_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~365_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[120]~299_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~365_combout\)))))
-- \Div0|auto_generated|divider|divider|op_5~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_5~7\ & ((\Div0|auto_generated|divider|divider|StageOut[120]~299_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[120]~299_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[120]~365_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~7\,
	combout => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X32_Y25_N22
\Div0|auto_generated|divider|divider|op_5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[121]~298_combout\ & (((!\Div0|auto_generated|divider|divider|op_5~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[121]~298_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[121]~364_combout\ & (!\Div0|auto_generated|divider|divider|op_5~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[121]~364_combout\ & ((\Div0|auto_generated|divider|divider|op_5~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[121]~298_combout\ & !\Div0|auto_generated|divider|divider|StageOut[121]~364_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~298_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~364_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~9\,
	combout => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X32_Y25_N24
\Div0|auto_generated|divider|divider|op_5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~12_combout\ = (\Div0|auto_generated|divider|divider|op_5~11\ & (((\Div0|auto_generated|divider|divider|StageOut[122]~297_combout\) # (\Div0|auto_generated|divider|divider|StageOut[122]~363_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[122]~297_combout\) # (\Div0|auto_generated|divider|divider|StageOut[122]~363_combout\)))))
-- \Div0|auto_generated|divider|divider|op_5~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_5~11\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~297_combout\) # (\Div0|auto_generated|divider|divider|StageOut[122]~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[122]~297_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[122]~363_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~11\,
	combout => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X32_Y25_N26
\Div0|auto_generated|divider|divider|op_5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[123]~296_combout\ & (((!\Div0|auto_generated|divider|divider|op_5~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[123]~296_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[123]~362_combout\ & (!\Div0|auto_generated|divider|divider|op_5~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[123]~362_combout\ & ((\Div0|auto_generated|divider|divider|op_5~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[123]~296_combout\ & !\Div0|auto_generated|divider|divider|StageOut[123]~362_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[123]~296_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~362_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~13\,
	combout => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X32_Y25_N28
\Div0|auto_generated|divider|divider|op_5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[124]~361_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[124]~295_combout\) # (!\Div0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~361_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~295_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~15\,
	cout => \Div0|auto_generated|divider|divider|op_5~17_cout\);

-- Location: LCCOMB_X32_Y25_N30
\Div0|auto_generated|divider|divider|op_5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~18_combout\ = !\Div0|auto_generated|divider|divider|op_5~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~18_combout\);

-- Location: FF_X29_Y25_N27
\duty_prop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(4));

-- Location: LCCOMB_X29_Y25_N26
\duty_prop~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~8_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_5~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datac => duty_prop(4),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~8_combout\);

-- Location: LCCOMB_X31_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[133]~367\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~367_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~362_combout\) # ((\Div0|auto_generated|divider|divider|op_4~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~12_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[123]~362_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~367_combout\);

-- Location: LCCOMB_X31_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[133]~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~304_combout\ = (\Div0|auto_generated|divider|divider|op_5~14_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~304_combout\);

-- Location: LCCOMB_X31_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[132]~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~305_combout\ = (\Div0|auto_generated|divider|divider|op_5~12_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~305_combout\);

-- Location: LCCOMB_X29_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[132]~368\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~368_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~363_combout\) # ((\Div0|auto_generated|divider|divider|op_4~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[122]~363_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~368_combout\);

-- Location: LCCOMB_X31_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[131]~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~306_combout\ = (\Div0|auto_generated|divider|divider|op_5~10_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~306_combout\);

-- Location: LCCOMB_X31_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[131]~369\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~369_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[121]~364_combout\) # ((\Div0|auto_generated|divider|divider|op_4~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~364_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~369_combout\);

-- Location: LCCOMB_X31_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[130]~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~307_combout\ = (\Div0|auto_generated|divider|divider|op_5~8_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~307_combout\);

-- Location: LCCOMB_X31_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[130]~370\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~370_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[120]~365_combout\) # ((\Div0|auto_generated|divider|divider|op_4~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[120]~365_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~370_combout\);

-- Location: LCCOMB_X32_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[129]~371\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~371_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[119]~366_combout\) # ((\Div0|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[119]~366_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~371_combout\);

-- Location: LCCOMB_X31_Y27_N8
\Div0|auto_generated|divider|divider|StageOut[129]~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~308_combout\ = (\Div0|auto_generated|divider|divider|op_5~6_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~308_combout\);

-- Location: LCCOMB_X32_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[128]~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~309_combout\ = (!\Div0|auto_generated|divider|divider|op_5~18_combout\ & \Div0|auto_generated|divider|divider|op_5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~309_combout\);

-- Location: LCCOMB_X32_Y25_N10
\Div0|auto_generated|divider|divider|StageOut[128]~372\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~372_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~405_combout\) # ((\Div0|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[118]~405_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~372_combout\);

-- Location: LCCOMB_X29_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[127]~406\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~406_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Div0|auto_generated|divider|divider|op_4~18_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\Div0|auto_generated|divider|divider|op_4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~406_combout\);

-- Location: LCCOMB_X31_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[127]~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~310_combout\ = (\Div0|auto_generated|divider|divider|op_5~2_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~310_combout\);

-- Location: LCCOMB_X30_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[126]~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~312_combout\ = (\Div0|auto_generated|divider|divider|op_5~0_combout\ & !\Div0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~312_combout\);

-- Location: LCCOMB_X30_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[126]~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ = (\Div0|auto_generated|divider|divider|op_5~18_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\);

-- Location: LCCOMB_X28_Y26_N24
\Mult0|mult_core|romout[0][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~combout\ = \duty[3]~input_o\ $ (((\duty[2]~input_o\) # ((\duty[1]~input_o\) # (\duty[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][3]~combout\);

-- Location: LCCOMB_X31_Y27_N10
\Div0|auto_generated|divider|divider|op_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~0_combout\ = \Mult0|mult_core|romout[0][3]~combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_6~1\ = CARRY(\Mult0|mult_core|romout[0][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X31_Y27_N12
\Div0|auto_generated|divider|divider|op_6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[126]~312_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[126]~312_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ & (!\Div0|auto_generated|divider|divider|op_6~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ & ((\Div0|auto_generated|divider|divider|op_6~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[126]~312_combout\ & !\Div0|auto_generated|divider|divider|StageOut[126]~311_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~312_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1\,
	combout => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X31_Y27_N14
\Div0|auto_generated|divider|divider|op_6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~4_combout\ = (\Div0|auto_generated|divider|divider|op_6~3\ & (((\Div0|auto_generated|divider|divider|StageOut[127]~406_combout\) # (\Div0|auto_generated|divider|divider|StageOut[127]~310_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_6~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[127]~406_combout\) # (\Div0|auto_generated|divider|divider|StageOut[127]~310_combout\)))))
-- \Div0|auto_generated|divider|divider|op_6~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_6~3\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~406_combout\) # (\Div0|auto_generated|divider|divider|StageOut[127]~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[127]~406_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~310_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3\,
	combout => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X31_Y27_N16
\Div0|auto_generated|divider|divider|op_6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[128]~309_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[128]~309_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[128]~372_combout\ & (!\Div0|auto_generated|divider|divider|op_6~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[128]~372_combout\ & ((\Div0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[128]~309_combout\ & !\Div0|auto_generated|divider|divider|StageOut[128]~372_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~309_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~372_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~5\,
	combout => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X31_Y27_N18
\Div0|auto_generated|divider|divider|op_6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~8_combout\ = (\Div0|auto_generated|divider|divider|op_6~7\ & (((\Div0|auto_generated|divider|divider|StageOut[129]~371_combout\) # (\Div0|auto_generated|divider|divider|StageOut[129]~308_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_6~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[129]~371_combout\) # (\Div0|auto_generated|divider|divider|StageOut[129]~308_combout\)))))
-- \Div0|auto_generated|divider|divider|op_6~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_6~7\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~371_combout\) # (\Div0|auto_generated|divider|divider|StageOut[129]~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~371_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[129]~308_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~7\,
	combout => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X31_Y27_N20
\Div0|auto_generated|divider|divider|op_6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[130]~307_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[130]~307_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[130]~370_combout\ & (!\Div0|auto_generated|divider|divider|op_6~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[130]~370_combout\ & ((\Div0|auto_generated|divider|divider|op_6~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[130]~307_combout\ & !\Div0|auto_generated|divider|divider|StageOut[130]~370_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~307_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~370_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~9\,
	combout => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X31_Y27_N22
\Div0|auto_generated|divider|divider|op_6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~12_combout\ = (\Div0|auto_generated|divider|divider|op_6~11\ & (((\Div0|auto_generated|divider|divider|StageOut[131]~306_combout\) # (\Div0|auto_generated|divider|divider|StageOut[131]~369_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_6~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[131]~306_combout\) # (\Div0|auto_generated|divider|divider|StageOut[131]~369_combout\)))))
-- \Div0|auto_generated|divider|divider|op_6~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_6~11\ & ((\Div0|auto_generated|divider|divider|StageOut[131]~306_combout\) # (\Div0|auto_generated|divider|divider|StageOut[131]~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[131]~306_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[131]~369_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~11\,
	combout => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X31_Y27_N24
\Div0|auto_generated|divider|divider|op_6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[132]~305_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[132]~305_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[132]~368_combout\ & (!\Div0|auto_generated|divider|divider|op_6~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[132]~368_combout\ & ((\Div0|auto_generated|divider|divider|op_6~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[132]~305_combout\ & !\Div0|auto_generated|divider|divider|StageOut[132]~368_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[132]~305_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~368_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~13\,
	combout => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X31_Y27_N26
\Div0|auto_generated|divider|divider|op_6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[133]~367_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[133]~304_combout\) # (!\Div0|auto_generated|divider|divider|op_6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[133]~367_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~304_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~15\,
	cout => \Div0|auto_generated|divider|divider|op_6~17_cout\);

-- Location: LCCOMB_X31_Y27_N28
\Div0|auto_generated|divider|divider|op_6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~18_combout\ = !\Div0|auto_generated|divider|divider|op_6~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~18_combout\);

-- Location: FF_X29_Y25_N25
\duty_prop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(3));

-- Location: LCCOMB_X29_Y25_N24
\duty_prop~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~9_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_6~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => duty_prop(3),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~9_combout\);

-- Location: LCCOMB_X31_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[142]~373\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~373_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~368_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~368_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~373_combout\);

-- Location: LCCOMB_X31_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[142]~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~313_combout\ = (\Div0|auto_generated|divider|divider|op_6~14_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~313_combout\);

-- Location: LCCOMB_X31_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[141]~374\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~374_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[131]~369_combout\) # ((\Div0|auto_generated|divider|divider|op_5~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[131]~369_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~374_combout\);

-- Location: LCCOMB_X32_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[141]~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~314_combout\ = (\Div0|auto_generated|divider|divider|op_6~12_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~314_combout\);

-- Location: LCCOMB_X32_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[140]~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~315_combout\ = (\Div0|auto_generated|divider|divider|op_6~10_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~315_combout\);

-- Location: LCCOMB_X31_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[140]~375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~375_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[130]~370_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[130]~370_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~375_combout\);

-- Location: LCCOMB_X32_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[139]~376\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~376_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~371_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~371_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~376_combout\);

-- Location: LCCOMB_X32_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[139]~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~316_combout\ = (\Div0|auto_generated|divider|divider|op_6~8_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~316_combout\);

-- Location: LCCOMB_X30_Y27_N12
\Div0|auto_generated|divider|divider|StageOut[138]~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~317_combout\ = (\Div0|auto_generated|divider|divider|op_6~6_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~317_combout\);

-- Location: LCCOMB_X32_Y25_N6
\Div0|auto_generated|divider|divider|StageOut[138]~377\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~377_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~372_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~372_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~377_combout\);

-- Location: LCCOMB_X30_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[137]~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~318_combout\ = (\Div0|auto_generated|divider|divider|op_6~4_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~318_combout\);

-- Location: LCCOMB_X31_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[137]~378\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~378_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~406_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[127]~406_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~378_combout\);

-- Location: LCCOMB_X31_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[136]~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~319_combout\ = (!\Div0|auto_generated|divider|divider|op_6~18_combout\ & \Div0|auto_generated|divider|divider|op_6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~319_combout\);

-- Location: LCCOMB_X30_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[136]~407\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~407_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~18_combout\ & (\Div0|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~407_combout\);

-- Location: LCCOMB_X30_Y27_N16
\Div0|auto_generated|divider|divider|StageOut[135]~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~321_combout\ = (\Div0|auto_generated|divider|divider|op_6~0_combout\ & !\Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~321_combout\);

-- Location: LCCOMB_X28_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[135]~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~320_combout\ = (\Div0|auto_generated|divider|divider|op_6~18_combout\ & \Mult0|mult_core|romout[0][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datad => \Mult0|mult_core|romout[0][3]~combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~320_combout\);

-- Location: LCCOMB_X28_Y26_N8
\Mult0|mult_core|romout[0][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][2]~combout\ = \duty[2]~input_o\ $ (((\duty[1]~input_o\) # (\duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[1]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][2]~combout\);

-- Location: LCCOMB_X32_Y27_N6
\Div0|auto_generated|divider|divider|op_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~0_combout\ = \Mult0|mult_core|romout[0][2]~combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_7~1\ = CARRY(\Mult0|mult_core|romout[0][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][2]~combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X32_Y27_N8
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[135]~321_combout\ & (((!\Div0|auto_generated|divider|divider|op_7~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[135]~321_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[135]~320_combout\ & (!\Div0|auto_generated|divider|divider|op_7~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[135]~320_combout\ & ((\Div0|auto_generated|divider|divider|op_7~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[135]~321_combout\ & !\Div0|auto_generated|divider|divider|StageOut[135]~320_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~321_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~320_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X32_Y27_N10
\Div0|auto_generated|divider|divider|op_7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~4_combout\ = (\Div0|auto_generated|divider|divider|op_7~3\ & (((\Div0|auto_generated|divider|divider|StageOut[136]~319_combout\) # (\Div0|auto_generated|divider|divider|StageOut[136]~407_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[136]~319_combout\) # (\Div0|auto_generated|divider|divider|StageOut[136]~407_combout\)))))
-- \Div0|auto_generated|divider|divider|op_7~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_7~3\ & ((\Div0|auto_generated|divider|divider|StageOut[136]~319_combout\) # (\Div0|auto_generated|divider|divider|StageOut[136]~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~319_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~407_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	combout => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X32_Y27_N12
\Div0|auto_generated|divider|divider|op_7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[137]~318_combout\ & (((!\Div0|auto_generated|divider|divider|op_7~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[137]~318_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[137]~378_combout\ & (!\Div0|auto_generated|divider|divider|op_7~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[137]~378_combout\ & ((\Div0|auto_generated|divider|divider|op_7~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[137]~318_combout\ & !\Div0|auto_generated|divider|divider|StageOut[137]~378_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~318_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[137]~378_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~5\,
	combout => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X32_Y27_N14
\Div0|auto_generated|divider|divider|op_7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~8_combout\ = (\Div0|auto_generated|divider|divider|op_7~7\ & (((\Div0|auto_generated|divider|divider|StageOut[138]~317_combout\) # (\Div0|auto_generated|divider|divider|StageOut[138]~377_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[138]~317_combout\) # (\Div0|auto_generated|divider|divider|StageOut[138]~377_combout\)))))
-- \Div0|auto_generated|divider|divider|op_7~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_7~7\ & ((\Div0|auto_generated|divider|divider|StageOut[138]~317_combout\) # (\Div0|auto_generated|divider|divider|StageOut[138]~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~317_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~377_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~7\,
	combout => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X32_Y27_N16
\Div0|auto_generated|divider|divider|op_7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[139]~376_combout\ & (((!\Div0|auto_generated|divider|divider|op_7~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[139]~376_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[139]~316_combout\ & (!\Div0|auto_generated|divider|divider|op_7~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[139]~316_combout\ & ((\Div0|auto_generated|divider|divider|op_7~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[139]~376_combout\ & !\Div0|auto_generated|divider|divider|StageOut[139]~316_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[139]~376_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[139]~316_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~9\,
	combout => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X32_Y27_N18
\Div0|auto_generated|divider|divider|op_7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~12_combout\ = (\Div0|auto_generated|divider|divider|op_7~11\ & (((\Div0|auto_generated|divider|divider|StageOut[140]~315_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~375_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[140]~315_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~375_combout\)))))
-- \Div0|auto_generated|divider|divider|op_7~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_7~11\ & ((\Div0|auto_generated|divider|divider|StageOut[140]~315_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~315_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[140]~375_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~11\,
	combout => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X32_Y27_N20
\Div0|auto_generated|divider|divider|op_7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[141]~374_combout\ & (((!\Div0|auto_generated|divider|divider|op_7~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[141]~374_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[141]~314_combout\ & (!\Div0|auto_generated|divider|divider|op_7~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[141]~314_combout\ & ((\Div0|auto_generated|divider|divider|op_7~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[141]~374_combout\ & !\Div0|auto_generated|divider|divider|StageOut[141]~314_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~374_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~314_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~13\,
	combout => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X32_Y27_N22
\Div0|auto_generated|divider|divider|op_7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[142]~373_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[142]~313_combout\) # (!\Div0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[142]~373_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~313_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~15\,
	cout => \Div0|auto_generated|divider|divider|op_7~17_cout\);

-- Location: LCCOMB_X32_Y27_N24
\Div0|auto_generated|divider|divider|op_7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~18_combout\ = !\Div0|auto_generated|divider|divider|op_7~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~18_combout\);

-- Location: FF_X28_Y25_N17
\duty_prop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(2));

-- Location: LCCOMB_X28_Y25_N16
\duty_prop~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~10_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_7~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => duty_prop(2),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~10_combout\);

-- Location: LCCOMB_X32_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[151]~379\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~379_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[141]~374_combout\) # ((!\Div0|auto_generated|divider|divider|op_6~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[141]~374_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~379_combout\);

-- Location: LCCOMB_X29_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[151]~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~322_combout\ = (\Div0|auto_generated|divider|divider|op_7~14_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~322_combout\);

-- Location: LCCOMB_X29_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[150]~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~323_combout\ = (\Div0|auto_generated|divider|divider|op_7~12_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~323_combout\);

-- Location: LCCOMB_X32_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[150]~380\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~380_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[140]~375_combout\) # ((\Div0|auto_generated|divider|divider|op_6~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~375_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~380_combout\);

-- Location: LCCOMB_X32_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[149]~381\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[149]~381_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[139]~376_combout\) # ((!\Div0|auto_generated|divider|divider|op_6~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[139]~376_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[149]~381_combout\);

-- Location: LCCOMB_X30_Y27_N10
\Div0|auto_generated|divider|divider|StageOut[149]~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[149]~324_combout\ = (\Div0|auto_generated|divider|divider|op_7~10_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[149]~324_combout\);

-- Location: LCCOMB_X30_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[148]~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~325_combout\ = (\Div0|auto_generated|divider|divider|op_7~8_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~325_combout\);

-- Location: LCCOMB_X30_Y27_N8
\Div0|auto_generated|divider|divider|StageOut[148]~382\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~382_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[138]~377_combout\) # ((\Div0|auto_generated|divider|divider|op_6~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[138]~377_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~382_combout\);

-- Location: LCCOMB_X30_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[147]~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~326_combout\ = (\Div0|auto_generated|divider|divider|op_7~6_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~326_combout\);

-- Location: LCCOMB_X30_Y27_N22
\Div0|auto_generated|divider|divider|StageOut[147]~383\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~383_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[137]~378_combout\) # ((!\Div0|auto_generated|divider|divider|op_6~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~378_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~383_combout\);

-- Location: LCCOMB_X30_Y27_N20
\Div0|auto_generated|divider|divider|StageOut[146]~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~327_combout\ = (\Div0|auto_generated|divider|divider|op_7~4_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~327_combout\);

-- Location: LCCOMB_X30_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[146]~384\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~384_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[136]~407_combout\) # ((!\Div0|auto_generated|divider|divider|op_6~18_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~407_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~384_combout\);

-- Location: LCCOMB_X30_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[145]~408\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~408_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & ((\Div0|auto_generated|divider|divider|op_6~18_combout\ & (\Mult0|mult_core|romout[0][3]~combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_6~18_combout\ & ((\Div0|auto_generated|divider|divider|op_6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~408_combout\);

-- Location: LCCOMB_X30_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[145]~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~328_combout\ = (\Div0|auto_generated|divider|divider|op_7~2_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~328_combout\);

-- Location: LCCOMB_X28_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[144]~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[144]~329_combout\ = (\Div0|auto_generated|divider|divider|op_7~0_combout\ & !\Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[144]~329_combout\);

-- Location: LCCOMB_X28_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[144]~385\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[144]~385_combout\ = (\Div0|auto_generated|divider|divider|op_7~18_combout\ & (\duty[2]~input_o\ $ (((\duty[1]~input_o\) # (\duty[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	datab => \duty[1]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[144]~385_combout\);

-- Location: LCCOMB_X30_Y26_N14
\Mult0|mult_core|romout[0][1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][1]~12_combout\ = \duty[0]~input_o\ $ (\duty[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datac => \duty[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][1]~12_combout\);

-- Location: LCCOMB_X29_Y27_N10
\Div0|auto_generated|divider|divider|op_8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~0_combout\ = \Mult0|mult_core|romout[0][1]~12_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\Mult0|mult_core|romout[0][1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][1]~12_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X29_Y27_N12
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[144]~329_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[144]~329_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[144]~385_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[144]~385_combout\ & ((\Div0|auto_generated|divider|divider|op_8~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[144]~329_combout\ & !\Div0|auto_generated|divider|divider|StageOut[144]~385_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[144]~329_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[144]~385_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X29_Y27_N14
\Div0|auto_generated|divider|divider|op_8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~4_combout\ = (\Div0|auto_generated|divider|divider|op_8~3\ & (((\Div0|auto_generated|divider|divider|StageOut[145]~408_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~328_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[145]~408_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~328_combout\)))))
-- \Div0|auto_generated|divider|divider|op_8~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_8~3\ & ((\Div0|auto_generated|divider|divider|StageOut[145]~408_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~408_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~328_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	combout => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X29_Y27_N16
\Div0|auto_generated|divider|divider|op_8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[146]~327_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[146]~327_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[146]~384_combout\ & (!\Div0|auto_generated|divider|divider|op_8~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[146]~384_combout\ & ((\Div0|auto_generated|divider|divider|op_8~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_8~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[146]~327_combout\ & !\Div0|auto_generated|divider|divider|StageOut[146]~384_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[146]~327_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~384_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~5\,
	combout => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X29_Y27_N18
\Div0|auto_generated|divider|divider|op_8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~8_combout\ = (\Div0|auto_generated|divider|divider|op_8~7\ & (((\Div0|auto_generated|divider|divider|StageOut[147]~326_combout\) # (\Div0|auto_generated|divider|divider|StageOut[147]~383_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[147]~326_combout\) # (\Div0|auto_generated|divider|divider|StageOut[147]~383_combout\)))))
-- \Div0|auto_generated|divider|divider|op_8~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_8~7\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~326_combout\) # (\Div0|auto_generated|divider|divider|StageOut[147]~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~326_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~383_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~7\,
	combout => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X29_Y27_N20
\Div0|auto_generated|divider|divider|op_8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[148]~325_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[148]~325_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[148]~382_combout\ & (!\Div0|auto_generated|divider|divider|op_8~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[148]~382_combout\ & ((\Div0|auto_generated|divider|divider|op_8~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_8~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[148]~325_combout\ & !\Div0|auto_generated|divider|divider|StageOut[148]~382_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[148]~325_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~382_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~9\,
	combout => \Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X29_Y27_N22
\Div0|auto_generated|divider|divider|op_8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~12_combout\ = (\Div0|auto_generated|divider|divider|op_8~11\ & (((\Div0|auto_generated|divider|divider|StageOut[149]~381_combout\) # (\Div0|auto_generated|divider|divider|StageOut[149]~324_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[149]~381_combout\) # (\Div0|auto_generated|divider|divider|StageOut[149]~324_combout\)))))
-- \Div0|auto_generated|divider|divider|op_8~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_8~11\ & ((\Div0|auto_generated|divider|divider|StageOut[149]~381_combout\) # (\Div0|auto_generated|divider|divider|StageOut[149]~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[149]~381_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[149]~324_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~11\,
	combout => \Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X29_Y27_N24
\Div0|auto_generated|divider|divider|op_8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[150]~323_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~13\)))) # (!\Div0|auto_generated|divider|divider|StageOut[150]~323_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[150]~380_combout\ & (!\Div0|auto_generated|divider|divider|op_8~13\)) # (!\Div0|auto_generated|divider|divider|StageOut[150]~380_combout\ & ((\Div0|auto_generated|divider|divider|op_8~13\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_8~15\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[150]~323_combout\ & !\Div0|auto_generated|divider|divider|StageOut[150]~380_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[150]~323_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[150]~380_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~13\,
	combout => \Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X29_Y27_N26
\Div0|auto_generated|divider|divider|op_8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[151]~379_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[151]~322_combout\) # (!\Div0|auto_generated|divider|divider|op_8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~379_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[151]~322_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~15\,
	cout => \Div0|auto_generated|divider|divider|op_8~17_cout\);

-- Location: LCCOMB_X29_Y27_N28
\Div0|auto_generated|divider|divider|op_8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~18_combout\ = !\Div0|auto_generated|divider|divider|op_8~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~18_combout\);

-- Location: FF_X28_Y25_N7
\duty_prop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(1));

-- Location: LCCOMB_X28_Y25_N6
\duty_prop~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~11_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_8~18_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datac => duty_prop(1),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~11_combout\);

-- Location: LCCOMB_X29_Y27_N8
\Div0|auto_generated|divider|divider|StageOut[160]~386\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[160]~386_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[150]~380_combout\) # ((\Div0|auto_generated|divider|divider|op_7~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[150]~380_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[160]~386_combout\);

-- Location: LCCOMB_X28_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[160]~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[160]~330_combout\ = (\Div0|auto_generated|divider|divider|op_8~14_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[160]~330_combout\);

-- Location: LCCOMB_X29_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[159]~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[159]~331_combout\ = (\Div0|auto_generated|divider|divider|op_8~12_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[159]~331_combout\);

-- Location: LCCOMB_X29_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[159]~387\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[159]~387_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[149]~381_combout\) # ((\Div0|auto_generated|divider|divider|op_7~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[149]~381_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[159]~387_combout\);

-- Location: LCCOMB_X29_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[158]~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[158]~332_combout\ = (\Div0|auto_generated|divider|divider|op_8~10_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[158]~332_combout\);

-- Location: LCCOMB_X30_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[158]~388\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[158]~388_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[148]~382_combout\) # ((\Div0|auto_generated|divider|divider|op_7~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~382_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[158]~388_combout\);

-- Location: LCCOMB_X30_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[157]~389\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[157]~389_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~383_combout\) # ((\Div0|auto_generated|divider|divider|op_7~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~383_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[157]~389_combout\);

-- Location: LCCOMB_X28_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[157]~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[157]~333_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[157]~333_combout\);

-- Location: LCCOMB_X30_Y27_N14
\Div0|auto_generated|divider|divider|StageOut[156]~390\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[156]~390_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[146]~384_combout\) # ((\Div0|auto_generated|divider|divider|op_7~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~384_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[156]~390_combout\);

-- Location: LCCOMB_X28_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[156]~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[156]~334_combout\ = (\Div0|auto_generated|divider|divider|op_8~6_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[156]~334_combout\);

-- Location: LCCOMB_X28_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[155]~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[155]~335_combout\ = (\Div0|auto_generated|divider|divider|op_8~4_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[155]~335_combout\);

-- Location: LCCOMB_X30_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[155]~391\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[155]~391_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[145]~408_combout\) # ((\Div0|auto_generated|divider|divider|op_7~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~408_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[155]~391_combout\);

-- Location: LCCOMB_X28_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[154]~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[154]~336_combout\ = (\Div0|auto_generated|divider|divider|op_8~2_combout\ & !\Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[154]~336_combout\);

-- Location: LCCOMB_X28_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[154]~392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[154]~392_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[144]~385_combout\) # ((\Div0|auto_generated|divider|divider|op_7~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[144]~385_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[154]~392_combout\);

-- Location: LCCOMB_X28_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[153]~393\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~393_combout\ = (\Div0|auto_generated|divider|divider|op_8~18_combout\ & (\duty[1]~input_o\ $ (((\duty[0]~input_o\))))) # (!\Div0|auto_generated|divider|divider|op_8~18_combout\ & 
-- (((\Div0|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \duty[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~393_combout\);

-- Location: LCCOMB_X28_Y27_N8
\Div0|auto_generated|divider|divider|op_9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_cout\ = CARRY((\duty[0]~input_o\ & \Div0|auto_generated|divider|divider|StageOut[153]~393_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[153]~393_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_9~1_cout\);

-- Location: LCCOMB_X28_Y27_N10
\Div0|auto_generated|divider|divider|op_9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~3_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[154]~336_combout\ & !\Div0|auto_generated|divider|divider|StageOut[154]~392_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[154]~336_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[154]~392_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3_cout\);

-- Location: LCCOMB_X28_Y27_N12
\Div0|auto_generated|divider|divider|op_9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_9~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[155]~335_combout\) # (\Div0|auto_generated|divider|divider|StageOut[155]~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[155]~335_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[155]~391_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5_cout\);

-- Location: LCCOMB_X28_Y27_N14
\Div0|auto_generated|divider|divider|op_9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[156]~390_combout\ & !\Div0|auto_generated|divider|divider|StageOut[156]~334_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[156]~390_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[156]~334_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~7_cout\);

-- Location: LCCOMB_X28_Y27_N16
\Div0|auto_generated|divider|divider|op_9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_9~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[157]~389_combout\) # (\Div0|auto_generated|divider|divider|StageOut[157]~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[157]~389_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[157]~333_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~7_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~9_cout\);

-- Location: LCCOMB_X28_Y27_N18
\Div0|auto_generated|divider|divider|op_9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~11_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[158]~332_combout\ & !\Div0|auto_generated|divider|divider|StageOut[158]~388_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[158]~332_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[158]~388_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~9_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~11_cout\);

-- Location: LCCOMB_X28_Y27_N20
\Div0|auto_generated|divider|divider|op_9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~13_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_9~11_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[159]~331_combout\) # (\Div0|auto_generated|divider|divider|StageOut[159]~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[159]~331_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[159]~387_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~11_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~13_cout\);

-- Location: LCCOMB_X28_Y27_N22
\Div0|auto_generated|divider|divider|op_9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[160]~386_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[160]~330_combout\ & !\Div0|auto_generated|divider|divider|op_9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[160]~386_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[160]~330_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~13_cout\,
	cout => \Div0|auto_generated|divider|divider|op_9~15_cout\);

-- Location: LCCOMB_X28_Y27_N24
\Div0|auto_generated|divider|divider|op_9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~16_combout\ = \Div0|auto_generated|divider|divider|op_9~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~15_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~16_combout\);

-- Location: FF_X29_Y25_N23
\duty_prop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(0));

-- Location: LCCOMB_X29_Y25_N22
\duty_prop~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~12_combout\ = (\Equal1~3_combout\ & (!\Div0|auto_generated|divider|divider|op_9~16_combout\)) # (!\Equal1~3_combout\ & ((duty_prop(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~16_combout\,
	datac => duty_prop(0),
	datad => \Equal1~3_combout\,
	combout => \duty_prop~12_combout\);

-- Location: LCCOMB_X29_Y25_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\duty_prop~12_combout\ & !count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~12_combout\,
	datab => count(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y25_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((count(1) & ((!\LessThan0~1_cout\) # (!\duty_prop~11_combout\))) # (!count(1) & (!\duty_prop~11_combout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \duty_prop~11_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y25_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\duty_prop~10_combout\ & ((!\LessThan0~3_cout\) # (!count(2)))) # (!\duty_prop~10_combout\ & (!count(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~10_combout\,
	datab => count(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y25_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((count(3) & ((!\LessThan0~5_cout\) # (!\duty_prop~9_combout\))) # (!count(3) & (!\duty_prop~9_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \duty_prop~9_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y25_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\duty_prop~8_combout\ & ((!\LessThan0~7_cout\) # (!count(4)))) # (!\duty_prop~8_combout\ & (!count(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~8_combout\,
	datab => count(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y25_N10
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((count(5) & ((!\LessThan0~9_cout\) # (!\duty_prop~7_combout\))) # (!count(5) & (!\duty_prop~7_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \duty_prop~7_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y25_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((count(6) & (\duty_prop~6_combout\ & !\LessThan0~11_cout\)) # (!count(6) & ((\duty_prop~6_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \duty_prop~6_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y25_N14
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((count(7) & ((!\LessThan0~13_cout\) # (!\duty_prop~5_combout\))) # (!count(7) & (!\duty_prop~5_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \duty_prop~5_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X29_Y25_N16
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((count(8) & (\duty_prop~4_combout\ & !\LessThan0~15_cout\)) # (!count(8) & ((\duty_prop~4_combout\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \duty_prop~4_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X29_Y25_N18
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\duty_prop~3_combout\ & (count(9) & !\LessThan0~17_cout\)) # (!\duty_prop~3_combout\ & ((count(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~3_combout\,
	datab => count(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X29_Y25_N20
\LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = (count(10) & (!\LessThan0~19_cout\ & \duty_prop~2_combout\)) # (!count(10) & ((\duty_prop~2_combout\) # (!\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => \duty_prop~2_combout\,
	cin => \LessThan0~19_cout\,
	combout => \LessThan0~20_combout\);

-- Location: FF_X29_Y25_N21
s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s~q\);

ww_pwm_out <= \pwm_out~output_o\;
END structure;


