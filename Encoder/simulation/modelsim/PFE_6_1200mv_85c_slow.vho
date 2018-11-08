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

-- DATE "11/06/2018 14:23:25"

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

ENTITY 	PFE IS
    PORT (
	CLK : IN std_logic;
	CHAN_A : IN std_logic;
	CHAN_B : IN std_logic;
	RAZ : IN std_logic;
	LED_A : OUT std_logic;
	LED_B : OUT std_logic;
	DIGIT_0 : OUT std_logic_vector(6 DOWNTO 0);
	DIGIT_1 : OUT std_logic_vector(6 DOWNTO 0);
	DIGIT_2 : OUT std_logic_vector(6 DOWNTO 0);
	DIGIT_3 : OUT std_logic_vector(6 DOWNTO 0);
	OUTPUT_LEDS : OUT std_logic_vector(3 DOWNTO 0)
	);
END PFE;

-- Design Ports Information
-- LED_A	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT_3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_LEDS[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_LEDS[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_LEDS[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_LEDS[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CHAN_A	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CHAN_B	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAZ	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PFE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CHAN_A : std_logic;
SIGNAL ww_CHAN_B : std_logic;
SIGNAL ww_RAZ : std_logic;
SIGNAL ww_LED_A : std_logic;
SIGNAL ww_LED_B : std_logic;
SIGNAL ww_DIGIT_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DIGIT_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DIGIT_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DIGIT_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_OUTPUT_LEDS : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_A~output_o\ : std_logic;
SIGNAL \LED_B~output_o\ : std_logic;
SIGNAL \DIGIT_0[0]~output_o\ : std_logic;
SIGNAL \DIGIT_0[1]~output_o\ : std_logic;
SIGNAL \DIGIT_0[2]~output_o\ : std_logic;
SIGNAL \DIGIT_0[3]~output_o\ : std_logic;
SIGNAL \DIGIT_0[4]~output_o\ : std_logic;
SIGNAL \DIGIT_0[5]~output_o\ : std_logic;
SIGNAL \DIGIT_0[6]~output_o\ : std_logic;
SIGNAL \DIGIT_1[0]~output_o\ : std_logic;
SIGNAL \DIGIT_1[1]~output_o\ : std_logic;
SIGNAL \DIGIT_1[2]~output_o\ : std_logic;
SIGNAL \DIGIT_1[3]~output_o\ : std_logic;
SIGNAL \DIGIT_1[4]~output_o\ : std_logic;
SIGNAL \DIGIT_1[5]~output_o\ : std_logic;
SIGNAL \DIGIT_1[6]~output_o\ : std_logic;
SIGNAL \DIGIT_2[0]~output_o\ : std_logic;
SIGNAL \DIGIT_2[1]~output_o\ : std_logic;
SIGNAL \DIGIT_2[2]~output_o\ : std_logic;
SIGNAL \DIGIT_2[3]~output_o\ : std_logic;
SIGNAL \DIGIT_2[4]~output_o\ : std_logic;
SIGNAL \DIGIT_2[5]~output_o\ : std_logic;
SIGNAL \DIGIT_2[6]~output_o\ : std_logic;
SIGNAL \DIGIT_3[0]~output_o\ : std_logic;
SIGNAL \DIGIT_3[1]~output_o\ : std_logic;
SIGNAL \DIGIT_3[2]~output_o\ : std_logic;
SIGNAL \DIGIT_3[3]~output_o\ : std_logic;
SIGNAL \DIGIT_3[4]~output_o\ : std_logic;
SIGNAL \DIGIT_3[5]~output_o\ : std_logic;
SIGNAL \DIGIT_3[6]~output_o\ : std_logic;
SIGNAL \OUTPUT_LEDS[0]~output_o\ : std_logic;
SIGNAL \OUTPUT_LEDS[1]~output_o\ : std_logic;
SIGNAL \OUTPUT_LEDS[2]~output_o\ : std_logic;
SIGNAL \OUTPUT_LEDS[3]~output_o\ : std_logic;
SIGNAL \CHAN_A~input_o\ : std_logic;
SIGNAL \CHAN_B~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RAZ~input_o\ : std_logic;
SIGNAL \A_CURR[1]~1_combout\ : std_logic;
SIGNAL \A_CURR[0]~5_combout\ : std_logic;
SIGNAL \A_CURR[0]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \A_CURR[0]~_emulated_q\ : std_logic;
SIGNAL \A_CURR[0]~4_combout\ : std_logic;
SIGNAL \A_CURR[1]~3_combout\ : std_logic;
SIGNAL \A_CURR[1]~_emulated_q\ : std_logic;
SIGNAL \A_CURR[1]~2_combout\ : std_logic;
SIGNAL \B_LAST~1_combout\ : std_logic;
SIGNAL \B_CURR[0]~3_combout\ : std_logic;
SIGNAL \B_CURR[0]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \B_CURR[0]~_emulated_q\ : std_logic;
SIGNAL \B_CURR[0]~2_combout\ : std_logic;
SIGNAL \B_CURR[1]~1_combout\ : std_logic;
SIGNAL \B_CURR[1]~_emulated_q\ : std_logic;
SIGNAL \B_CURR[1]~0_combout\ : std_logic;
SIGNAL \B_LAST~3_combout\ : std_logic;
SIGNAL \timer[0]~9_combout\ : std_logic;
SIGNAL \CompteurTicks~3_combout\ : std_logic;
SIGNAL \timer[0]~15_combout\ : std_logic;
SIGNAL \timer[0]~10\ : std_logic;
SIGNAL \timer[1]~11_combout\ : std_logic;
SIGNAL \timer[1]~12\ : std_logic;
SIGNAL \timer[2]~13_combout\ : std_logic;
SIGNAL \timer[2]~14\ : std_logic;
SIGNAL \timer[3]~16_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \timer[3]~17\ : std_logic;
SIGNAL \timer[4]~18_combout\ : std_logic;
SIGNAL \timer[4]~19\ : std_logic;
SIGNAL \timer[5]~20_combout\ : std_logic;
SIGNAL \timer[5]~21\ : std_logic;
SIGNAL \timer[6]~22_combout\ : std_logic;
SIGNAL \timer[6]~23\ : std_logic;
SIGNAL \timer[7]~24_combout\ : std_logic;
SIGNAL \timer[7]~25\ : std_logic;
SIGNAL \timer[8]~26_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \B_LAST~5_combout\ : std_logic;
SIGNAL \B_LAST~_emulated_q\ : std_logic;
SIGNAL \B_LAST~2_combout\ : std_logic;
SIGNAL \CompteurTicks~0_combout\ : std_logic;
SIGNAL \count[0]~11_combout\ : std_logic;
SIGNAL \count[0]~feeder_combout\ : std_logic;
SIGNAL \A_LAST~1_combout\ : std_logic;
SIGNAL \A_LAST~_emulated_q\ : std_logic;
SIGNAL \A_LAST~0_combout\ : std_logic;
SIGNAL \CompteurTicks~1_combout\ : std_logic;
SIGNAL \CompteurTicks~2_combout\ : std_logic;
SIGNAL \count[0]~12\ : std_logic;
SIGNAL \count[1]~13_combout\ : std_logic;
SIGNAL \count[1]~14\ : std_logic;
SIGNAL \count[2]~15_combout\ : std_logic;
SIGNAL \count[2]~16\ : std_logic;
SIGNAL \count[3]~17_combout\ : std_logic;
SIGNAL \count[3]~18\ : std_logic;
SIGNAL \count[4]~19_combout\ : std_logic;
SIGNAL \count[4]~20\ : std_logic;
SIGNAL \count[5]~21_combout\ : std_logic;
SIGNAL \count[5]~22\ : std_logic;
SIGNAL \count[6]~23_combout\ : std_logic;
SIGNAL \count[6]~24\ : std_logic;
SIGNAL \count[7]~25_combout\ : std_logic;
SIGNAL \count[7]~26\ : std_logic;
SIGNAL \count[8]~27_combout\ : std_logic;
SIGNAL \count[8]~28\ : std_logic;
SIGNAL \count[9]~29_combout\ : std_logic;
SIGNAL \count[9]~30\ : std_logic;
SIGNAL \count[10]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[55]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[55]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \count_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \count_2~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \count_2~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \count_2~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~5_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \count_1~1_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~86_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~87_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~89_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~88_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~91_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~90_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~93_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~92_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~150_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~149_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~95_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~97_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~96_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~99_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~98_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~142_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~100_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~151_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~102_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~103_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~104_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~105_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~106_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~143_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~107_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~152_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[35]~110_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[35]~111_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~153_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~144_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~112_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~113_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[41]~114_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[41]~115_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~117_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~116_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~118_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[47]~154_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[47]~119_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~120_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~121_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~122_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~123_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~124_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~146_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~155_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~125_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~126_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~127_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~128_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~129_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~130_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~147_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[57]~131_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[56]~133_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[56]~132_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[55]~135_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[55]~134_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[63]~148_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[63]~136_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~137_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~157_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~138_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~139_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~140_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~141_combout\ : std_logic;
SIGNAL \count_1[0]~3_cout\ : std_logic;
SIGNAL \count_1[0]~5_cout\ : std_logic;
SIGNAL \count_1[0]~7_cout\ : std_logic;
SIGNAL \count_1[0]~9_cout\ : std_logic;
SIGNAL \count_1[0]~10_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \count_1[1]~12_combout\ : std_logic;
SIGNAL \count_1[3]~14_combout\ : std_logic;
SIGNAL \count_1[2]~13_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~3_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7_cout\ : std_logic;
SIGNAL \Add9~9_cout\ : std_logic;
SIGNAL \Add9~11_cout\ : std_logic;
SIGNAL \Add9~13_cout\ : std_logic;
SIGNAL \Add9~15_cout\ : std_logic;
SIGNAL \Add9~17_cout\ : std_logic;
SIGNAL \Add9~19_cout\ : std_logic;
SIGNAL \Add9~21_cout\ : std_logic;
SIGNAL \Add9~23_cout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \count_0~4_combout\ : std_logic;
SIGNAL \count_0[0]~6\ : std_logic;
SIGNAL \count_0[1]~7_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \count_0[1]~8\ : std_logic;
SIGNAL \count_0[2]~9_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \count_0[2]~10\ : std_logic;
SIGNAL \count_0[3]~11_combout\ : std_logic;
SIGNAL \count_0[0]~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \count_leds[2]~3_cout\ : std_logic;
SIGNAL \count_leds[2]~5_cout\ : std_logic;
SIGNAL \count_leds[2]~6_combout\ : std_logic;
SIGNAL \count_leds[2]~7\ : std_logic;
SIGNAL \count_leds[3]~8_combout\ : std_logic;
SIGNAL count : std_logic_vector(10 DOWNTO 0);
SIGNAL count_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL count_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL timer : std_logic_vector(8 DOWNTO 0);
SIGNAL count_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL count_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_CLK <= CLK;
ww_CHAN_A <= CHAN_A;
ww_CHAN_B <= CHAN_B;
ww_RAZ <= RAZ;
LED_A <= ww_LED_A;
LED_B <= ww_LED_B;
DIGIT_0 <= ww_DIGIT_0;
DIGIT_1 <= ww_DIGIT_1;
DIGIT_2 <= ww_DIGIT_2;
DIGIT_3 <= ww_DIGIT_3;
OUTPUT_LEDS <= ww_OUTPUT_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_count(10) <= NOT count(10);

-- Location: IOOBUF_X0_Y27_N16
\LED_A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHAN_A~input_o\,
	devoe => ww_devoe,
	o => \LED_A~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LED_B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHAN_B~input_o\,
	devoe => ww_devoe,
	o => \LED_B~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\DIGIT_0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\DIGIT_0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\DIGIT_0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\DIGIT_0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\DIGIT_0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\DIGIT_0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\DIGIT_0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\DIGIT_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DIGIT_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\DIGIT_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\DIGIT_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\DIGIT_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\DIGIT_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\DIGIT_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_1[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\DIGIT_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\DIGIT_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\DIGIT_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\DIGIT_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\DIGIT_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\DIGIT_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\DIGIT_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \DIGIT_2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\DIGIT_3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\DIGIT_3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\DIGIT_3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\DIGIT_3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\DIGIT_3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\DIGIT_3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DIGIT_3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\DIGIT_3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_count(10),
	devoe => ww_devoe,
	o => \DIGIT_3[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\OUTPUT_LEDS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \OUTPUT_LEDS[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\OUTPUT_LEDS[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \OUTPUT_LEDS[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\OUTPUT_LEDS[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_leds(2),
	devoe => ww_devoe,
	o => \OUTPUT_LEDS[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\OUTPUT_LEDS[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_leds(3),
	devoe => ww_devoe,
	o => \OUTPUT_LEDS[3]~output_o\);

-- Location: IOIBUF_X28_Y0_N15
\CHAN_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CHAN_A,
	o => \CHAN_A~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\CHAN_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CHAN_B,
	o => \CHAN_B~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\RAZ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAZ,
	o => \RAZ~input_o\);

-- Location: LCCOMB_X11_Y18_N26
\A_CURR[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_CURR[1]~1_combout\ = (\RAZ~input_o\ & (\A_CURR[1]~1_combout\)) # (!\RAZ~input_o\ & ((\CHAN_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_CURR[1]~1_combout\,
	datac => \CHAN_A~input_o\,
	datad => \RAZ~input_o\,
	combout => \A_CURR[1]~1_combout\);

-- Location: LCCOMB_X11_Y18_N14
\A_CURR[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_CURR[0]~5_combout\ = \CHAN_A~input_o\ $ (\A_CURR[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHAN_A~input_o\,
	datad => \A_CURR[1]~1_combout\,
	combout => \A_CURR[0]~5_combout\);

-- Location: LCCOMB_X9_Y21_N24
\A_CURR[0]~_emulatedfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_CURR[0]~_emulatedfeeder_combout\ = \A_CURR[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_CURR[0]~5_combout\,
	combout => \A_CURR[0]~_emulatedfeeder_combout\);

-- Location: FF_X9_Y21_N25
\A_CURR[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \A_CURR[0]~_emulatedfeeder_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_CURR[0]~_emulated_q\);

-- Location: LCCOMB_X11_Y18_N18
\A_CURR[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_CURR[0]~4_combout\ = (\RAZ~input_o\ & (\A_CURR[0]~_emulated_q\ $ (((\A_CURR[1]~1_combout\))))) # (!\RAZ~input_o\ & (((\CHAN_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_CURR[0]~_emulated_q\,
	datab => \CHAN_A~input_o\,
	datac => \RAZ~input_o\,
	datad => \A_CURR[1]~1_combout\,
	combout => \A_CURR[0]~4_combout\);

-- Location: LCCOMB_X11_Y18_N8
\A_CURR[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_CURR[1]~3_combout\ = \A_CURR[1]~1_combout\ $ (\A_CURR[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_CURR[1]~1_combout\,
	datad => \A_CURR[0]~4_combout\,
	combout => \A_CURR[1]~3_combout\);

-- Location: FF_X11_Y18_N9
\A_CURR[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \A_CURR[1]~3_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_CURR[1]~_emulated_q\);

-- Location: LCCOMB_X11_Y18_N2
\A_CURR[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_CURR[1]~2_combout\ = (\RAZ~input_o\ & (\A_CURR[1]~_emulated_q\ $ (((\A_CURR[1]~1_combout\))))) # (!\RAZ~input_o\ & (((\CHAN_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_CURR[1]~_emulated_q\,
	datab => \CHAN_A~input_o\,
	datac => \A_CURR[1]~1_combout\,
	datad => \RAZ~input_o\,
	combout => \A_CURR[1]~2_combout\);

-- Location: LCCOMB_X11_Y18_N4
\B_LAST~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_LAST~1_combout\ = (\RAZ~input_o\ & ((\B_LAST~1_combout\))) # (!\RAZ~input_o\ & (\CHAN_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHAN_B~input_o\,
	datac => \B_LAST~1_combout\,
	datad => \RAZ~input_o\,
	combout => \B_LAST~1_combout\);

-- Location: LCCOMB_X9_Y21_N4
\B_CURR[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_CURR[0]~3_combout\ = \B_LAST~1_combout\ $ (\CHAN_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_LAST~1_combout\,
	datad => \CHAN_B~input_o\,
	combout => \B_CURR[0]~3_combout\);

-- Location: LCCOMB_X9_Y21_N30
\B_CURR[0]~_emulatedfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_CURR[0]~_emulatedfeeder_combout\ = \B_CURR[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_CURR[0]~3_combout\,
	combout => \B_CURR[0]~_emulatedfeeder_combout\);

-- Location: FF_X9_Y21_N31
\B_CURR[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \B_CURR[0]~_emulatedfeeder_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_CURR[0]~_emulated_q\);

-- Location: LCCOMB_X11_Y18_N0
\B_CURR[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_CURR[0]~2_combout\ = (\RAZ~input_o\ & (\B_CURR[0]~_emulated_q\ $ (((\B_LAST~1_combout\))))) # (!\RAZ~input_o\ & (((\CHAN_B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_CURR[0]~_emulated_q\,
	datab => \CHAN_B~input_o\,
	datac => \B_LAST~1_combout\,
	datad => \RAZ~input_o\,
	combout => \B_CURR[0]~2_combout\);

-- Location: LCCOMB_X11_Y18_N12
\B_CURR[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_CURR[1]~1_combout\ = \B_LAST~1_combout\ $ (\B_CURR[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_LAST~1_combout\,
	datad => \B_CURR[0]~2_combout\,
	combout => \B_CURR[1]~1_combout\);

-- Location: FF_X11_Y18_N13
\B_CURR[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \B_CURR[1]~1_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_CURR[1]~_emulated_q\);

-- Location: LCCOMB_X11_Y18_N30
\B_CURR[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_CURR[1]~0_combout\ = (\RAZ~input_o\ & (\B_CURR[1]~_emulated_q\ $ (((\B_LAST~1_combout\))))) # (!\RAZ~input_o\ & (((\CHAN_B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_CURR[1]~_emulated_q\,
	datab => \CHAN_B~input_o\,
	datac => \B_LAST~1_combout\,
	datad => \RAZ~input_o\,
	combout => \B_CURR[1]~0_combout\);

-- Location: LCCOMB_X10_Y18_N22
\B_LAST~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_LAST~3_combout\ = \B_CURR[1]~0_combout\ $ (\B_LAST~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_CURR[1]~0_combout\,
	datac => \B_LAST~1_combout\,
	combout => \B_LAST~3_combout\);

-- Location: LCCOMB_X10_Y18_N4
\timer[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[0]~9_combout\ = timer(0) $ (VCC)
-- \timer[0]~10\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \timer[0]~9_combout\,
	cout => \timer[0]~10\);

-- Location: LCCOMB_X10_Y18_N2
\CompteurTicks~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CompteurTicks~3_combout\ = (\A_CURR[1]~2_combout\ & ((\B_CURR[0]~2_combout\ $ (\B_CURR[1]~0_combout\)) # (!\A_CURR[0]~4_combout\))) # (!\A_CURR[1]~2_combout\ & ((\A_CURR[0]~4_combout\) # (\B_CURR[0]~2_combout\ $ (\B_CURR[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_CURR[1]~2_combout\,
	datab => \B_CURR[0]~2_combout\,
	datac => \B_CURR[1]~0_combout\,
	datad => \A_CURR[0]~4_combout\,
	combout => \CompteurTicks~3_combout\);

-- Location: LCCOMB_X10_Y18_N30
\timer[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[0]~15_combout\ = (\RAZ~input_o\ & !\B_LAST~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAZ~input_o\,
	datad => \B_LAST~5_combout\,
	combout => \timer[0]~15_combout\);

-- Location: FF_X10_Y18_N5
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[0]~9_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X10_Y18_N6
\timer[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[1]~11_combout\ = (timer(1) & (!\timer[0]~10\)) # (!timer(1) & ((\timer[0]~10\) # (GND)))
-- \timer[1]~12\ = CARRY((!\timer[0]~10\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(1),
	datad => VCC,
	cin => \timer[0]~10\,
	combout => \timer[1]~11_combout\,
	cout => \timer[1]~12\);

-- Location: FF_X10_Y18_N7
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[1]~11_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LCCOMB_X10_Y18_N8
\timer[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[2]~13_combout\ = (timer(2) & (\timer[1]~12\ $ (GND))) # (!timer(2) & (!\timer[1]~12\ & VCC))
-- \timer[2]~14\ = CARRY((timer(2) & !\timer[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \timer[1]~12\,
	combout => \timer[2]~13_combout\,
	cout => \timer[2]~14\);

-- Location: FF_X10_Y18_N9
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[2]~13_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LCCOMB_X10_Y18_N10
\timer[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[3]~16_combout\ = (timer(3) & (!\timer[2]~14\)) # (!timer(3) & ((\timer[2]~14\) # (GND)))
-- \timer[3]~17\ = CARRY((!\timer[2]~14\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \timer[2]~14\,
	combout => \timer[3]~16_combout\,
	cout => \timer[3]~17\);

-- Location: FF_X10_Y18_N11
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[3]~16_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X10_Y18_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!timer(3) & (!timer(0) & (timer(2) & !timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datab => timer(0),
	datac => timer(2),
	datad => timer(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y18_N12
\timer[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[4]~18_combout\ = (timer(4) & (\timer[3]~17\ $ (GND))) # (!timer(4) & (!\timer[3]~17\ & VCC))
-- \timer[4]~19\ = CARRY((timer(4) & !\timer[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datad => VCC,
	cin => \timer[3]~17\,
	combout => \timer[4]~18_combout\,
	cout => \timer[4]~19\);

-- Location: FF_X10_Y18_N13
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[4]~18_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LCCOMB_X10_Y18_N14
\timer[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[5]~20_combout\ = (timer(5) & (!\timer[4]~19\)) # (!timer(5) & ((\timer[4]~19\) # (GND)))
-- \timer[5]~21\ = CARRY((!\timer[4]~19\) # (!timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(5),
	datad => VCC,
	cin => \timer[4]~19\,
	combout => \timer[5]~20_combout\,
	cout => \timer[5]~21\);

-- Location: FF_X10_Y18_N15
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[5]~20_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X10_Y18_N16
\timer[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[6]~22_combout\ = (timer(6) & (\timer[5]~21\ $ (GND))) # (!timer(6) & (!\timer[5]~21\ & VCC))
-- \timer[6]~23\ = CARRY((timer(6) & !\timer[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(6),
	datad => VCC,
	cin => \timer[5]~21\,
	combout => \timer[6]~22_combout\,
	cout => \timer[6]~23\);

-- Location: FF_X10_Y18_N17
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[6]~22_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X10_Y18_N18
\timer[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[7]~24_combout\ = (timer(7) & (!\timer[6]~23\)) # (!timer(7) & ((\timer[6]~23\) # (GND)))
-- \timer[7]~25\ = CARRY((!\timer[6]~23\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(7),
	datad => VCC,
	cin => \timer[6]~23\,
	combout => \timer[7]~24_combout\,
	cout => \timer[7]~25\);

-- Location: FF_X10_Y18_N19
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[7]~24_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X10_Y18_N20
\timer[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer[8]~26_combout\ = \timer[7]~25\ $ (!timer(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timer(8),
	cin => \timer[7]~25\,
	combout => \timer[8]~26_combout\);

-- Location: FF_X10_Y18_N21
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer[8]~26_combout\,
	sclr => \CompteurTicks~3_combout\,
	ena => \timer[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X10_Y18_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (timer(4) & (timer(5) & (timer(7) & timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datab => timer(5),
	datac => timer(7),
	datad => timer(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y18_N28
\B_LAST~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_LAST~5_combout\ = (\Equal0~0_combout\ & (timer(8) & (\Equal0~1_combout\ & !\CompteurTicks~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => timer(8),
	datac => \Equal0~1_combout\,
	datad => \CompteurTicks~3_combout\,
	combout => \B_LAST~5_combout\);

-- Location: FF_X10_Y18_N23
\B_LAST~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \B_LAST~3_combout\,
	clrn => \RAZ~input_o\,
	ena => \B_LAST~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_LAST~_emulated_q\);

-- Location: LCCOMB_X11_Y18_N10
\B_LAST~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B_LAST~2_combout\ = (\RAZ~input_o\ & ((\B_LAST~_emulated_q\ $ (\B_LAST~1_combout\)))) # (!\RAZ~input_o\ & (\CHAN_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHAN_B~input_o\,
	datab => \B_LAST~_emulated_q\,
	datac => \B_LAST~1_combout\,
	datad => \RAZ~input_o\,
	combout => \B_LAST~2_combout\);

-- Location: LCCOMB_X11_Y18_N16
\CompteurTicks~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CompteurTicks~0_combout\ = \A_CURR[1]~2_combout\ $ (\B_LAST~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_CURR[1]~2_combout\,
	datad => \B_LAST~2_combout\,
	combout => \CompteurTicks~0_combout\);

-- Location: LCCOMB_X12_Y18_N6
\count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~11_combout\ = count(0) $ (VCC)
-- \count[0]~12\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~11_combout\,
	cout => \count[0]~12\);

-- Location: LCCOMB_X12_Y18_N28
\count[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~feeder_combout\ = \count[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count[0]~11_combout\,
	combout => \count[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y18_N0
\A_LAST~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_LAST~1_combout\ = \A_CURR[1]~2_combout\ $ (\A_CURR[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_CURR[1]~2_combout\,
	datac => \A_CURR[1]~1_combout\,
	combout => \A_LAST~1_combout\);

-- Location: FF_X10_Y18_N1
\A_LAST~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \A_LAST~1_combout\,
	clrn => \RAZ~input_o\,
	ena => \B_LAST~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_LAST~_emulated_q\);

-- Location: LCCOMB_X11_Y18_N20
\A_LAST~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A_LAST~0_combout\ = (\RAZ~input_o\ & (\A_LAST~_emulated_q\ $ (((\A_CURR[1]~1_combout\))))) # (!\RAZ~input_o\ & (((\CHAN_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LAST~_emulated_q\,
	datab => \CHAN_A~input_o\,
	datac => \RAZ~input_o\,
	datad => \A_CURR[1]~1_combout\,
	combout => \A_LAST~0_combout\);

-- Location: LCCOMB_X11_Y18_N22
\CompteurTicks~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CompteurTicks~1_combout\ = (\B_LAST~2_combout\ & ((\A_CURR[1]~2_combout\ $ (\A_LAST~0_combout\)) # (!\B_CURR[1]~0_combout\))) # (!\B_LAST~2_combout\ & ((\B_CURR[1]~0_combout\) # (\A_CURR[1]~2_combout\ $ (\A_LAST~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LAST~2_combout\,
	datab => \A_CURR[1]~2_combout\,
	datac => \B_CURR[1]~0_combout\,
	datad => \A_LAST~0_combout\,
	combout => \CompteurTicks~1_combout\);

-- Location: LCCOMB_X11_Y18_N24
\CompteurTicks~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CompteurTicks~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\CompteurTicks~1_combout\ & timer(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \CompteurTicks~1_combout\,
	datad => timer(8),
	combout => \CompteurTicks~2_combout\);

-- Location: FF_X12_Y18_N29
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[0]~feeder_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X12_Y18_N8
\count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~13_combout\ = (\CompteurTicks~0_combout\ & ((count(1) & (!\count[0]~12\)) # (!count(1) & ((\count[0]~12\) # (GND))))) # (!\CompteurTicks~0_combout\ & ((count(1) & (\count[0]~12\ & VCC)) # (!count(1) & (!\count[0]~12\))))
-- \count[1]~14\ = CARRY((\CompteurTicks~0_combout\ & ((!\count[0]~12\) # (!count(1)))) # (!\CompteurTicks~0_combout\ & (!count(1) & !\count[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => count(1),
	datad => VCC,
	cin => \count[0]~12\,
	combout => \count[1]~13_combout\,
	cout => \count[1]~14\);

-- Location: FF_X12_Y18_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[1]~13_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X12_Y18_N10
\count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~15_combout\ = ((\CompteurTicks~0_combout\ $ (count(2) $ (\count[1]~14\)))) # (GND)
-- \count[2]~16\ = CARRY((\CompteurTicks~0_combout\ & (count(2) & !\count[1]~14\)) # (!\CompteurTicks~0_combout\ & ((count(2)) # (!\count[1]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => count(2),
	datad => VCC,
	cin => \count[1]~14\,
	combout => \count[2]~15_combout\,
	cout => \count[2]~16\);

-- Location: FF_X12_Y18_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[2]~15_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X12_Y18_N12
\count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~17_combout\ = (\CompteurTicks~0_combout\ & ((count(3) & (!\count[2]~16\)) # (!count(3) & ((\count[2]~16\) # (GND))))) # (!\CompteurTicks~0_combout\ & ((count(3) & (\count[2]~16\ & VCC)) # (!count(3) & (!\count[2]~16\))))
-- \count[3]~18\ = CARRY((\CompteurTicks~0_combout\ & ((!\count[2]~16\) # (!count(3)))) # (!\CompteurTicks~0_combout\ & (!count(3) & !\count[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => count(3),
	datad => VCC,
	cin => \count[2]~16\,
	combout => \count[3]~17_combout\,
	cout => \count[3]~18\);

-- Location: FF_X12_Y18_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[3]~17_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X12_Y18_N14
\count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~19_combout\ = ((\CompteurTicks~0_combout\ $ (count(4) $ (\count[3]~18\)))) # (GND)
-- \count[4]~20\ = CARRY((\CompteurTicks~0_combout\ & (count(4) & !\count[3]~18\)) # (!\CompteurTicks~0_combout\ & ((count(4)) # (!\count[3]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => count(4),
	datad => VCC,
	cin => \count[3]~18\,
	combout => \count[4]~19_combout\,
	cout => \count[4]~20\);

-- Location: FF_X12_Y18_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[4]~19_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X12_Y18_N16
\count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~21_combout\ = (\CompteurTicks~0_combout\ & ((count(5) & (!\count[4]~20\)) # (!count(5) & ((\count[4]~20\) # (GND))))) # (!\CompteurTicks~0_combout\ & ((count(5) & (\count[4]~20\ & VCC)) # (!count(5) & (!\count[4]~20\))))
-- \count[5]~22\ = CARRY((\CompteurTicks~0_combout\ & ((!\count[4]~20\) # (!count(5)))) # (!\CompteurTicks~0_combout\ & (!count(5) & !\count[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => count(5),
	datad => VCC,
	cin => \count[4]~20\,
	combout => \count[5]~21_combout\,
	cout => \count[5]~22\);

-- Location: FF_X12_Y18_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[5]~21_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X12_Y18_N18
\count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~23_combout\ = ((count(6) $ (\CompteurTicks~0_combout\ $ (\count[5]~22\)))) # (GND)
-- \count[6]~24\ = CARRY((count(6) & ((!\count[5]~22\) # (!\CompteurTicks~0_combout\))) # (!count(6) & (!\CompteurTicks~0_combout\ & !\count[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \CompteurTicks~0_combout\,
	datad => VCC,
	cin => \count[5]~22\,
	combout => \count[6]~23_combout\,
	cout => \count[6]~24\);

-- Location: FF_X12_Y18_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[6]~23_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X12_Y18_N20
\count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~25_combout\ = (count(7) & ((\CompteurTicks~0_combout\ & (!\count[6]~24\)) # (!\CompteurTicks~0_combout\ & (\count[6]~24\ & VCC)))) # (!count(7) & ((\CompteurTicks~0_combout\ & ((\count[6]~24\) # (GND))) # (!\CompteurTicks~0_combout\ & 
-- (!\count[6]~24\))))
-- \count[7]~26\ = CARRY((count(7) & (\CompteurTicks~0_combout\ & !\count[6]~24\)) # (!count(7) & ((\CompteurTicks~0_combout\) # (!\count[6]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \CompteurTicks~0_combout\,
	datad => VCC,
	cin => \count[6]~24\,
	combout => \count[7]~25_combout\,
	cout => \count[7]~26\);

-- Location: FF_X12_Y18_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[7]~25_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X12_Y18_N22
\count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~27_combout\ = ((count(8) $ (\CompteurTicks~0_combout\ $ (\count[7]~26\)))) # (GND)
-- \count[8]~28\ = CARRY((count(8) & ((!\count[7]~26\) # (!\CompteurTicks~0_combout\))) # (!count(8) & (!\CompteurTicks~0_combout\ & !\count[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \CompteurTicks~0_combout\,
	datad => VCC,
	cin => \count[7]~26\,
	combout => \count[8]~27_combout\,
	cout => \count[8]~28\);

-- Location: FF_X12_Y18_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[8]~27_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X12_Y18_N24
\count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~29_combout\ = (count(9) & ((\CompteurTicks~0_combout\ & (!\count[8]~28\)) # (!\CompteurTicks~0_combout\ & (\count[8]~28\ & VCC)))) # (!count(9) & ((\CompteurTicks~0_combout\ & ((\count[8]~28\) # (GND))) # (!\CompteurTicks~0_combout\ & 
-- (!\count[8]~28\))))
-- \count[9]~30\ = CARRY((count(9) & (\CompteurTicks~0_combout\ & !\count[8]~28\)) # (!count(9) & ((\CompteurTicks~0_combout\) # (!\count[8]~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \CompteurTicks~0_combout\,
	datad => VCC,
	cin => \count[8]~28\,
	combout => \count[9]~29_combout\,
	cout => \count[9]~30\);

-- Location: FF_X12_Y18_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[9]~29_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X12_Y18_N26
\count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~31_combout\ = count(10) $ (\count[9]~30\ $ (\CompteurTicks~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => \CompteurTicks~0_combout\,
	cin => \count[9]~30\,
	combout => \count[10]~31_combout\);

-- Location: FF_X12_Y18_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count[10]~31_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X12_Y18_N4
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (count(10) & (!count(0) & (!count(1) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(0),
	datac => count(1),
	datad => count(2),
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X12_Y18_N0
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((count(3) & (count(4) & !count(10))) # (!count(3) & (!count(4) & count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => count(10),
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\);

-- Location: LCCOMB_X16_Y19_N0
\Div0|auto_generated|divider|my_abs_num|cs2a[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((count(5) & (count(6) & !count(10))) # (!count(5) & (!count(6) & count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datab => count(5),
	datac => count(6),
	datad => count(10),
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\);

-- Location: LCCOMB_X20_Y19_N20
\Div0|auto_generated|divider|my_abs_num|cs2a[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((count(10) & (!count(7) & !count(8))) # (!count(10) & (count(7) & count(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(7),
	datac => count(8),
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\);

-- Location: LCCOMB_X20_Y19_N26
\Div0|auto_generated|divider|my_abs_num|cs2a[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & (count(9) $ (count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datac => count(10),
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\);

-- Location: LCCOMB_X20_Y19_N0
\Div0|auto_generated|divider|my_abs_num|cs2a[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\ = count(9) $ (count(10) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datac => count(10),
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\);

-- Location: LCCOMB_X20_Y19_N14
\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ = count(8) $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((count(7)))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & (count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(7),
	datac => count(8),
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\);

-- Location: LCCOMB_X20_Y19_N24
\Div0|auto_generated|divider|my_abs_num|cs2a[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\ = count(10) $ (count(7) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(7),
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\);

-- Location: LCCOMB_X16_Y19_N26
\Div0|auto_generated|divider|my_abs_num|cs2a[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ = count(6) $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & (count(5))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((count(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datab => count(5),
	datac => count(6),
	datad => count(10),
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\);

-- Location: LCCOMB_X20_Y19_N2
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X20_Y19_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[7]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X20_Y19_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X20_Y19_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[9]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X20_Y19_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[9]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X20_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X20_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[60]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~98_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (count(10) $ (count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => count(9),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~98_combout\);

-- Location: LCCOMB_X19_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[60]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~58_combout\);

-- Location: LCCOMB_X19_Y19_N6
\Div0|auto_generated|divider|divider|StageOut[59]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~59_combout\);

-- Location: LCCOMB_X20_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[59]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (count(10) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ (count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => count(9),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~99_combout\);

-- Location: LCCOMB_X20_Y19_N22
\Div0|auto_generated|divider|divider|StageOut[58]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~60_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~60_combout\);

-- Location: LCCOMB_X19_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[58]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~61_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~61_combout\);

-- Location: LCCOMB_X19_Y19_N22
\Div0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X20_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[57]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (count(10) $ (count(7) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(7),
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~100_combout\);

-- Location: LCCOMB_X19_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[56]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~64_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~64_combout\);

-- Location: LCCOMB_X20_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[56]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~63_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~63_combout\);

-- Location: LCCOMB_X16_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[55]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[55]~66_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (count(10) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ $ (count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => count(10),
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => count(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[55]~66_combout\);

-- Location: LCCOMB_X16_Y19_N8
\Div0|auto_generated|divider|divider|StageOut[55]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[55]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (count(10) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ $ (count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => count(10),
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => count(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[55]~65_combout\);

-- Location: LCCOMB_X19_Y19_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[55]~66_combout\) # (\Div0|auto_generated|divider|divider|StageOut[55]~65_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[55]~66_combout\) # (\Div0|auto_generated|divider|divider|StageOut[55]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[55]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[55]~65_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X19_Y19_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[56]~64_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[56]~63_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[56]~64_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[56]~63_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[56]~64_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[56]~63_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[56]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~63_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X19_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[57]~62_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[57]~100_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[57]~62_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[57]~100_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[57]~62_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[57]~100_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~100_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X19_Y19_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[58]~60_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[58]~60_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[58]~61_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[58]~60_combout\ & !\Div0|auto_generated|divider|divider|StageOut[58]~61_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[58]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X19_Y19_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[59]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[59]~99_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[59]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[59]~99_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[59]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[59]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X19_Y19_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[60]~98_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~58_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[60]~98_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[60]~58_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[60]~98_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[60]~58_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X19_Y19_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X16_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[70]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\);

-- Location: LCCOMB_X19_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[70]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~101_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~98_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~101_combout\);

-- Location: LCCOMB_X19_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[69]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~99_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[59]~99_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~102_combout\);

-- Location: LCCOMB_X17_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[69]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~68_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~68_combout\);

-- Location: LCCOMB_X16_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[68]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~69_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~69_combout\);

-- Location: LCCOMB_X17_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[68]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~115_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~115_combout\);

-- Location: LCCOMB_X19_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[67]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~103_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[57]~100_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~100_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~103_combout\);

-- Location: LCCOMB_X19_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[67]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~70_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~70_combout\);

-- Location: LCCOMB_X17_Y19_N6
\Div0|auto_generated|divider|divider|StageOut[66]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~71_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~71_combout\);

-- Location: LCCOMB_X17_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[66]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~116_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~116_combout\);

-- Location: LCCOMB_X16_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[65]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~73_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~73_combout\);

-- Location: LCCOMB_X16_Y19_N12
\Div0|auto_generated|divider|divider|StageOut[65]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ $ (count(5) $ (count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datab => count(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => count(10),
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\);

-- Location: LCCOMB_X14_Y18_N12
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ = count(4) $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((count(3)))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & (count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => count(3),
	datad => count(4),
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\);

-- Location: LCCOMB_X20_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[54]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~76_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~76_combout\);

-- Location: LCCOMB_X20_Y18_N2
\Div0|auto_generated|divider|divider|StageOut[54]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~75_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~75_combout\);

-- Location: LCCOMB_X20_Y18_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[54]~76_combout\) # (\Div0|auto_generated|divider|divider|StageOut[54]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|StageOut[54]~76_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[54]~75_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X16_Y19_N10
\Div0|auto_generated|divider|divider|StageOut[64]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\);

-- Location: LCCOMB_X16_Y19_N20
\Div0|auto_generated|divider|divider|StageOut[64]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~74_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~74_combout\);

-- Location: LCCOMB_X17_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[64]~77_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~74_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[64]~77_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[64]~74_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X17_Y19_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[65]~73_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[65]~73_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[65]~73_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[65]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X17_Y19_N16
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[66]~71_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~116_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~71_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[66]~116_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[66]~71_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[66]~116_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~116_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X17_Y19_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[67]~103_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~103_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~70_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~70_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[67]~103_combout\ & !\Div0|auto_generated|divider|divider|StageOut[67]~70_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~103_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X17_Y19_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[68]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~115_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[68]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~115_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~115_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X17_Y19_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[69]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[69]~68_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[69]~102_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[69]~68_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[69]~102_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[69]~68_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[69]~102_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~68_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X17_Y19_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~67_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[70]~101_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\);

-- Location: LCCOMB_X17_Y19_N26
\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X16_Y19_N6
\Div0|auto_generated|divider|divider|StageOut[78]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~105_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~115_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[68]~115_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~105_combout\);

-- Location: LCCOMB_X16_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[78]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~79_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~79_combout\);

-- Location: LCCOMB_X16_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[77]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~80_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~80_combout\);

-- Location: LCCOMB_X19_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[77]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~106_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~103_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[67]~103_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~106_combout\);

-- Location: LCCOMB_X17_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[76]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~107_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~116_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~116_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~107_combout\);

-- Location: LCCOMB_X17_Y19_N8
\Div0|auto_generated|divider|divider|StageOut[76]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~81_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~81_combout\);

-- Location: LCCOMB_X16_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[75]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~108_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~108_combout\);

-- Location: LCCOMB_X16_Y17_N20
\Div0|auto_generated|divider|divider|StageOut[75]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~82_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~82_combout\);

-- Location: LCCOMB_X16_Y19_N22
\Div0|auto_generated|divider|divider|StageOut[74]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~117_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~117_combout\);

-- Location: LCCOMB_X17_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[74]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~83_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~83_combout\);

-- Location: LCCOMB_X14_Y18_N14
\Div0|auto_generated|divider|divider|StageOut[73]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~84_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (count(3) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => count(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~84_combout\);

-- Location: LCCOMB_X14_Y18_N6
\Div0|auto_generated|divider|divider|StageOut[63]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~86_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (count(10) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => count(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~86_combout\);

-- Location: LCCOMB_X14_Y18_N16
\Div0|auto_generated|divider|divider|StageOut[63]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~85_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (count(10) $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => count(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~85_combout\);

-- Location: LCCOMB_X14_Y18_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\Div0|auto_generated|divider|divider|StageOut[63]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[63]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|StageOut[63]~86_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[63]~85_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X15_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[73]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~87_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~87_combout\);

-- Location: LCCOMB_X17_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[73]~84_combout\) # (\Div0|auto_generated|divider|divider|StageOut[73]~87_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[73]~84_combout\) # (\Div0|auto_generated|divider|divider|StageOut[73]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[73]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~87_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X17_Y17_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[74]~117_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~83_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[74]~117_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[74]~83_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[74]~117_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[74]~83_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~83_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X17_Y17_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[75]~108_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[75]~82_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~108_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[75]~82_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[75]~108_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[75]~82_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~108_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~82_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X17_Y17_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[76]~107_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[76]~107_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~81_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[76]~81_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[76]~107_combout\ & !\Div0|auto_generated|divider|divider|StageOut[76]~81_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[76]~107_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[76]~81_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X17_Y17_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[77]~80_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[77]~106_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[77]~80_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[77]~106_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~80_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[77]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[77]~80_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~106_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X17_Y17_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[78]~105_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[78]~79_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[78]~105_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[78]~79_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[78]~105_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[78]~79_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[78]~105_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[78]~79_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X17_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[79]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~104_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[69]~102_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~102_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~104_combout\);

-- Location: LCCOMB_X16_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[79]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~78_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~78_combout\);

-- Location: LCCOMB_X17_Y17_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[79]~104_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[79]~78_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[79]~104_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[79]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\);

-- Location: LCCOMB_X17_Y17_N20
\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[88]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~88_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~88_combout\);

-- Location: LCCOMB_X16_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[88]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~109_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[78]~105_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[78]~105_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~109_combout\);

-- Location: LCCOMB_X17_Y17_N4
\Div0|auto_generated|divider|divider|StageOut[87]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~89_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~89_combout\);

-- Location: LCCOMB_X16_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[87]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~106_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[77]~106_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~110_combout\);

-- Location: LCCOMB_X17_Y19_N10
\Div0|auto_generated|divider|divider|StageOut[86]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~111_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~107_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[76]~107_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~111_combout\);

-- Location: LCCOMB_X17_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[86]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~90_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~90_combout\);

-- Location: LCCOMB_X16_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[85]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~112_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~108_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~108_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~112_combout\);

-- Location: LCCOMB_X17_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[85]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~91_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~91_combout\);

-- Location: LCCOMB_X17_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[84]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~92_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~92_combout\);

-- Location: LCCOMB_X17_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[84]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~113_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~117_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[74]~117_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~113_combout\);

-- Location: LCCOMB_X15_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[83]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~114_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~84_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[73]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~114_combout\);

-- Location: LCCOMB_X17_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[83]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~93_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~93_combout\);

-- Location: LCCOMB_X12_Y18_N30
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ = count(2) $ (((count(10) & ((count(1)) # (count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(10),
	datad => count(0),
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\);

-- Location: LCCOMB_X16_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[82]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~94_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~94_combout\);

-- Location: LCCOMB_X19_Y17_N4
\Div0|auto_generated|divider|divider|StageOut[72]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[72]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~95_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~95_combout\);

-- Location: LCCOMB_X19_Y17_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ = (\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\) # (\Div0|auto_generated|divider|divider|StageOut[72]~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\);

-- Location: LCCOMB_X16_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[82]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~97_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~97_combout\);

-- Location: LCCOMB_X16_Y17_N0
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[82]~94_combout\) # (\Div0|auto_generated|divider|divider|StageOut[82]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~97_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\);

-- Location: LCCOMB_X16_Y17_N2
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[83]~114_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[83]~93_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~114_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[83]~93_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\);

-- Location: LCCOMB_X16_Y17_N4
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[84]~92_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[84]~113_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~92_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[84]~113_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\);

-- Location: LCCOMB_X16_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[85]~112_combout\ & !\Div0|auto_generated|divider|divider|StageOut[85]~91_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[85]~112_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~91_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\);

-- Location: LCCOMB_X16_Y17_N8
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~111_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~111_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~90_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\);

-- Location: LCCOMB_X16_Y17_N10
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[87]~89_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~89_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[87]~110_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\);

-- Location: LCCOMB_X16_Y17_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[88]~88_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[88]~109_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~88_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~109_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\);

-- Location: LCCOMB_X16_Y17_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\);

-- Location: LCCOMB_X15_Y17_N20
\Div0|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X15_Y17_N22
\Div0|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY((!\Div0|auto_generated|divider|op_1~1\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X15_Y17_N24
\Div0|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Div0|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~3\ & VCC))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & !\Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X15_Y17_N26
\Div0|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\Div0|auto_generated|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~5\) # (GND)))
-- \Div0|auto_generated|divider|op_1~7\ = CARRY((!\Div0|auto_generated|divider|op_1~5\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X15_Y17_N28
\Div0|auto_generated|divider|op_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~7\,
	cout => \Div0|auto_generated|divider|op_1~9_cout\);

-- Location: LCCOMB_X15_Y17_N30
\Div0|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~10_combout\ = !\Div0|auto_generated|divider|op_1~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|op_1~9_cout\,
	combout => \Div0|auto_generated|divider|op_1~10_combout\);

-- Location: LCCOMB_X14_Y18_N26
\count_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_2~0_combout\ = (count(10) & (\Div0|auto_generated|divider|op_1~0_combout\ $ (((\Div0|auto_generated|divider|op_1~10_combout\))))) # (!count(10) & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|op_1~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \count_2~0_combout\);

-- Location: FF_X14_Y18_N27
\count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_2~0_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(0));

-- Location: LCCOMB_X14_Y18_N4
\count_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_2~1_combout\ = (count(10) & (\Div0|auto_generated|divider|op_1~2_combout\ $ (((\Div0|auto_generated|divider|op_1~10_combout\))))) # (!count(10) & (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|op_1~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \count_2~1_combout\);

-- Location: FF_X14_Y18_N5
\count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_2~1_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(1));

-- Location: LCCOMB_X15_Y17_N10
\count_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_2~2_combout\ = (count(10) & ((\Div0|auto_generated|divider|op_1~10_combout\ $ (\Div0|auto_generated|divider|op_1~4_combout\)))) # (!count(10) & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Div0|auto_generated|divider|op_1~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~4_combout\,
	combout => \count_2~2_combout\);

-- Location: FF_X15_Y18_N29
\count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \count_2~2_combout\,
	clrn => \RAZ~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(2));

-- Location: LCCOMB_X14_Y18_N30
\count_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_2~3_combout\ = (count(10) & ((\Div0|auto_generated|divider|op_1~6_combout\ $ (\Div0|auto_generated|divider|op_1~10_combout\)))) # (!count(10) & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => count(10),
	datac => \Div0|auto_generated|divider|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \count_2~3_combout\);

-- Location: FF_X14_Y18_N31
\count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_2~3_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(3));

-- Location: LCCOMB_X15_Y18_N28
\Mult0|mult_core|romout[0][10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~0_combout\ = (count_2(3) & ((count_2(2)) # ((count_2(0) & count_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(0),
	datab => count_2(1),
	datac => count_2(2),
	datad => count_2(3),
	combout => \Mult0|mult_core|romout[0][10]~0_combout\);

-- Location: LCCOMB_X15_Y18_N2
\Mult0|mult_core|romout[0][9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~1_combout\ = (count_2(2) & (((count_2(1) & !count_2(3))))) # (!count_2(2) & (count_2(3) & ((!count_2(1)) # (!count_2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(0),
	datab => count_2(2),
	datac => count_2(1),
	datad => count_2(3),
	combout => \Mult0|mult_core|romout[0][9]~1_combout\);

-- Location: LCCOMB_X15_Y18_N30
\Mult0|mult_core|romout[0][8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~2_combout\ = (count_2(2) & ((count_2(1) & ((count_2(3)))) # (!count_2(1) & ((count_2(0)) # (!count_2(3)))))) # (!count_2(2) & (count_2(3) $ (((count_2(0) & count_2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(0),
	datab => count_2(2),
	datac => count_2(1),
	datad => count_2(3),
	combout => \Mult0|mult_core|romout[0][8]~2_combout\);

-- Location: LCCOMB_X15_Y18_N0
\Mult0|mult_core|romout[0][7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~3_combout\ = count_2(2) $ (((count_2(0) & (!count_2(1) & count_2(3))) # (!count_2(0) & (count_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(0),
	datab => count_2(2),
	datac => count_2(1),
	datad => count_2(3),
	combout => \Mult0|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X15_Y18_N26
\Mult0|mult_core|romout[0][6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~4_combout\ = count_2(1) $ (((count_2(0) & !count_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_2(1),
	datac => count_2(0),
	datad => count_2(3),
	combout => \Mult0|mult_core|romout[0][6]~4_combout\);

-- Location: LCCOMB_X14_Y18_N10
\Mult0|mult_core|romout[0][5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~5_combout\ = count_2(0) $ (count_2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_2(0),
	datad => count_2(3),
	combout => \Mult0|mult_core|romout[0][5]~5_combout\);

-- Location: LCCOMB_X15_Y18_N4
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (count_2(0) & (count(2) $ (VCC))) # (!count_2(0) & ((count(2)) # (GND)))
-- \Add7~1\ = CARRY((count(2)) # (!count_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(0),
	datab => count(2),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X15_Y18_N6
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (count(3) & ((count_2(1) & (!\Add7~1\)) # (!count_2(1) & (\Add7~1\ & VCC)))) # (!count(3) & ((count_2(1) & ((\Add7~1\) # (GND))) # (!count_2(1) & (!\Add7~1\))))
-- \Add7~3\ = CARRY((count(3) & (count_2(1) & !\Add7~1\)) # (!count(3) & ((count_2(1)) # (!\Add7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count_2(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X15_Y18_N8
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((count(4) $ (count_2(2) $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((count(4) & ((!\Add7~3\) # (!count_2(2)))) # (!count(4) & (!count_2(2) & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count_2(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X15_Y18_N10
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Mult0|mult_core|romout[0][5]~5_combout\ & ((count(5) & (!\Add7~5\)) # (!count(5) & ((\Add7~5\) # (GND))))) # (!\Mult0|mult_core|romout[0][5]~5_combout\ & ((count(5) & (\Add7~5\ & VCC)) # (!count(5) & (!\Add7~5\))))
-- \Add7~7\ = CARRY((\Mult0|mult_core|romout[0][5]~5_combout\ & ((!\Add7~5\) # (!count(5)))) # (!\Mult0|mult_core|romout[0][5]~5_combout\ & (!count(5) & !\Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][5]~5_combout\,
	datab => count(5),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X15_Y18_N12
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((\Mult0|mult_core|romout[0][6]~4_combout\ $ (count(6) $ (\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((\Mult0|mult_core|romout[0][6]~4_combout\ & (count(6) & !\Add7~7\)) # (!\Mult0|mult_core|romout[0][6]~4_combout\ & ((count(6)) # (!\Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~4_combout\,
	datab => count(6),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X15_Y18_N14
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (count(7) & ((\Mult0|mult_core|romout[0][7]~3_combout\ & (!\Add7~9\)) # (!\Mult0|mult_core|romout[0][7]~3_combout\ & (\Add7~9\ & VCC)))) # (!count(7) & ((\Mult0|mult_core|romout[0][7]~3_combout\ & ((\Add7~9\) # (GND))) # 
-- (!\Mult0|mult_core|romout[0][7]~3_combout\ & (!\Add7~9\))))
-- \Add7~11\ = CARRY((count(7) & (\Mult0|mult_core|romout[0][7]~3_combout\ & !\Add7~9\)) # (!count(7) & ((\Mult0|mult_core|romout[0][7]~3_combout\) # (!\Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \Mult0|mult_core|romout[0][7]~3_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X15_Y18_N16
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = ((\Mult0|mult_core|romout[0][8]~2_combout\ $ (count(8) $ (\Add7~11\)))) # (GND)
-- \Add7~13\ = CARRY((\Mult0|mult_core|romout[0][8]~2_combout\ & (count(8) & !\Add7~11\)) # (!\Mult0|mult_core|romout[0][8]~2_combout\ & ((count(8)) # (!\Add7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~2_combout\,
	datab => count(8),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X15_Y18_N18
\Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (count(9) & ((\Mult0|mult_core|romout[0][9]~1_combout\ & (!\Add7~13\)) # (!\Mult0|mult_core|romout[0][9]~1_combout\ & (\Add7~13\ & VCC)))) # (!count(9) & ((\Mult0|mult_core|romout[0][9]~1_combout\ & ((\Add7~13\) # (GND))) # 
-- (!\Mult0|mult_core|romout[0][9]~1_combout\ & (!\Add7~13\))))
-- \Add7~15\ = CARRY((count(9) & (\Mult0|mult_core|romout[0][9]~1_combout\ & !\Add7~13\)) # (!count(9) & ((\Mult0|mult_core|romout[0][9]~1_combout\) # (!\Add7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \Mult0|mult_core|romout[0][9]~1_combout\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X15_Y18_N20
\Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = ((\Mult0|mult_core|romout[0][10]~0_combout\ $ (count(10) $ (\Add7~15\)))) # (GND)
-- \Add7~17\ = CARRY((\Mult0|mult_core|romout[0][10]~0_combout\ & (count(10) & !\Add7~15\)) # (!\Mult0|mult_core|romout[0][10]~0_combout\ & ((count(10)) # (!\Add7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~0_combout\,
	datab => count(10),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X15_Y18_N22
\Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (count(10) & (\Add7~17\ & VCC)) # (!count(10) & (!\Add7~17\))
-- \Add7~19\ = CARRY((!count(10) & !\Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X15_Y18_N24
\Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = \Add7~19\ $ (count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(10),
	cin => \Add7~19\,
	combout => \Add7~20_combout\);

-- Location: LCCOMB_X12_Y18_N2
\count_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1~1_combout\ = count(0) $ (\Add7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => \Add7~20_combout\,
	combout => \count_1~1_combout\);

-- Location: LCCOMB_X16_Y18_N2
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY((\Add7~20_combout\ & \count_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \count_1~1_combout\,
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X16_Y18_N4
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add6~1_cout\ & (count(1) $ ((!\Add7~20_combout\)))) # (!\Add6~1_cout\ & ((count(1) $ (\Add7~20_combout\)) # (GND)))
-- \Add6~3\ = CARRY((count(1) $ (!\Add7~20_combout\)) # (!\Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X16_Y18_N6
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add6~3\ & ((\Add7~0_combout\ $ (\Add7~20_combout\)))) # (!\Add6~3\ & (\Add7~0_combout\ $ (\Add7~20_combout\ $ (VCC))))
-- \Add6~5\ = CARRY((!\Add6~3\ & (\Add7~0_combout\ $ (\Add7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X16_Y18_N8
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add6~5\ & (\Add7~2_combout\ $ ((!\Add7~20_combout\)))) # (!\Add6~5\ & ((\Add7~2_combout\ $ (\Add7~20_combout\)) # (GND)))
-- \Add6~7\ = CARRY((\Add7~2_combout\ $ (!\Add7~20_combout\)) # (!\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X16_Y18_N10
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\Add6~7\ & ((\Add7~4_combout\ $ (\Add7~20_combout\)))) # (!\Add6~7\ & (\Add7~4_combout\ $ (\Add7~20_combout\ $ (VCC))))
-- \Add6~9\ = CARRY((!\Add6~7\ & (\Add7~4_combout\ $ (\Add7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X16_Y18_N12
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add6~9\ & (\Add7~6_combout\ $ ((!\Add7~20_combout\)))) # (!\Add6~9\ & ((\Add7~6_combout\ $ (\Add7~20_combout\)) # (GND)))
-- \Add6~11\ = CARRY((\Add7~6_combout\ $ (!\Add7~20_combout\)) # (!\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X16_Y18_N14
\Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\Add6~11\ & ((\Add7~8_combout\ $ (\Add7~20_combout\)))) # (!\Add6~11\ & (\Add7~8_combout\ $ (\Add7~20_combout\ $ (VCC))))
-- \Add6~13\ = CARRY((!\Add6~11\ & (\Add7~8_combout\ $ (\Add7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X16_Y18_N16
\Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Add6~13\ & (\Add7~20_combout\ $ ((!\Add7~10_combout\)))) # (!\Add6~13\ & ((\Add7~20_combout\ $ (\Add7~10_combout\)) # (GND)))
-- \Add6~15\ = CARRY((\Add7~20_combout\ $ (!\Add7~10_combout\)) # (!\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X16_Y18_N18
\Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\Add6~15\ & ((\Add7~20_combout\ $ (\Add7~12_combout\)))) # (!\Add6~15\ & (\Add7~20_combout\ $ (\Add7~12_combout\ $ (VCC))))
-- \Add6~17\ = CARRY((!\Add6~15\ & (\Add7~20_combout\ $ (\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X16_Y18_N20
\Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (\Add6~17\ & (\Add7~20_combout\ $ ((!\Add7~14_combout\)))) # (!\Add6~17\ & ((\Add7~20_combout\ $ (\Add7~14_combout\)) # (GND)))
-- \Add6~19\ = CARRY((\Add7~20_combout\ $ (!\Add7~14_combout\)) # (!\Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X16_Y18_N22
\Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (\Add6~19\ & ((\Add7~20_combout\ $ (\Add7~16_combout\)))) # (!\Add6~19\ & (\Add7~20_combout\ $ (\Add7~16_combout\ $ (VCC))))
-- \Add6~21\ = CARRY((!\Add6~19\ & (\Add7~20_combout\ $ (\Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add7~16_combout\,
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X16_Y18_N24
\Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (\Add6~21\ & (\Add7~20_combout\ $ ((!\Add7~18_combout\)))) # (!\Add6~21\ & ((\Add7~20_combout\ $ (\Add7~18_combout\)) # (GND)))
-- \Add6~23\ = CARRY((\Add7~20_combout\ $ (!\Add7~18_combout\)) # (!\Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add7~18_combout\,
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X16_Y18_N26
\Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = !\Add6~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~23\,
	combout => \Add6~24_combout\);

-- Location: LCCOMB_X17_Y18_N12
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Add6~20_combout\ $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\Add6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~20_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X17_Y18_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Add6~22_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\Add6~22_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Add6~22_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~22_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X17_Y18_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Add6~24_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\Add6~24_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Add6~24_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~24_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X17_Y18_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y18_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y18_N0
\Div1|auto_generated|divider|divider|StageOut[23]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~86_combout\ = (\Add6~24_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~24_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~86_combout\);

-- Location: LCCOMB_X17_Y18_N6
\Div1|auto_generated|divider|divider|StageOut[23]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~87_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~87_combout\);

-- Location: LCCOMB_X17_Y18_N26
\Div1|auto_generated|divider|divider|StageOut[22]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~89_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~89_combout\);

-- Location: LCCOMB_X17_Y18_N8
\Div1|auto_generated|divider|divider|StageOut[22]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~88_combout\ = (\Add6~22_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~22_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~88_combout\);

-- Location: LCCOMB_X17_Y18_N28
\Div1|auto_generated|divider|divider|StageOut[21]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~91_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~91_combout\);

-- Location: LCCOMB_X16_Y18_N0
\Div1|auto_generated|divider|divider|StageOut[21]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~90_combout\ = (\Add6~20_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~90_combout\);

-- Location: LCCOMB_X16_Y18_N30
\Div1|auto_generated|divider|divider|StageOut[20]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~93_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Add6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Add6~18_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~93_combout\);

-- Location: LCCOMB_X16_Y18_N28
\Div1|auto_generated|divider|divider|StageOut[20]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~92_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Add6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Add6~18_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~92_combout\);

-- Location: LCCOMB_X21_Y18_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~93_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~92_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~93_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~93_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~92_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X21_Y18_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~91_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~90_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~91_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~90_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~91_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~90_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~91_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~90_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X21_Y18_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~89_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~88_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~89_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~88_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~89_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~89_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~88_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X21_Y18_N26
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~86_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~87_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~86_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~87_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y18_N28
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y18_N2
\Div1|auto_generated|divider|divider|StageOut[27]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~150_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Add6~20_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Add6~20_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~150_combout\);

-- Location: LCCOMB_X21_Y18_N4
\Div1|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Div1|auto_generated|divider|divider|StageOut[28]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~149_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add6~22_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~22_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~149_combout\);

-- Location: LCCOMB_X21_Y18_N30
\Div1|auto_generated|divider|divider|StageOut[27]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~95_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~95_combout\);

-- Location: LCCOMB_X21_Y18_N6
\Div1|auto_generated|divider|divider|StageOut[26]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~97_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~97_combout\);

-- Location: LCCOMB_X21_Y18_N8
\Div1|auto_generated|divider|divider|StageOut[26]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~96_combout\ = (\Add6~18_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~18_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~96_combout\);

-- Location: LCCOMB_X20_Y18_N8
\Div1|auto_generated|divider|divider|StageOut[25]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~99_combout\ = (\Add6~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~16_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~99_combout\);

-- Location: LCCOMB_X20_Y18_N6
\Div1|auto_generated|divider|divider|StageOut[25]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~98_combout\ = (\Add6~16_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~16_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~98_combout\);

-- Location: LCCOMB_X21_Y18_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~99_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~98_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~99_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~99_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~98_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y18_N12
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~97_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~96_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~97_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~96_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~97_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~96_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~97_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~96_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y18_N14
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~95_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~150_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~95_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~150_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~95_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~95_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~150_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X21_Y18_N16
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~149_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~149_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y18_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y19_N10
\Div1|auto_generated|divider|divider|StageOut[33]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~142_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~150_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~150_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~142_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[33]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~100_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~100_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Div1|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Div1|auto_generated|divider|divider|StageOut[32]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~151_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Add6~18_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Add6~18_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~151_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Div1|auto_generated|divider|divider|StageOut[31]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~102_combout\ = (\Add6~16_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~16_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~102_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[31]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~103_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~103_combout\);

-- Location: LCCOMB_X21_Y19_N26
\Div1|auto_generated|divider|divider|StageOut[30]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~104_combout\ = (\Add6~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~104_combout\);

-- Location: LCCOMB_X21_Y19_N8
\Div1|auto_generated|divider|divider|StageOut[30]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~105_combout\ = (\Add6~14_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~105_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[30]~104_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~105_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~104_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~104_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~105_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X21_Y19_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[31]~102_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[31]~103_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~102_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[31]~103_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~102_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~103_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~102_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~103_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X21_Y19_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~151_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~151_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~151_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y19_N22
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~142_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~100_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~142_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~100_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y19_N24
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Div1|auto_generated|divider|divider|StageOut[38]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~106_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~106_combout\);

-- Location: LCCOMB_X22_Y19_N24
\Div1|auto_generated|divider|divider|StageOut[38]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~143_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~151_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~151_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~143_combout\);

-- Location: LCCOMB_X21_Y19_N12
\Div1|auto_generated|divider|divider|StageOut[37]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~107_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~107_combout\);

-- Location: LCCOMB_X21_Y19_N6
\Div1|auto_generated|divider|divider|StageOut[37]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~152_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Add6~16_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~16_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~152_combout\);

-- Location: LCCOMB_X22_Y19_N30
\Div1|auto_generated|divider|divider|StageOut[36]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~109_combout\);

-- Location: LCCOMB_X22_Y19_N20
\Div1|auto_generated|divider|divider|StageOut[36]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ = (\Add6~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~108_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Div1|auto_generated|divider|divider|StageOut[35]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[35]~110_combout\ = (\Add6~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[35]~110_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[35]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[35]~111_combout\ = (\Add6~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[35]~111_combout\);

-- Location: LCCOMB_X22_Y19_N10
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[35]~110_combout\) # (\Div1|auto_generated|divider|divider|StageOut[35]~111_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[35]~110_combout\) # (\Div1|auto_generated|divider|divider|StageOut[35]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[35]~110_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[35]~111_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X22_Y19_N12
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[36]~109_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[36]~108_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[36]~108_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[36]~109_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[36]~108_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X22_Y19_N14
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[37]~107_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~152_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[37]~107_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~152_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[37]~107_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[37]~107_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[37]~152_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X22_Y19_N16
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[38]~106_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[38]~143_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[38]~106_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[38]~143_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y19_N18
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[42]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~153_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Add6~14_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~153_combout\);

-- Location: LCCOMB_X22_Y19_N6
\Div1|auto_generated|divider|divider|StageOut[43]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~144_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[37]~152_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[37]~152_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~144_combout\);

-- Location: LCCOMB_X22_Y19_N26
\Div1|auto_generated|divider|divider|StageOut[43]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~112_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~112_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Div1|auto_generated|divider|divider|StageOut[42]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~113_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~113_combout\);

-- Location: LCCOMB_X22_Y19_N8
\Div1|auto_generated|divider|divider|StageOut[41]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[41]~114_combout\ = (\Add6~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[41]~114_combout\);

-- Location: LCCOMB_X22_Y19_N2
\Div1|auto_generated|divider|divider|StageOut[41]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[41]~115_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[41]~115_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Div1|auto_generated|divider|divider|StageOut[40]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~117_combout\ = (\Add6~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~117_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[40]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~116_combout\ = (\Add6~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~116_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[40]~117_combout\) # (\Div1|auto_generated|divider|divider|StageOut[40]~116_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[40]~117_combout\) # (\Div1|auto_generated|divider|divider|StageOut[40]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[40]~117_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[40]~116_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X23_Y20_N20
\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[41]~114_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[41]~115_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[41]~114_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[41]~115_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[41]~114_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[41]~115_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[41]~114_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[41]~115_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X23_Y20_N22
\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[42]~153_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[42]~113_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[42]~153_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[42]~113_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[42]~153_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[42]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[42]~153_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[42]~113_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N24
\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[43]~144_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[43]~112_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[43]~144_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[43]~112_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y20_N26
\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Div1|auto_generated|divider|divider|StageOut[48]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[42]~153_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[42]~153_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Div1|auto_generated|divider|divider|StageOut[48]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~118_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~118_combout\);

-- Location: LCCOMB_X22_Y19_N22
\Div1|auto_generated|divider|divider|StageOut[47]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[47]~154_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Add6~12_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \Add6~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[47]~154_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Div1|auto_generated|divider|divider|StageOut[47]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[47]~119_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[47]~119_combout\);

-- Location: LCCOMB_X23_Y20_N16
\Div1|auto_generated|divider|divider|StageOut[46]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~120_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Add6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Add6~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~120_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Div1|auto_generated|divider|divider|StageOut[46]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~121_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~121_combout\);

-- Location: LCCOMB_X24_Y20_N6
\Div1|auto_generated|divider|divider|StageOut[45]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~122_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Add6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Add6~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~122_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Div1|auto_generated|divider|divider|StageOut[45]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~123_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Add6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Add6~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~123_combout\);

-- Location: LCCOMB_X23_Y20_N6
\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[45]~122_combout\) # (\Div1|auto_generated|divider|divider|StageOut[45]~123_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[45]~122_combout\) # (\Div1|auto_generated|divider|divider|StageOut[45]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[45]~122_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[45]~123_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X23_Y20_N8
\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[46]~120_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[46]~121_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[46]~120_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[46]~121_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[46]~120_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[46]~121_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[46]~120_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[46]~121_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X23_Y20_N10
\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[47]~154_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[47]~119_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[47]~154_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[47]~119_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[47]~154_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[47]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[47]~154_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[47]~119_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N12
\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[48]~118_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[48]~118_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y20_N14
\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[53]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~124_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~124_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Div1|auto_generated|divider|divider|StageOut[53]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~146_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[47]~154_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[47]~154_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~146_combout\);

-- Location: LCCOMB_X22_Y20_N6
\Div1|auto_generated|divider|divider|StageOut[52]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~155_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\Add6~10_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~155_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Div1|auto_generated|divider|divider|StageOut[52]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~125_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~125_combout\);

-- Location: LCCOMB_X22_Y20_N22
\Div1|auto_generated|divider|divider|StageOut[51]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~126_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Add6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Add6~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~126_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Div1|auto_generated|divider|divider|StageOut[51]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~127_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~127_combout\);

-- Location: LCCOMB_X22_Y20_N26
\Div1|auto_generated|divider|divider|StageOut[50]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~128_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Add6~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~128_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Div1|auto_generated|divider|divider|StageOut[50]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~129_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Add6~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~129_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[50]~128_combout\) # (\Div1|auto_generated|divider|divider|StageOut[50]~129_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[50]~128_combout\) # (\Div1|auto_generated|divider|divider|StageOut[50]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[50]~128_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~129_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X22_Y20_N14
\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[51]~126_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[51]~127_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[51]~126_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[51]~127_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[51]~126_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[51]~127_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~126_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[51]~127_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X22_Y20_N16
\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[52]~155_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[52]~125_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[52]~155_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[52]~125_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[52]~155_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[52]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~155_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[52]~125_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X22_Y20_N18
\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[53]~124_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[53]~146_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~124_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[53]~146_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y20_N20
\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[58]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~130_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~130_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Div1|auto_generated|divider|divider|StageOut[58]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~147_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[52]~155_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~155_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~147_combout\);

-- Location: LCCOMB_X20_Y20_N10
\Div1|auto_generated|divider|divider|StageOut[57]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\Add6~8_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Div1|auto_generated|divider|divider|StageOut[57]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[57]~131_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[57]~131_combout\);

-- Location: LCCOMB_X22_Y20_N4
\Div1|auto_generated|divider|divider|StageOut[56]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[56]~133_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[56]~133_combout\);

-- Location: LCCOMB_X20_Y20_N6
\Div1|auto_generated|divider|divider|StageOut[56]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[56]~132_combout\ = (\Add6~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[56]~132_combout\);

-- Location: LCCOMB_X20_Y20_N26
\Div1|auto_generated|divider|divider|StageOut[55]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[55]~135_combout\ = (\Add6~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[55]~135_combout\);

-- Location: LCCOMB_X20_Y20_N28
\Div1|auto_generated|divider|divider|StageOut[55]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[55]~134_combout\ = (\Add6~4_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[55]~134_combout\);

-- Location: LCCOMB_X21_Y20_N18
\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[55]~135_combout\) # (\Div1|auto_generated|divider|divider|StageOut[55]~134_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[55]~135_combout\) # (\Div1|auto_generated|divider|divider|StageOut[55]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[55]~135_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[55]~134_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X21_Y20_N20
\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[56]~133_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[56]~132_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[56]~133_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[56]~132_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[56]~133_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[56]~132_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[56]~133_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[56]~132_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X21_Y20_N22
\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[57]~131_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[57]~131_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[57]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[57]~131_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X21_Y20_N24
\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[58]~130_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[58]~147_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[58]~130_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[58]~147_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y20_N26
\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[63]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[63]~148_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[63]~148_combout\);

-- Location: LCCOMB_X21_Y20_N14
\Div1|auto_generated|divider|divider|StageOut[63]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[63]~136_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[63]~136_combout\);

-- Location: LCCOMB_X21_Y20_N12
\Div1|auto_generated|divider|divider|StageOut[62]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~137_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~137_combout\);

-- Location: LCCOMB_X20_Y20_N4
\Div1|auto_generated|divider|divider|StageOut[62]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~157_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\Add6~6_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~157_combout\);

-- Location: LCCOMB_X21_Y20_N10
\Div1|auto_generated|divider|divider|StageOut[61]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~138_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \Add6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \Add6~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~138_combout\);

-- Location: LCCOMB_X21_Y20_N28
\Div1|auto_generated|divider|divider|StageOut[61]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~139_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~139_combout\);

-- Location: LCCOMB_X20_Y20_N12
\Div1|auto_generated|divider|divider|StageOut[60]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~140_combout\ = (\Add6~2_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~140_combout\);

-- Location: LCCOMB_X21_Y20_N16
\Div1|auto_generated|divider|divider|StageOut[60]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~141_combout\ = (\Add6~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~141_combout\);

-- Location: LCCOMB_X21_Y20_N0
\count_1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[0]~3_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[60]~140_combout\) # (\Div1|auto_generated|divider|divider|StageOut[60]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[60]~140_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[60]~141_combout\,
	datad => VCC,
	cout => \count_1[0]~3_cout\);

-- Location: LCCOMB_X21_Y20_N2
\count_1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[0]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[61]~138_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[61]~139_combout\ & !\count_1[0]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[61]~138_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[61]~139_combout\,
	datad => VCC,
	cin => \count_1[0]~3_cout\,
	cout => \count_1[0]~5_cout\);

-- Location: LCCOMB_X21_Y20_N4
\count_1[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[0]~7_cout\ = CARRY((!\count_1[0]~5_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[62]~137_combout\) # (\Div1|auto_generated|divider|divider|StageOut[62]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[62]~137_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[62]~157_combout\,
	datad => VCC,
	cin => \count_1[0]~5_cout\,
	cout => \count_1[0]~7_cout\);

-- Location: LCCOMB_X21_Y20_N6
\count_1[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[0]~9_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[63]~148_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[63]~136_combout\ & !\count_1[0]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[63]~148_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[63]~136_combout\,
	datad => VCC,
	cin => \count_1[0]~7_cout\,
	cout => \count_1[0]~9_cout\);

-- Location: LCCOMB_X21_Y20_N8
\count_1[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[0]~10_combout\ = !\count_1[0]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \count_1[0]~9_cout\,
	combout => \count_1[0]~10_combout\);

-- Location: FF_X21_Y20_N9
\count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_1[0]~10_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1(0));

-- Location: LCCOMB_X19_Y18_N0
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (count_1(0) & (count(1) $ (VCC))) # (!count_1(0) & ((count(1)) # (GND)))
-- \Add9~1\ = CARRY((count(1)) # (!count_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(0),
	datab => count(1),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X20_Y20_N0
\count_1[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[1]~12_combout\ = !\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \count_1[1]~12_combout\);

-- Location: FF_X20_Y20_N1
\count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_1[1]~12_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1(1));

-- Location: LCCOMB_X21_Y21_N26
\count_1[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[3]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \count_1[3]~14_combout\);

-- Location: FF_X21_Y21_N27
\count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_1[3]~14_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1(3));

-- Location: LCCOMB_X21_Y21_N20
\count_1[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_1[2]~13_combout\ = !\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \count_1[2]~13_combout\);

-- Location: FF_X21_Y21_N21
\count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_1[2]~13_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1(2));

-- Location: LCCOMB_X21_Y21_N18
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (count_1(3) & (count_1(2) & ((count_1(1)) # (count_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X21_Y21_N4
\Add8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = (count_1(3) & (((!count_1(1) & !count_1(0))) # (!count_1(2)))) # (!count_1(3) & (count_1(1) & (count_1(0) & count_1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X21_Y21_N6
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (count_1(1) & ((count_1(3) & ((!count_1(2)))) # (!count_1(3) & (!count_1(0) & count_1(2))))) # (!count_1(1) & (count_1(2) & ((!count_1(3)) # (!count_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Add8~2_combout\);

-- Location: LCCOMB_X21_Y21_N24
\Add8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~3_combout\ = count_1(1) $ (count_1(3) $ (((count_1(0) & count_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Add8~3_combout\);

-- Location: LCCOMB_X19_Y18_N30
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = count_1(0) $ (count_1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_1(0),
	datad => count_1(2),
	combout => \Add8~4_combout\);

-- Location: LCCOMB_X19_Y18_N2
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (count_1(1) & ((\Add7~0_combout\ & (!\Add9~1\)) # (!\Add7~0_combout\ & ((\Add9~1\) # (GND))))) # (!count_1(1) & ((\Add7~0_combout\ & (\Add9~1\ & VCC)) # (!\Add7~0_combout\ & (!\Add9~1\))))
-- \Add9~3\ = CARRY((count_1(1) & ((!\Add9~1\) # (!\Add7~0_combout\))) # (!count_1(1) & (!\Add7~0_combout\ & !\Add9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => \Add7~0_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X19_Y18_N4
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\Add7~2_combout\ $ (\Add8~4_combout\ $ (\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((\Add7~2_combout\ & ((!\Add9~3\) # (!\Add8~4_combout\))) # (!\Add7~2_combout\ & (!\Add8~4_combout\ & !\Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X19_Y18_N6
\Add9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~7_cout\ = CARRY((\Add7~4_combout\ & (\Add8~3_combout\ & !\Add9~5\)) # (!\Add7~4_combout\ & ((\Add8~3_combout\) # (!\Add9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add8~3_combout\,
	datad => VCC,
	cin => \Add9~5\,
	cout => \Add9~7_cout\);

-- Location: LCCOMB_X19_Y18_N8
\Add9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~9_cout\ = CARRY((\Add7~6_combout\ & ((!\Add9~7_cout\) # (!\Add8~2_combout\))) # (!\Add7~6_combout\ & (!\Add8~2_combout\ & !\Add9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add8~2_combout\,
	datad => VCC,
	cin => \Add9~7_cout\,
	cout => \Add9~9_cout\);

-- Location: LCCOMB_X19_Y18_N10
\Add9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~11_cout\ = CARRY((\Add7~8_combout\ & (\Add8~1_combout\ & !\Add9~9_cout\)) # (!\Add7~8_combout\ & ((\Add8~1_combout\) # (!\Add9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add8~1_combout\,
	datad => VCC,
	cin => \Add9~9_cout\,
	cout => \Add9~11_cout\);

-- Location: LCCOMB_X19_Y18_N12
\Add9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~13_cout\ = CARRY((\Add7~10_combout\ & ((!\Add9~11_cout\) # (!\Add8~0_combout\))) # (!\Add7~10_combout\ & (!\Add8~0_combout\ & !\Add9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \Add8~0_combout\,
	datad => VCC,
	cin => \Add9~11_cout\,
	cout => \Add9~13_cout\);

-- Location: LCCOMB_X19_Y18_N14
\Add9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~15_cout\ = CARRY((!\Add7~12_combout\ & !\Add9~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \Add9~13_cout\,
	cout => \Add9~15_cout\);

-- Location: LCCOMB_X19_Y18_N16
\Add9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~17_cout\ = CARRY((\Add7~14_combout\) # (!\Add9~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add9~15_cout\,
	cout => \Add9~17_cout\);

-- Location: LCCOMB_X19_Y18_N18
\Add9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~19_cout\ = CARRY((!\Add7~16_combout\ & !\Add9~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datad => VCC,
	cin => \Add9~17_cout\,
	cout => \Add9~19_cout\);

-- Location: LCCOMB_X19_Y18_N20
\Add9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~21_cout\ = CARRY((\Add7~18_combout\) # (!\Add9~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~18_combout\,
	datad => VCC,
	cin => \Add9~19_cout\,
	cout => \Add9~21_cout\);

-- Location: LCCOMB_X19_Y18_N22
\Add9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~23_cout\ = CARRY((!\Add7~20_combout\ & !\Add9~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add9~21_cout\,
	cout => \Add9~23_cout\);

-- Location: LCCOMB_X19_Y18_N24
\Add9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = \Add9~23_cout\ $ (\Add7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add7~20_combout\,
	cin => \Add9~23_cout\,
	combout => \Add9~24_combout\);

-- Location: LCCOMB_X11_Y21_N16
\count_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_0~4_combout\ = count(0) $ (\Add9~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => \Add9~24_combout\,
	combout => \count_0~4_combout\);

-- Location: LCCOMB_X16_Y21_N6
\count_0[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_0[0]~5_combout\ = (\count_0~4_combout\ & (\Add9~24_combout\ $ (VCC))) # (!\count_0~4_combout\ & (\Add9~24_combout\ & VCC))
-- \count_0[0]~6\ = CARRY((\count_0~4_combout\ & \Add9~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_0~4_combout\,
	datab => \Add9~24_combout\,
	datad => VCC,
	combout => \count_0[0]~5_combout\,
	cout => \count_0[0]~6\);

-- Location: LCCOMB_X16_Y21_N8
\count_0[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_0[1]~7_combout\ = (\count_0[0]~6\ & (\Add9~0_combout\ $ ((!\Add9~24_combout\)))) # (!\count_0[0]~6\ & ((\Add9~0_combout\ $ (\Add9~24_combout\)) # (GND)))
-- \count_0[1]~8\ = CARRY((\Add9~0_combout\ $ (!\Add9~24_combout\)) # (!\count_0[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \Add9~24_combout\,
	datad => VCC,
	cin => \count_0[0]~6\,
	combout => \count_0[1]~7_combout\,
	cout => \count_0[1]~8\);

-- Location: FF_X16_Y21_N9
\count_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_0[1]~7_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0(1));

-- Location: LCCOMB_X16_Y21_N10
\count_0[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_0[2]~9_combout\ = (\count_0[1]~8\ & ((\Add9~2_combout\ $ (\Add9~24_combout\)))) # (!\count_0[1]~8\ & (\Add9~2_combout\ $ (\Add9~24_combout\ $ (VCC))))
-- \count_0[2]~10\ = CARRY((!\count_0[1]~8\ & (\Add9~2_combout\ $ (\Add9~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~24_combout\,
	datad => VCC,
	cin => \count_0[1]~8\,
	combout => \count_0[2]~9_combout\,
	cout => \count_0[2]~10\);

-- Location: FF_X16_Y21_N11
\count_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_0[2]~9_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0(2));

-- Location: LCCOMB_X16_Y21_N12
\count_0[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_0[3]~11_combout\ = \Add9~24_combout\ $ (\count_0[2]~10\ $ (\Add9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~24_combout\,
	datad => \Add9~4_combout\,
	cin => \count_0[2]~10\,
	combout => \count_0[3]~11_combout\);

-- Location: FF_X16_Y21_N13
\count_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_0[3]~11_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0(3));

-- Location: FF_X16_Y21_N7
\count_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_0[0]~5_combout\,
	clrn => \RAZ~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0(0));

-- Location: LCCOMB_X24_Y25_N0
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (count_0(3)) # ((count_0(1) & ((!count_0(0)) # (!count_0(2)))) # (!count_0(1) & (count_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datab => count_0(2),
	datac => count_0(3),
	datad => count_0(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y25_N10
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!count_0(3) & ((count_0(1) & ((count_0(0)) # (!count_0(2)))) # (!count_0(1) & (!count_0(2) & count_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datab => count_0(2),
	datac => count_0(3),
	datad => count_0(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y25_N4
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count_0(0)) # ((!count_0(1) & count_0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datac => count_0(2),
	datad => count_0(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y25_N2
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!count_0(3) & ((count_0(1) & (count_0(2) & count_0(0))) # (!count_0(1) & (count_0(2) $ (count_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datab => count_0(2),
	datac => count_0(3),
	datad => count_0(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y25_N20
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (count_0(1) & (!count_0(2) & !count_0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datac => count_0(2),
	datad => count_0(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y25_N22
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (count_0(2) & (count_0(1) $ (count_0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datac => count_0(2),
	datad => count_0(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y25_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!count_0(1) & (!count_0(3) & (count_0(2) $ (count_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0(1),
	datab => count_0(2),
	datac => count_0(3),
	datad => count_0(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (count_1(3)) # ((count_1(1) & ((!count_1(2)) # (!count_1(0)))) # (!count_1(1) & ((count_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!count_1(3) & ((count_1(1) & ((count_1(0)) # (!count_1(2)))) # (!count_1(1) & (count_1(0) & !count_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X21_Y21_N12
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (count_1(0)) # ((!count_1(1) & count_1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datac => count_1(0),
	datad => count_1(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!count_1(3) & ((count_1(1) & (count_1(0) & count_1(2))) # (!count_1(1) & (count_1(0) $ (count_1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X21_Y21_N28
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (count_1(1) & (!count_1(0) & !count_1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datac => count_1(0),
	datad => count_1(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (count_1(2) & (count_1(1) $ (count_1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datac => count_1(0),
	datad => count_1(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!count_1(1) & (!count_1(3) & (count_1(0) $ (count_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1(1),
	datab => count_1(0),
	datac => count_1(3),
	datad => count_1(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X14_Y18_N8
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (count_2(3)) # ((count_2(1) & ((!count_2(2)) # (!count_2(0)))) # (!count_2(1) & ((count_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(1),
	datab => count_2(0),
	datac => count_2(3),
	datad => count_2(2),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X14_Y18_N18
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!count_2(3) & ((count_2(1) & ((count_2(0)) # (!count_2(2)))) # (!count_2(1) & (count_2(0) & !count_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(1),
	datab => count_2(0),
	datac => count_2(3),
	datad => count_2(2),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X14_Y18_N20
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (count_2(0)) # ((!count_2(1) & count_2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_2(1),
	datac => count_2(0),
	datad => count_2(2),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X14_Y18_N2
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!count_2(3) & ((count_2(1) & (count_2(0) & count_2(2))) # (!count_2(1) & (count_2(0) $ (count_2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(1),
	datab => count_2(0),
	datac => count_2(3),
	datad => count_2(2),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X14_Y18_N28
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (count_2(1) & (!count_2(0) & !count_2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_2(1),
	datac => count_2(0),
	datad => count_2(2),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X14_Y18_N22
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (count_2(2) & (count_2(1) $ (count_2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_2(1),
	datac => count_2(0),
	datad => count_2(2),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X14_Y18_N0
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!count_2(1) & (!count_2(3) & (count_2(0) $ (count_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(1),
	datab => count_2(0),
	datac => count_2(3),
	datad => count_2(2),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X11_Y18_N28
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (count(0) & ((count(1)) # (\A_CURR[1]~2_combout\ $ (\B_LAST~2_combout\)))) # (!count(0) & (count(1) & (\A_CURR[1]~2_combout\ $ (!\B_LAST~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => \A_CURR[1]~2_combout\,
	datad => \B_LAST~2_combout\,
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X11_Y18_N6
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (count(1)) # (\B_LAST~2_combout\ $ (!\A_CURR[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_LAST~2_combout\,
	datab => count(1),
	datad => \A_CURR[1]~2_combout\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X11_Y21_N14
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (count(0) & (\B_LAST~2_combout\ $ (!\A_CURR[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => \B_LAST~2_combout\,
	datad => \A_CURR[1]~2_combout\,
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X11_Y21_N20
\count_leds[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_leds[2]~3_cout\ = CARRY((!\CompteurTicks~0_combout\ & \Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cout => \count_leds[2]~3_cout\);

-- Location: LCCOMB_X11_Y21_N22
\count_leds[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_leds[2]~5_cout\ = CARRY((\Add4~1_combout\ & (!\Add4~0_combout\ & !\count_leds[2]~3_cout\)) # (!\Add4~1_combout\ & ((!\count_leds[2]~3_cout\) # (!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \Add4~0_combout\,
	datad => VCC,
	cin => \count_leds[2]~3_cout\,
	cout => \count_leds[2]~5_cout\);

-- Location: LCCOMB_X11_Y21_N24
\count_leds[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_leds[2]~6_combout\ = ((\CompteurTicks~0_combout\ $ (count_leds(2) $ (\count_leds[2]~5_cout\)))) # (GND)
-- \count_leds[2]~7\ = CARRY((\CompteurTicks~0_combout\ & (count_leds(2) & !\count_leds[2]~5_cout\)) # (!\CompteurTicks~0_combout\ & ((count_leds(2)) # (!\count_leds[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CompteurTicks~0_combout\,
	datab => count_leds(2),
	datad => VCC,
	cin => \count_leds[2]~5_cout\,
	combout => \count_leds[2]~6_combout\,
	cout => \count_leds[2]~7\);

-- Location: FF_X11_Y21_N25
\count_leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_leds[2]~6_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_leds(2));

-- Location: LCCOMB_X11_Y21_N26
\count_leds[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_leds[3]~8_combout\ = count_leds(3) $ (\count_leds[2]~7\ $ (!\CompteurTicks~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_leds(3),
	datad => \CompteurTicks~0_combout\,
	cin => \count_leds[2]~7\,
	combout => \count_leds[3]~8_combout\);

-- Location: FF_X11_Y21_N27
\count_leds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_leds[3]~8_combout\,
	clrn => \RAZ~input_o\,
	ena => \CompteurTicks~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_leds(3));

ww_LED_A <= \LED_A~output_o\;

ww_LED_B <= \LED_B~output_o\;

ww_DIGIT_0(0) <= \DIGIT_0[0]~output_o\;

ww_DIGIT_0(1) <= \DIGIT_0[1]~output_o\;

ww_DIGIT_0(2) <= \DIGIT_0[2]~output_o\;

ww_DIGIT_0(3) <= \DIGIT_0[3]~output_o\;

ww_DIGIT_0(4) <= \DIGIT_0[4]~output_o\;

ww_DIGIT_0(5) <= \DIGIT_0[5]~output_o\;

ww_DIGIT_0(6) <= \DIGIT_0[6]~output_o\;

ww_DIGIT_1(0) <= \DIGIT_1[0]~output_o\;

ww_DIGIT_1(1) <= \DIGIT_1[1]~output_o\;

ww_DIGIT_1(2) <= \DIGIT_1[2]~output_o\;

ww_DIGIT_1(3) <= \DIGIT_1[3]~output_o\;

ww_DIGIT_1(4) <= \DIGIT_1[4]~output_o\;

ww_DIGIT_1(5) <= \DIGIT_1[5]~output_o\;

ww_DIGIT_1(6) <= \DIGIT_1[6]~output_o\;

ww_DIGIT_2(0) <= \DIGIT_2[0]~output_o\;

ww_DIGIT_2(1) <= \DIGIT_2[1]~output_o\;

ww_DIGIT_2(2) <= \DIGIT_2[2]~output_o\;

ww_DIGIT_2(3) <= \DIGIT_2[3]~output_o\;

ww_DIGIT_2(4) <= \DIGIT_2[4]~output_o\;

ww_DIGIT_2(5) <= \DIGIT_2[5]~output_o\;

ww_DIGIT_2(6) <= \DIGIT_2[6]~output_o\;

ww_DIGIT_3(0) <= \DIGIT_3[0]~output_o\;

ww_DIGIT_3(1) <= \DIGIT_3[1]~output_o\;

ww_DIGIT_3(2) <= \DIGIT_3[2]~output_o\;

ww_DIGIT_3(3) <= \DIGIT_3[3]~output_o\;

ww_DIGIT_3(4) <= \DIGIT_3[4]~output_o\;

ww_DIGIT_3(5) <= \DIGIT_3[5]~output_o\;

ww_DIGIT_3(6) <= \DIGIT_3[6]~output_o\;

ww_OUTPUT_LEDS(0) <= \OUTPUT_LEDS[0]~output_o\;

ww_OUTPUT_LEDS(1) <= \OUTPUT_LEDS[1]~output_o\;

ww_OUTPUT_LEDS(2) <= \OUTPUT_LEDS[2]~output_o\;

ww_OUTPUT_LEDS(3) <= \OUTPUT_LEDS[3]~output_o\;
END structure;


