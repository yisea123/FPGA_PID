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

-- DATE "11/09/2018 12:38:34"

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
	duty : IN std_logic_vector(2 DOWNTO 0);
	pwm_out : BUFFER std_logic
	);
END pwm;

-- Design Ports Information
-- pwm_out	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_duty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \duty_prop~0_combout\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~68_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[14]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[14]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \duty_prop~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~106_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \duty_prop~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~77_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \duty_prop~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~80_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \duty_prop~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~8_combout\ : std_logic;
SIGNAL \duty_prop~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \duty_prop~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \duty_prop~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \duty_prop~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~127_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][1]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \duty_prop~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \duty_prop~10_combout\ : std_logic;
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

-- Location: IOOBUF_X21_Y29_N2
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

-- Location: LCCOMB_X23_Y26_N8
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

-- Location: LCCOMB_X22_Y26_N18
\count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~0_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \count~1_combout\);

-- Location: FF_X22_Y26_N19
\count[0]\ : dffeas
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
	q => count(0));

-- Location: LCCOMB_X23_Y26_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X22_Y26_N10
\count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\Add0~2_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \count~8_combout\);

-- Location: FF_X22_Y26_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X23_Y26_N12
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

-- Location: LCCOMB_X22_Y26_N4
\count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (\Add0~4_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~3_combout\,
	combout => \count~7_combout\);

-- Location: FF_X22_Y26_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X23_Y26_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X22_Y26_N2
\count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\Add0~6_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \count~6_combout\);

-- Location: FF_X22_Y26_N3
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X23_Y26_N16
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

-- Location: FF_X22_Y26_N25
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X23_Y26_N18
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

-- Location: FF_X22_Y26_N31
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

-- Location: LCCOMB_X22_Y26_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(4) & (!count(0) & !count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(0),
	datac => count(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y26_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(1) & (count(2) & count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => count(2),
	datad => count(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y26_N20
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

-- Location: LCCOMB_X22_Y26_N14
\count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add0~12_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~3_combout\,
	combout => \count~5_combout\);

-- Location: FF_X22_Y26_N15
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

-- Location: LCCOMB_X23_Y26_N22
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

-- Location: LCCOMB_X22_Y26_N28
\count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal0~3_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datad => \Add0~14_combout\,
	combout => \count~4_combout\);

-- Location: FF_X22_Y26_N29
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

-- Location: LCCOMB_X23_Y26_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X22_Y26_N26
\count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!\Equal0~3_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datad => \Add0~16_combout\,
	combout => \count~3_combout\);

-- Location: FF_X22_Y26_N27
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

-- Location: LCCOMB_X23_Y26_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X22_Y26_N20
\count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (!\Equal0~3_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datad => \Add0~18_combout\,
	combout => \count~2_combout\);

-- Location: FF_X22_Y26_N21
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

-- Location: LCCOMB_X23_Y26_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(8) & (count(7) & (count(9) & count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(7),
	datac => count(9),
	datad => count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y26_N6
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (count(10) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => count(10),
	datad => \Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y26_N28
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

-- Location: LCCOMB_X22_Y26_N12
\count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\Equal0~3_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datad => \Add0~20_combout\,
	combout => \count~0_combout\);

-- Location: FF_X22_Y26_N13
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

-- Location: IOIBUF_X26_Y29_N22
\duty[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: FF_X23_Y26_N5
\duty_prop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(10));

-- Location: LCCOMB_X22_Y26_N8
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(8) & (!count(7) & (!count(6) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(7),
	datac => count(6),
	datad => count(9),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y26_N24
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(3) & (!count(2) & !count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datad => count(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X22_Y26_N16
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!count(10) & (\Equal1~0_combout\ & (\Equal0~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X23_Y26_N4
\duty_prop~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~0_combout\ = (\Equal1~2_combout\ & (\duty[2]~input_o\)) # (!\Equal1~2_combout\ & ((duty_prop(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[2]~input_o\,
	datac => duty_prop(10),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~0_combout\);

-- Location: IOIBUF_X23_Y29_N22
\duty[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\duty[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: LCCOMB_X20_Y27_N8
\Mult0|mult_core|romout[0][13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][13]~combout\ = (\duty[2]~input_o\ & ((\duty[1]~input_o\) # (\duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][13]~combout\);

-- Location: LCCOMB_X20_Y27_N26
\Mult0|mult_core|romout[0][12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~combout\ = (\duty[1]~input_o\ & (\duty[0]~input_o\)) # (!\duty[1]~input_o\ & (!\duty[0]~input_o\ & \duty[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][12]~combout\);

-- Location: LCCOMB_X20_Y27_N28
\Mult0|mult_core|romout[0][11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~0_combout\ = (!\duty[0]~input_o\ & ((\duty[1]~input_o\) # (\duty[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][11]~0_combout\);

-- Location: LCCOMB_X21_Y27_N6
\Div0|auto_generated|divider|divider|op_5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~0_combout\ = \Mult0|mult_core|romout[0][11]~0_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\Mult0|mult_core|romout[0][11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~0_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X21_Y27_N8
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\Mult0|mult_core|romout[0][12]~combout\ & (!\Div0|auto_generated|divider|divider|op_5~1\)) # (!\Mult0|mult_core|romout[0][12]~combout\ & ((\Div0|auto_generated|divider|divider|op_5~1\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div0|auto_generated|divider|divider|op_5~1\) # (!\Mult0|mult_core|romout[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X21_Y27_N10
\Div0|auto_generated|divider|divider|op_5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~4_combout\ = (\Mult0|mult_core|romout[0][13]~combout\ & (\Div0|auto_generated|divider|divider|op_5~3\ $ (GND))) # (!\Mult0|mult_core|romout[0][13]~combout\ & (!\Div0|auto_generated|divider|divider|op_5~3\ & VCC))
-- \Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\Mult0|mult_core|romout[0][13]~combout\ & !\Div0|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][13]~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	combout => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X21_Y27_N12
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = !\Div0|auto_generated|divider|divider|op_5~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\);

-- Location: LCCOMB_X21_Y27_N20
\Div0|auto_generated|divider|divider|StageOut[10]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~66_combout\ = (\Div0|auto_generated|divider|divider|op_5~4_combout\ & !\Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~66_combout\);

-- Location: LCCOMB_X20_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[10]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~98_combout\ = (\Div0|auto_generated|divider|divider|op_5~6_combout\ & (\duty[2]~input_o\ & ((\duty[0]~input_o\) # (\duty[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~98_combout\);

-- Location: LCCOMB_X21_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[9]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~67_combout\ = (\Div0|auto_generated|divider|divider|op_5~2_combout\ & !\Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~67_combout\);

-- Location: LCCOMB_X21_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[9]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~99_combout\ = (\Div0|auto_generated|divider|divider|op_5~6_combout\ & ((\duty[0]~input_o\ & ((\duty[1]~input_o\))) # (!\duty[0]~input_o\ & (\duty[2]~input_o\ & !\duty[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datab => \duty[0]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \duty[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~99_combout\);

-- Location: LCCOMB_X21_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[8]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~100_combout\ = (\Div0|auto_generated|divider|divider|op_5~6_combout\ & (!\duty[0]~input_o\ & ((\duty[2]~input_o\) # (\duty[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datab => \duty[0]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \duty[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~100_combout\);

-- Location: LCCOMB_X21_Y27_N16
\Div0|auto_generated|divider|divider|StageOut[8]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~68_combout\ = (!\Div0|auto_generated|divider|divider|op_5~6_combout\ & \Div0|auto_generated|divider|divider|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~68_combout\);

-- Location: LCCOMB_X20_Y27_N6
\Mult0|mult_core|romout[0][10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~1_combout\ = (\duty[1]~input_o\) # ((\duty[0]~input_o\) # (\duty[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][10]~1_combout\);

-- Location: LCCOMB_X20_Y27_N16
\Div0|auto_generated|divider|divider|op_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~0_combout\ = \Mult0|mult_core|romout[0][10]~1_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_6~1\ = CARRY(\Mult0|mult_core|romout[0][10]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~1_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X20_Y27_N18
\Div0|auto_generated|divider|divider|op_6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[8]~100_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[8]~100_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[8]~68_combout\ & (!\Div0|auto_generated|divider|divider|op_6~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[8]~68_combout\ & ((\Div0|auto_generated|divider|divider|op_6~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[8]~100_combout\ & !\Div0|auto_generated|divider|divider|StageOut[8]~68_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~100_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~68_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1\,
	combout => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X20_Y27_N20
\Div0|auto_generated|divider|divider|op_6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~4_combout\ = (\Div0|auto_generated|divider|divider|op_6~3\ & (((\Div0|auto_generated|divider|divider|StageOut[9]~67_combout\) # (\Div0|auto_generated|divider|divider|StageOut[9]~99_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_6~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[9]~67_combout\) # (\Div0|auto_generated|divider|divider|StageOut[9]~99_combout\)))))
-- \Div0|auto_generated|divider|divider|op_6~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_6~3\ & ((\Div0|auto_generated|divider|divider|StageOut[9]~67_combout\) # (\Div0|auto_generated|divider|divider|StageOut[9]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[9]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3\,
	combout => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X20_Y27_N22
\Div0|auto_generated|divider|divider|op_6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[10]~66_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[10]~98_combout\ & !\Div0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[10]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[10]~98_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~5\,
	cout => \Div0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X20_Y27_N24
\Div0|auto_generated|divider|divider|op_6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~8_combout\ = \Div0|auto_generated|divider|divider|op_6~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~8_combout\);

-- Location: LCCOMB_X20_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[14]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[14]~69_combout\ = (!\Div0|auto_generated|divider|divider|op_6~8_combout\ & \Div0|auto_generated|divider|divider|op_6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[14]~69_combout\);

-- Location: LCCOMB_X20_Y27_N10
\Div0|auto_generated|divider|divider|StageOut[14]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[14]~101_combout\ = (\Div0|auto_generated|divider|divider|op_6~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[9]~99_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~6_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[9]~99_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[14]~101_combout\);

-- Location: LCCOMB_X20_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[13]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~70_combout\ = (\Div0|auto_generated|divider|divider|op_6~2_combout\ & !\Div0|auto_generated|divider|divider|op_6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~70_combout\);

-- Location: LCCOMB_X20_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[13]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~102_combout\ = (\Div0|auto_generated|divider|divider|op_6~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[8]~100_combout\) # ((!\Div0|auto_generated|divider|divider|op_5~6_combout\ & 
-- \Div0|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~100_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~102_combout\);

-- Location: LCCOMB_X20_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[12]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~71_combout\ = (!\Div0|auto_generated|divider|divider|op_6~8_combout\ & \Div0|auto_generated|divider|divider|op_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~71_combout\);

-- Location: LCCOMB_X20_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[12]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~103_combout\ = (\Div0|auto_generated|divider|divider|op_6~8_combout\ & ((\duty[1]~input_o\) # ((\duty[0]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[1]~input_o\,
	datab => \duty[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~103_combout\);

-- Location: LCCOMB_X20_Y26_N14
\Div0|auto_generated|divider|divider|op_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~0_combout\ = \Mult0|mult_core|romout[0][10]~1_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_7~1\ = CARRY(\Mult0|mult_core|romout[0][10]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~1_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X20_Y26_N16
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[12]~71_combout\ & (((!\Div0|auto_generated|divider|divider|op_7~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[12]~71_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[12]~103_combout\ & (!\Div0|auto_generated|divider|divider|op_7~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[12]~103_combout\ & ((\Div0|auto_generated|divider|divider|op_7~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[12]~71_combout\ & !\Div0|auto_generated|divider|divider|StageOut[12]~103_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[12]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[12]~103_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X20_Y26_N18
\Div0|auto_generated|divider|divider|op_7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~4_combout\ = (\Div0|auto_generated|divider|divider|op_7~3\ & (((\Div0|auto_generated|divider|divider|StageOut[13]~70_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~102_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[13]~70_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~102_combout\)))))
-- \Div0|auto_generated|divider|divider|op_7~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_7~3\ & ((\Div0|auto_generated|divider|divider|StageOut[13]~70_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[13]~70_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[13]~102_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	combout => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X20_Y26_N20
\Div0|auto_generated|divider|divider|op_7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[14]~69_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[14]~101_combout\ & !\Div0|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[14]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[14]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~5\,
	cout => \Div0|auto_generated|divider|divider|op_7~7_cout\);

-- Location: LCCOMB_X20_Y26_N22
\Div0|auto_generated|divider|divider|op_7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~8_combout\ = \Div0|auto_generated|divider|divider|op_7~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~8_combout\);

-- Location: FF_X20_Y26_N29
\duty_prop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_prop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_prop(9));

-- Location: LCCOMB_X20_Y26_N28
\duty_prop~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~1_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_7~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datac => duty_prop(9),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~1_combout\);

-- Location: LCCOMB_X20_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[18]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~104_combout\ = (\Div0|auto_generated|divider|divider|op_7~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[13]~102_combout\) # ((\Div0|auto_generated|divider|divider|op_6~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[13]~102_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~104_combout\);

-- Location: LCCOMB_X20_Y28_N28
\Div0|auto_generated|divider|divider|StageOut[18]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~72_combout\ = (\Div0|auto_generated|divider|divider|op_7~4_combout\ & !\Div0|auto_generated|divider|divider|op_7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~72_combout\);

-- Location: LCCOMB_X20_Y28_N30
\Div0|auto_generated|divider|divider|StageOut[17]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~73_combout\ = (\Div0|auto_generated|divider|divider|op_7~2_combout\ & !\Div0|auto_generated|divider|divider|op_7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~73_combout\);

-- Location: LCCOMB_X20_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[17]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~105_combout\ = (\Div0|auto_generated|divider|divider|op_7~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[12]~103_combout\) # ((!\Div0|auto_generated|divider|divider|op_6~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[12]~103_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~105_combout\);

-- Location: LCCOMB_X20_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[16]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~74_combout\ = (!\Div0|auto_generated|divider|divider|op_7~8_combout\ & \Div0|auto_generated|divider|divider|op_7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~74_combout\);

-- Location: LCCOMB_X20_Y28_N8
\Div0|auto_generated|divider|divider|StageOut[16]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~106_combout\ = (\Div0|auto_generated|divider|divider|op_7~8_combout\ & ((\duty[1]~input_o\) # ((\duty[0]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~106_combout\);

-- Location: LCCOMB_X20_Y28_N12
\Mult0|mult_core|romout[0][8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~combout\ = (\duty[1]~input_o\ & ((!\duty[2]~input_o\))) # (!\duty[1]~input_o\ & ((\duty[0]~input_o\) # (\duty[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][8]~combout\);

-- Location: LCCOMB_X20_Y28_N18
\Div0|auto_generated|divider|divider|op_8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~0_combout\ = \Mult0|mult_core|romout[0][8]~combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\Mult0|mult_core|romout[0][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X20_Y28_N20
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[16]~74_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[16]~74_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[16]~106_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[16]~106_combout\ & ((\Div0|auto_generated|divider|divider|op_8~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[16]~74_combout\ & !\Div0|auto_generated|divider|divider|StageOut[16]~106_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~74_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~106_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X20_Y28_N22
\Div0|auto_generated|divider|divider|op_8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~4_combout\ = (\Div0|auto_generated|divider|divider|op_8~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~105_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~105_combout\)))))
-- \Div0|auto_generated|divider|divider|op_8~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_8~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~105_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	combout => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X20_Y28_N24
\Div0|auto_generated|divider|divider|op_8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~104_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~72_combout\ & !\Div0|auto_generated|divider|divider|op_8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~104_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~5\,
	cout => \Div0|auto_generated|divider|divider|op_8~7_cout\);

-- Location: LCCOMB_X20_Y28_N26
\Div0|auto_generated|divider|divider|op_8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~8_combout\ = \Div0|auto_generated|divider|divider|op_8~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~8_combout\);

-- Location: FF_X23_Y26_N31
\duty_prop[8]\ : dffeas
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
	q => duty_prop(8));

-- Location: LCCOMB_X23_Y26_N30
\duty_prop~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~2_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_8~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datac => duty_prop(8),
	combout => \duty_prop~2_combout\);

-- Location: LCCOMB_X20_Y28_N10
\Div0|auto_generated|divider|divider|StageOut[22]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~107_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~105_combout\) # ((\Div0|auto_generated|divider|divider|op_7~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~105_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~107_combout\);

-- Location: LCCOMB_X20_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~75_combout\ = (\Div0|auto_generated|divider|divider|op_8~4_combout\ & !\Div0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~75_combout\);

-- Location: LCCOMB_X20_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[21]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~108_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~106_combout\) # ((\Div0|auto_generated|divider|divider|op_7~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~106_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~108_combout\);

-- Location: LCCOMB_X23_Y28_N24
\Div0|auto_generated|divider|divider|StageOut[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~76_combout\ = (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Div0|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~76_combout\);

-- Location: LCCOMB_X22_Y28_N14
\Div0|auto_generated|divider|divider|StageOut[20]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~109_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\duty[1]~input_o\ & ((!\duty[2]~input_o\))) # (!\duty[1]~input_o\ & ((\duty[0]~input_o\) # (\duty[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~109_combout\);

-- Location: LCCOMB_X23_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[20]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~77_combout\ = (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Div0|auto_generated|divider|divider|op_8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~77_combout\);

-- Location: LCCOMB_X22_Y28_N16
\Mult0|mult_core|romout[0][7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~2_combout\ = \duty[1]~input_o\ $ (((\duty[0]~input_o\ & !\duty[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X23_Y28_N10
\Div0|auto_generated|divider|divider|op_9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~0_combout\ = \Mult0|mult_core|romout[0][7]~2_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_9~1\ = CARRY(\Mult0|mult_core|romout[0][7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~2_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X23_Y28_N12
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[20]~109_combout\ & (((!\Div0|auto_generated|divider|divider|op_9~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[20]~109_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[20]~77_combout\ & (!\Div0|auto_generated|divider|divider|op_9~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[20]~77_combout\ & ((\Div0|auto_generated|divider|divider|op_9~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[20]~109_combout\ & !\Div0|auto_generated|divider|divider|StageOut[20]~77_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~109_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~77_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X23_Y28_N14
\Div0|auto_generated|divider|divider|op_9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~4_combout\ = (\Div0|auto_generated|divider|divider|op_9~3\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~108_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~76_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_9~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[21]~108_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~76_combout\)))))
-- \Div0|auto_generated|divider|divider|op_9~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_9~3\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~108_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~108_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	combout => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X23_Y28_N16
\Div0|auto_generated|divider|divider|op_9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[22]~107_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[22]~75_combout\ & !\Div0|auto_generated|divider|divider|op_9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~107_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~75_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5\,
	cout => \Div0|auto_generated|divider|divider|op_9~7_cout\);

-- Location: LCCOMB_X23_Y28_N18
\Div0|auto_generated|divider|divider|op_9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_combout\ = \Div0|auto_generated|divider|divider|op_9~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_combout\);

-- Location: FF_X22_Y26_N23
\duty_prop[7]\ : dffeas
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
	q => duty_prop(7));

-- Location: LCCOMB_X22_Y26_N22
\duty_prop~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~3_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_9~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => duty_prop(7),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~3_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[26]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~110_combout\ = (\Div0|auto_generated|divider|divider|op_9~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~108_combout\) # ((\Div0|auto_generated|divider|divider|op_8~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[21]~108_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~110_combout\);

-- Location: LCCOMB_X23_Y27_N14
\Div0|auto_generated|divider|divider|StageOut[26]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ = (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & \Div0|auto_generated|divider|divider|op_9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X23_Y28_N30
\Div0|auto_generated|divider|divider|StageOut[25]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~111_combout\ = (\Div0|auto_generated|divider|divider|op_9~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[20]~109_combout\) # ((!\Div0|auto_generated|divider|divider|op_8~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[20]~109_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~111_combout\);

-- Location: LCCOMB_X23_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~79_combout\ = (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & \Div0|auto_generated|divider|divider|op_9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~79_combout\);

-- Location: LCCOMB_X23_Y27_N12
\Div0|auto_generated|divider|divider|StageOut[24]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~112_combout\ = (\Div0|auto_generated|divider|divider|op_9~8_combout\ & (\duty[1]~input_o\ $ (((\duty[0]~input_o\ & !\duty[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~112_combout\);

-- Location: LCCOMB_X23_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~80_combout\ = (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & \Div0|auto_generated|divider|divider|op_9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~80_combout\);

-- Location: LCCOMB_X21_Y27_N22
\Mult0|mult_core|romout[0][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~3_combout\ = (\duty[0]~input_o\ & (!\duty[2]~input_o\)) # (!\duty[0]~input_o\ & (\duty[2]~input_o\ & \duty[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[0]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \duty[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][6]~3_combout\);

-- Location: LCCOMB_X23_Y27_N0
\Div0|auto_generated|divider|divider|op_10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~0_combout\ = \Mult0|mult_core|romout[0][6]~3_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_10~1\ = CARRY(\Mult0|mult_core|romout[0][6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~3_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X23_Y27_N2
\Div0|auto_generated|divider|divider|op_10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[24]~112_combout\ & (((!\Div0|auto_generated|divider|divider|op_10~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[24]~112_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[24]~80_combout\ & (!\Div0|auto_generated|divider|divider|op_10~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[24]~80_combout\ & ((\Div0|auto_generated|divider|divider|op_10~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_10~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[24]~112_combout\ & !\Div0|auto_generated|divider|divider|StageOut[24]~80_combout\)) # (!\Div0|auto_generated|divider|divider|op_10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~112_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~80_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~1\,
	combout => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X23_Y27_N4
\Div0|auto_generated|divider|divider|op_10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~4_combout\ = (\Div0|auto_generated|divider|divider|op_10~3\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~111_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~79_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_10~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[25]~111_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~79_combout\)))))
-- \Div0|auto_generated|divider|divider|op_10~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_10~3\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~111_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~111_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~79_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~3\,
	combout => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X23_Y27_N6
\Div0|auto_generated|divider|divider|op_10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~110_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~78_combout\ & !\Div0|auto_generated|divider|divider|op_10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~110_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~5\,
	cout => \Div0|auto_generated|divider|divider|op_10~7_cout\);

-- Location: LCCOMB_X23_Y27_N8
\Div0|auto_generated|divider|divider|op_10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~8_combout\ = \Div0|auto_generated|divider|divider|op_10~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_10~8_combout\);

-- Location: FF_X21_Y26_N1
\duty_prop[6]\ : dffeas
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
	q => duty_prop(6));

-- Location: LCCOMB_X21_Y26_N0
\duty_prop~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~4_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_10~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datac => duty_prop(6),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~4_combout\);

-- Location: LCCOMB_X23_Y27_N22
\Div0|auto_generated|divider|divider|StageOut[30]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~113_combout\ = (\Div0|auto_generated|divider|divider|op_10~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~111_combout\) # ((\Div0|auto_generated|divider|divider|op_9~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~111_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~113_combout\);

-- Location: LCCOMB_X23_Y27_N16
\Div0|auto_generated|divider|divider|StageOut[30]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\Div0|auto_generated|divider|divider|op_10~4_combout\ & !\Div0|auto_generated|divider|divider|op_10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X22_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[29]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~82_combout\ = (!\Div0|auto_generated|divider|divider|op_10~8_combout\ & \Div0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~82_combout\);

-- Location: LCCOMB_X23_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[29]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~114_combout\ = (\Div0|auto_generated|divider|divider|op_10~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~112_combout\) # ((\Div0|auto_generated|divider|divider|op_9~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~112_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~114_combout\);

-- Location: LCCOMB_X23_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[28]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~83_combout\ = (!\Div0|auto_generated|divider|divider|op_10~8_combout\ & \Div0|auto_generated|divider|divider|op_10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~83_combout\);

-- Location: LCCOMB_X23_Y27_N10
\Div0|auto_generated|divider|divider|StageOut[28]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~115_combout\ = (\Div0|auto_generated|divider|divider|op_10~8_combout\ & ((\duty[0]~input_o\ & ((!\duty[2]~input_o\))) # (!\duty[0]~input_o\ & (\duty[1]~input_o\ & \duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~115_combout\);

-- Location: LCCOMB_X22_Y27_N4
\Div0|auto_generated|divider|divider|op_11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~0_combout\ = \Mult0|mult_core|romout[0][12]~combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_11~1\ = CARRY(\Mult0|mult_core|romout[0][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~1\);

-- Location: LCCOMB_X22_Y27_N6
\Div0|auto_generated|divider|divider|op_11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[28]~83_combout\ & (((!\Div0|auto_generated|divider|divider|op_11~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[28]~83_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[28]~115_combout\ & (!\Div0|auto_generated|divider|divider|op_11~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[28]~115_combout\ & ((\Div0|auto_generated|divider|divider|op_11~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_11~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[28]~83_combout\ & !\Div0|auto_generated|divider|divider|StageOut[28]~115_combout\)) # (!\Div0|auto_generated|divider|divider|op_11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~83_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~115_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~1\,
	combout => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X22_Y27_N8
\Div0|auto_generated|divider|divider|op_11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~4_combout\ = (\Div0|auto_generated|divider|divider|op_11~3\ & (((\Div0|auto_generated|divider|divider|StageOut[29]~82_combout\) # (\Div0|auto_generated|divider|divider|StageOut[29]~114_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_11~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[29]~82_combout\) # (\Div0|auto_generated|divider|divider|StageOut[29]~114_combout\)))))
-- \Div0|auto_generated|divider|divider|op_11~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_11~3\ & ((\Div0|auto_generated|divider|divider|StageOut[29]~82_combout\) # (\Div0|auto_generated|divider|divider|StageOut[29]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[29]~82_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[29]~114_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~3\,
	combout => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X22_Y27_N10
\Div0|auto_generated|divider|divider|op_11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[30]~113_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ & !\Div0|auto_generated|divider|divider|op_11~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~113_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~5\,
	cout => \Div0|auto_generated|divider|divider|op_11~7_cout\);

-- Location: LCCOMB_X22_Y27_N12
\Div0|auto_generated|divider|divider|op_11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~8_combout\ = \Div0|auto_generated|divider|divider|op_11~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_11~8_combout\);

-- Location: FF_X22_Y26_N1
\duty_prop[5]\ : dffeas
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
	q => duty_prop(5));

-- Location: LCCOMB_X22_Y26_N0
\duty_prop~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~5_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_11~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datac => duty_prop(5),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~5_combout\);

-- Location: LCCOMB_X22_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[34]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~116_combout\ = (\Div0|auto_generated|divider|divider|op_11~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[29]~114_combout\) # ((!\Div0|auto_generated|divider|divider|op_10~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[29]~114_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~116_combout\);

-- Location: LCCOMB_X21_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[34]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~84_combout\ = (!\Div0|auto_generated|divider|divider|op_11~8_combout\ & \Div0|auto_generated|divider|divider|op_11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~84_combout\);

-- Location: LCCOMB_X23_Y27_N20
\Div0|auto_generated|divider|divider|StageOut[33]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~117_combout\ = (\Div0|auto_generated|divider|divider|op_11~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[28]~115_combout\) # ((\Div0|auto_generated|divider|divider|op_10~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[28]~115_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~117_combout\);

-- Location: LCCOMB_X22_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[33]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~85_combout\ = (!\Div0|auto_generated|divider|divider|op_11~8_combout\ & \Div0|auto_generated|divider|divider|op_11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~85_combout\);

-- Location: LCCOMB_X21_Y27_N14
\Div0|auto_generated|divider|divider|StageOut[32]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ = (\Div0|auto_generated|divider|divider|op_11~8_combout\ & ((\duty[0]~input_o\ & ((\duty[1]~input_o\))) # (!\duty[0]~input_o\ & (\duty[2]~input_o\ & !\duty[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datab => \duty[0]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \duty[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~118_combout\);

-- Location: LCCOMB_X22_Y27_N14
\Div0|auto_generated|divider|divider|StageOut[32]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~86_combout\ = (!\Div0|auto_generated|divider|divider|op_11~8_combout\ & \Div0|auto_generated|divider|divider|op_11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~86_combout\);

-- Location: LCCOMB_X22_Y27_N20
\Div0|auto_generated|divider|divider|op_12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~0_combout\ = \Mult0|mult_core|romout[0][11]~0_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\Mult0|mult_core|romout[0][11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~0_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X22_Y27_N22
\Div0|auto_generated|divider|divider|op_12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ & (((!\Div0|auto_generated|divider|divider|op_12~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[32]~86_combout\ & (!\Div0|auto_generated|divider|divider|op_12~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[32]~86_combout\ & ((\Div0|auto_generated|divider|divider|op_12~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_12~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ & !\Div0|auto_generated|divider|divider|StageOut[32]~86_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~118_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~86_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~1\,
	combout => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X22_Y27_N24
\Div0|auto_generated|divider|divider|op_12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~4_combout\ = (\Div0|auto_generated|divider|divider|op_12~3\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~117_combout\) # (\Div0|auto_generated|divider|divider|StageOut[33]~85_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_12~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[33]~117_combout\) # (\Div0|auto_generated|divider|divider|StageOut[33]~85_combout\)))))
-- \Div0|auto_generated|divider|divider|op_12~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_12~3\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~117_combout\) # (\Div0|auto_generated|divider|divider|StageOut[33]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~85_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~3\,
	combout => \Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X22_Y27_N26
\Div0|auto_generated|divider|divider|op_12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[34]~116_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[34]~84_combout\ & !\Div0|auto_generated|divider|divider|op_12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~116_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~84_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~5\,
	cout => \Div0|auto_generated|divider|divider|op_12~7_cout\);

-- Location: LCCOMB_X22_Y27_N28
\Div0|auto_generated|divider|divider|op_12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~8_combout\ = \Div0|auto_generated|divider|divider|op_12~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_12~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_12~8_combout\);

-- Location: FF_X21_Y26_N31
\duty_prop[4]\ : dffeas
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
	q => duty_prop(4));

-- Location: LCCOMB_X21_Y26_N30
\duty_prop~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~6_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_12~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datac => duty_prop(4),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~6_combout\);

-- Location: LCCOMB_X23_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[38]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~119_combout\ = (\Div0|auto_generated|divider|divider|op_12~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~117_combout\) # ((!\Div0|auto_generated|divider|divider|op_11~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[33]~117_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~119_combout\);

-- Location: LCCOMB_X22_Y27_N16
\Div0|auto_generated|divider|divider|StageOut[38]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~87_combout\ = (\Div0|auto_generated|divider|divider|op_12~4_combout\ & !\Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_12~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~87_combout\);

-- Location: LCCOMB_X22_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[37]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~120_combout\ = (\Div0|auto_generated|divider|divider|op_12~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~118_combout\) # ((\Div0|auto_generated|divider|divider|op_11~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~118_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~120_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[37]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~88_combout\ = (!\Div0|auto_generated|divider|divider|op_12~8_combout\ & \Div0|auto_generated|divider|divider|op_12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~88_combout\);

-- Location: LCCOMB_X24_Y27_N22
\Div0|auto_generated|divider|divider|StageOut[36]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~89_combout\ = (!\Div0|auto_generated|divider|divider|op_12~8_combout\ & \Div0|auto_generated|divider|divider|op_12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~89_combout\);

-- Location: LCCOMB_X21_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[36]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~121_combout\ = (\Div0|auto_generated|divider|divider|op_12~8_combout\ & (!\duty[0]~input_o\ & ((\duty[1]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datac => \duty[2]~input_o\,
	datad => \duty[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~121_combout\);

-- Location: LCCOMB_X24_Y27_N12
\Div0|auto_generated|divider|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~0_combout\ = \Mult0|mult_core|romout[0][10]~1_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_1~1\ = CARRY(\Mult0|mult_core|romout[0][10]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~1_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X24_Y27_N14
\Div0|auto_generated|divider|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[36]~89_combout\ & (((!\Div0|auto_generated|divider|divider|op_1~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[36]~89_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[36]~121_combout\ & (!\Div0|auto_generated|divider|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[36]~121_combout\ & ((\Div0|auto_generated|divider|divider|op_1~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_1~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[36]~89_combout\ & !\Div0|auto_generated|divider|divider|StageOut[36]~121_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~89_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~121_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X24_Y27_N16
\Div0|auto_generated|divider|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|op_1~3\ & (((\Div0|auto_generated|divider|divider|StageOut[37]~120_combout\) # (\Div0|auto_generated|divider|divider|StageOut[37]~88_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[37]~120_combout\) # (\Div0|auto_generated|divider|divider|StageOut[37]~88_combout\)))))
-- \Div0|auto_generated|divider|divider|op_1~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_1~3\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~120_combout\) # (\Div0|auto_generated|divider|divider|StageOut[37]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~120_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~88_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X24_Y27_N18
\Div0|auto_generated|divider|divider|op_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~119_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~87_combout\ & !\Div0|auto_generated|divider|divider|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~119_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~87_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~5\,
	cout => \Div0|auto_generated|divider|divider|op_1~7_cout\);

-- Location: LCCOMB_X24_Y27_N20
\Div0|auto_generated|divider|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~8_combout\ = \Div0|auto_generated|divider|divider|op_1~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_1~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_1~8_combout\);

-- Location: FF_X21_Y26_N3
\duty_prop[3]\ : dffeas
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
	q => duty_prop(3));

-- Location: LCCOMB_X21_Y26_N2
\duty_prop~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~7_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_1~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datac => duty_prop(3),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~7_combout\);

-- Location: LCCOMB_X24_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[42]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~122_combout\ = (\Div0|auto_generated|divider|divider|op_1~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~120_combout\) # ((\Div0|auto_generated|divider|divider|op_12~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~120_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~122_combout\);

-- Location: LCCOMB_X24_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[42]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~90_combout\ = (\Div0|auto_generated|divider|divider|op_1~4_combout\ & !\Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~90_combout\);

-- Location: LCCOMB_X24_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[41]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ = (\Div0|auto_generated|divider|divider|op_1~2_combout\ & !\Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X24_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[41]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~123_combout\ = (\Div0|auto_generated|divider|divider|op_1~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~121_combout\) # ((!\Div0|auto_generated|divider|divider|op_12~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[36]~121_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~123_combout\);

-- Location: LCCOMB_X24_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[40]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~124_combout\ = (\Div0|auto_generated|divider|divider|op_1~8_combout\ & ((\duty[1]~input_o\) # ((\duty[0]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[1]~input_o\,
	datab => \duty[0]~input_o\,
	datac => \duty[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~124_combout\);

-- Location: LCCOMB_X24_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[40]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ = (!\Div0|auto_generated|divider|divider|op_1~8_combout\ & \Div0|auto_generated|divider|divider|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Mult0|mult_core|romout[0][8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~4_combout\ = \duty[2]~input_o\ $ (((!\duty[1]~input_o\ & !\duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[1]~input_o\,
	datab => \duty[2]~input_o\,
	datac => \duty[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][8]~4_combout\);

-- Location: LCCOMB_X24_Y26_N20
\Div0|auto_generated|divider|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~0_combout\ = \Mult0|mult_core|romout[0][8]~4_combout\ $ (GND)
-- \Div0|auto_generated|divider|divider|op_2~1\ = CARRY(!\Mult0|mult_core|romout[0][8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][8]~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X24_Y26_N22
\Div0|auto_generated|divider|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[40]~124_combout\ & (((!\Div0|auto_generated|divider|divider|op_2~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[40]~124_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ & (!\Div0|auto_generated|divider|divider|op_2~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ & ((\Div0|auto_generated|divider|divider|op_2~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[40]~124_combout\ & !\Div0|auto_generated|divider|divider|StageOut[40]~92_combout\)) # (!\Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~124_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1\,
	combout => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X24_Y26_N24
\Div0|auto_generated|divider|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~4_combout\ = (\Div0|auto_generated|divider|divider|op_2~3\ & (((\Div0|auto_generated|divider|divider|StageOut[41]~91_combout\) # (\Div0|auto_generated|divider|divider|StageOut[41]~123_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[41]~91_combout\) # (\Div0|auto_generated|divider|divider|StageOut[41]~123_combout\)))))
-- \Div0|auto_generated|divider|divider|op_2~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~3\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~91_combout\) # (\Div0|auto_generated|divider|divider|StageOut[41]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~123_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3\,
	combout => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X24_Y26_N26
\Div0|auto_generated|divider|divider|op_2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[42]~122_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[42]~90_combout\ & !\Div0|auto_generated|divider|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~122_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~90_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~5\,
	cout => \Div0|auto_generated|divider|divider|op_2~7_cout\);

-- Location: LCCOMB_X24_Y26_N28
\Div0|auto_generated|divider|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~8_combout\ = \Div0|auto_generated|divider|divider|op_2~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: FF_X21_Y26_N29
\duty_prop[2]\ : dffeas
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
	q => duty_prop(2));

-- Location: LCCOMB_X21_Y26_N28
\duty_prop~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~8_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_2~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => duty_prop(2),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~8_combout\);

-- Location: LCCOMB_X24_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[46]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~93_combout\ = (\Div0|auto_generated|divider|divider|op_2~4_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~93_combout\);

-- Location: LCCOMB_X24_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[46]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~125_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~123_combout\) # ((\Div0|auto_generated|divider|divider|op_1~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[41]~123_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~125_combout\);

-- Location: LCCOMB_X24_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[45]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~126_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~124_combout\) # ((!\Div0|auto_generated|divider|divider|op_1~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~124_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~126_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[45]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~94_combout\ = (\Div0|auto_generated|divider|divider|op_2~2_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~94_combout\);

-- Location: LCCOMB_X24_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[44]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~95_combout\ = (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & \Div0|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~95_combout\);

-- Location: LCCOMB_X26_Y26_N14
\Div0|auto_generated|divider|divider|StageOut[44]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~127_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\duty[2]~input_o\ $ (((\duty[1]~input_o\) # (\duty[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~127_combout\);

-- Location: LCCOMB_X26_Y26_N30
\Mult0|mult_core|romout[0][1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][1]~5_combout\ = \duty[0]~input_o\ $ (\duty[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \duty[0]~input_o\,
	datad => \duty[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][1]~5_combout\);

-- Location: LCCOMB_X26_Y26_N18
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = \Mult0|mult_core|romout[0][1]~5_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\Mult0|mult_core|romout[0][1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][1]~5_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X26_Y26_N20
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[44]~95_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[44]~95_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[44]~127_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[44]~127_combout\ & ((\Div0|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[44]~95_combout\ & !\Div0|auto_generated|divider|divider|StageOut[44]~127_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~95_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~127_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X26_Y26_N22
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = (\Div0|auto_generated|divider|divider|op_3~3\ & (((\Div0|auto_generated|divider|divider|StageOut[45]~126_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~94_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[45]~126_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~94_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~3\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~126_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~126_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~94_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X26_Y26_N24
\Div0|auto_generated|divider|divider|op_3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[46]~93_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[46]~125_combout\ & !\Div0|auto_generated|divider|divider|op_3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[46]~93_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~125_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	cout => \Div0|auto_generated|divider|divider|op_3~7_cout\);

-- Location: LCCOMB_X26_Y26_N26
\Div0|auto_generated|divider|divider|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_combout\ = \Div0|auto_generated|divider|divider|op_3~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_combout\);

-- Location: FF_X22_Y26_N7
\duty_prop[1]\ : dffeas
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
	q => duty_prop(1));

-- Location: LCCOMB_X22_Y26_N6
\duty_prop~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~9_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_3~8_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datac => duty_prop(1),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~9_combout\);

-- Location: LCCOMB_X26_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[50]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~128_combout\ = (\Div0|auto_generated|divider|divider|op_3~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~126_combout\) # ((!\Div0|auto_generated|divider|divider|op_2~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[45]~126_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~128_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[50]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~96_combout\ = (\Div0|auto_generated|divider|divider|op_3~4_combout\ & !\Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~96_combout\);

-- Location: LCCOMB_X21_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[49]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~97_combout\ = (\Div0|auto_generated|divider|divider|op_3~2_combout\ & !\Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~97_combout\);

-- Location: LCCOMB_X26_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[49]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~129_combout\ = (\Div0|auto_generated|divider|divider|op_3~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~127_combout\) # ((!\Div0|auto_generated|divider|divider|op_2~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~127_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~129_combout\);

-- Location: LCCOMB_X26_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[48]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~130_combout\ = (\Div0|auto_generated|divider|divider|op_3~8_combout\ & (\duty[1]~input_o\ $ ((\duty[0]~input_o\)))) # (!\Div0|auto_generated|divider|divider|op_3~8_combout\ & 
-- (((\Div0|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datab => \duty[1]~input_o\,
	datac => \duty[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~130_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Div0|auto_generated|divider|divider|op_4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[48]~130_combout\ & \duty[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~130_combout\,
	datab => \duty[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X26_Y26_N2
\Div0|auto_generated|divider|divider|op_4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~3_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[49]~97_combout\ & !\Div0|auto_generated|divider|divider|StageOut[49]~129_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~97_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~129_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3_cout\);

-- Location: LCCOMB_X26_Y26_N4
\Div0|auto_generated|divider|divider|op_4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~128_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[50]~96_combout\) # (!\Div0|auto_generated|divider|divider|op_4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~128_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5_cout\);

-- Location: LCCOMB_X26_Y26_N6
\Div0|auto_generated|divider|divider|op_4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_combout\ = !\Div0|auto_generated|divider|divider|op_4~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~6_combout\);

-- Location: FF_X21_Y26_N27
\duty_prop[0]\ : dffeas
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
	q => duty_prop(0));

-- Location: LCCOMB_X21_Y26_N26
\duty_prop~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_prop~10_combout\ = (\Equal1~2_combout\ & (!\Div0|auto_generated|divider|divider|op_4~6_combout\)) # (!\Equal1~2_combout\ & ((duty_prop(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	datac => duty_prop(0),
	datad => \Equal1~2_combout\,
	combout => \duty_prop~10_combout\);

-- Location: LCCOMB_X21_Y26_N4
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\duty_prop~10_combout\ & !count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~10_combout\,
	datab => count(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y26_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\duty_prop~9_combout\ & (count(1) & !\LessThan0~1_cout\)) # (!\duty_prop~9_combout\ & ((count(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~9_combout\,
	datab => count(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X21_Y26_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((count(2) & (\duty_prop~8_combout\ & !\LessThan0~3_cout\)) # (!count(2) & ((\duty_prop~8_combout\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \duty_prop~8_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y26_N10
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((count(3) & ((!\LessThan0~5_cout\) # (!\duty_prop~7_combout\))) # (!count(3) & (!\duty_prop~7_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \duty_prop~7_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y26_N12
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\duty_prop~6_combout\ & ((!\LessThan0~7_cout\) # (!count(4)))) # (!\duty_prop~6_combout\ & (!count(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~6_combout\,
	datab => count(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y26_N14
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((count(5) & ((!\LessThan0~9_cout\) # (!\duty_prop~5_combout\))) # (!count(5) & (!\duty_prop~5_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \duty_prop~5_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X21_Y26_N16
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((count(6) & (\duty_prop~4_combout\ & !\LessThan0~11_cout\)) # (!count(6) & ((\duty_prop~4_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \duty_prop~4_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X21_Y26_N18
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((count(7) & ((!\LessThan0~13_cout\) # (!\duty_prop~3_combout\))) # (!count(7) & (!\duty_prop~3_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \duty_prop~3_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X21_Y26_N20
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\duty_prop~2_combout\ & ((!\LessThan0~15_cout\) # (!count(8)))) # (!\duty_prop~2_combout\ & (!count(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_prop~2_combout\,
	datab => count(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X21_Y26_N22
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((count(9) & ((!\LessThan0~17_cout\) # (!\duty_prop~1_combout\))) # (!count(9) & (!\duty_prop~1_combout\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \duty_prop~1_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X21_Y26_N24
\LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = (count(10) & (!\LessThan0~19_cout\ & \duty_prop~0_combout\)) # (!count(10) & ((\duty_prop~0_combout\) # (!\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => \duty_prop~0_combout\,
	cin => \LessThan0~19_cout\,
	combout => \LessThan0~20_combout\);

-- Location: FF_X21_Y26_N25
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


