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

-- DATE "11/07/2018 20:57:26"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	PID IS
    PORT (
	k_p : IN STD.STANDARD.integer range 0 TO 1000;
	k_i : IN STD.STANDARD.integer range 0 TO 1000;
	k_d : IN STD.STANDARD.integer range 0 TO 1000;
	control_input : IN STD.STANDARD.integer range -32768 TO 32767;
	control_output : OUT STD.STANDARD.integer range -255 TO 255
	);
END PID;

-- Design Ports Information
-- k_p[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[7]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[8]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_p[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_i[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k_d[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[0]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[9]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[11]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[13]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[14]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_input[15]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_output[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PID IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_k_p : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_k_i : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_k_d : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_control_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_control_output : std_logic_vector(8 DOWNTO 0);
SIGNAL \k_p[0]~input_o\ : std_logic;
SIGNAL \k_p[1]~input_o\ : std_logic;
SIGNAL \k_p[2]~input_o\ : std_logic;
SIGNAL \k_p[3]~input_o\ : std_logic;
SIGNAL \k_p[4]~input_o\ : std_logic;
SIGNAL \k_p[5]~input_o\ : std_logic;
SIGNAL \k_p[6]~input_o\ : std_logic;
SIGNAL \k_p[7]~input_o\ : std_logic;
SIGNAL \k_p[8]~input_o\ : std_logic;
SIGNAL \k_p[9]~input_o\ : std_logic;
SIGNAL \k_i[0]~input_o\ : std_logic;
SIGNAL \k_i[1]~input_o\ : std_logic;
SIGNAL \k_i[2]~input_o\ : std_logic;
SIGNAL \k_i[3]~input_o\ : std_logic;
SIGNAL \k_i[4]~input_o\ : std_logic;
SIGNAL \k_i[5]~input_o\ : std_logic;
SIGNAL \k_i[6]~input_o\ : std_logic;
SIGNAL \k_i[7]~input_o\ : std_logic;
SIGNAL \k_i[8]~input_o\ : std_logic;
SIGNAL \k_i[9]~input_o\ : std_logic;
SIGNAL \k_d[0]~input_o\ : std_logic;
SIGNAL \k_d[1]~input_o\ : std_logic;
SIGNAL \k_d[2]~input_o\ : std_logic;
SIGNAL \k_d[3]~input_o\ : std_logic;
SIGNAL \k_d[4]~input_o\ : std_logic;
SIGNAL \k_d[5]~input_o\ : std_logic;
SIGNAL \k_d[6]~input_o\ : std_logic;
SIGNAL \k_d[7]~input_o\ : std_logic;
SIGNAL \k_d[8]~input_o\ : std_logic;
SIGNAL \k_d[9]~input_o\ : std_logic;
SIGNAL \control_input[0]~input_o\ : std_logic;
SIGNAL \control_input[1]~input_o\ : std_logic;
SIGNAL \control_input[2]~input_o\ : std_logic;
SIGNAL \control_input[3]~input_o\ : std_logic;
SIGNAL \control_input[4]~input_o\ : std_logic;
SIGNAL \control_input[5]~input_o\ : std_logic;
SIGNAL \control_input[6]~input_o\ : std_logic;
SIGNAL \control_input[7]~input_o\ : std_logic;
SIGNAL \control_input[8]~input_o\ : std_logic;
SIGNAL \control_input[9]~input_o\ : std_logic;
SIGNAL \control_input[10]~input_o\ : std_logic;
SIGNAL \control_input[11]~input_o\ : std_logic;
SIGNAL \control_input[12]~input_o\ : std_logic;
SIGNAL \control_input[13]~input_o\ : std_logic;
SIGNAL \control_input[14]~input_o\ : std_logic;
SIGNAL \control_input[15]~input_o\ : std_logic;
SIGNAL \control_output[0]~output_o\ : std_logic;
SIGNAL \control_output[1]~output_o\ : std_logic;
SIGNAL \control_output[2]~output_o\ : std_logic;
SIGNAL \control_output[3]~output_o\ : std_logic;
SIGNAL \control_output[4]~output_o\ : std_logic;
SIGNAL \control_output[5]~output_o\ : std_logic;
SIGNAL \control_output[6]~output_o\ : std_logic;
SIGNAL \control_output[7]~output_o\ : std_logic;
SIGNAL \control_output[8]~output_o\ : std_logic;

BEGIN

ww_k_p <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(k_p, 10);
ww_k_i <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(k_i, 10);
ww_k_d <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(k_d, 10);
ww_control_input <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(control_input, 16);
control_output <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_control_output));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N2
\control_output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \control_output[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\control_output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\control_output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[2]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\control_output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\control_output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\control_output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\control_output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\control_output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_output[7]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\control_output[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \control_output[8]~output_o\);

-- Location: IOIBUF_X0_Y14_N15
\k_p[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(0),
	o => \k_p[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\k_p[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(1),
	o => \k_p[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\k_p[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(2),
	o => \k_p[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\k_p[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(3),
	o => \k_p[3]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\k_p[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(4),
	o => \k_p[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\k_p[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(5),
	o => \k_p[5]~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\k_p[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(6),
	o => \k_p[6]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\k_p[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(7),
	o => \k_p[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\k_p[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(8),
	o => \k_p[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\k_p[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_p(9),
	o => \k_p[9]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\k_i[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(0),
	o => \k_i[0]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\k_i[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(1),
	o => \k_i[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\k_i[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(2),
	o => \k_i[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\k_i[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(3),
	o => \k_i[3]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\k_i[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(4),
	o => \k_i[4]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\k_i[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(5),
	o => \k_i[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\k_i[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(6),
	o => \k_i[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\k_i[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(7),
	o => \k_i[7]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\k_i[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(8),
	o => \k_i[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\k_i[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_i(9),
	o => \k_i[9]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\k_d[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(0),
	o => \k_d[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\k_d[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(1),
	o => \k_d[1]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\k_d[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(2),
	o => \k_d[2]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\k_d[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(3),
	o => \k_d[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\k_d[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(4),
	o => \k_d[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\k_d[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(5),
	o => \k_d[5]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\k_d[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(6),
	o => \k_d[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\k_d[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(7),
	o => \k_d[7]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\k_d[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(8),
	o => \k_d[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\k_d[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k_d(9),
	o => \k_d[9]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\control_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(0),
	o => \control_input[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\control_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(1),
	o => \control_input[1]~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\control_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(2),
	o => \control_input[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\control_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(3),
	o => \control_input[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\control_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(4),
	o => \control_input[4]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\control_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(5),
	o => \control_input[5]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\control_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(6),
	o => \control_input[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\control_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(7),
	o => \control_input[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\control_input[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(8),
	o => \control_input[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\control_input[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(9),
	o => \control_input[9]~input_o\);

-- Location: IOIBUF_X16_Y29_N8
\control_input[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(10),
	o => \control_input[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\control_input[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(11),
	o => \control_input[11]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\control_input[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(12),
	o => \control_input[12]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\control_input[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(13),
	o => \control_input[13]~input_o\);

-- Location: IOIBUF_X39_Y29_N1
\control_input[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(14),
	o => \control_input[14]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\control_input[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_input(15),
	o => \control_input[15]~input_o\);

ww_control_output(0) <= \control_output[0]~output_o\;

ww_control_output(1) <= \control_output[1]~output_o\;

ww_control_output(2) <= \control_output[2]~output_o\;

ww_control_output(3) <= \control_output[3]~output_o\;

ww_control_output(4) <= \control_output[4]~output_o\;

ww_control_output(5) <= \control_output[5]~output_o\;

ww_control_output(6) <= \control_output[6]~output_o\;

ww_control_output(7) <= \control_output[7]~output_o\;

ww_control_output(8) <= \control_output[8]~output_o\;
END structure;


