-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "05/07/2025 10:26:03"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \U_REG|reg[0]~27_combout\ : std_logic;
SIGNAL \U_REG|reg[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \U_REG|Mux6~0_combout\ : std_logic;
SIGNAL \U_REG|reg[1]~5_combout\ : std_logic;
SIGNAL \U_REG|reg[0]~0_combout\ : std_logic;
SIGNAL \U_REG|reg[1]~28_combout\ : std_logic;
SIGNAL \U_REG|reg[1]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[1]~4_combout\ : std_logic;
SIGNAL \U_REG|Mux5~0_combout\ : std_logic;
SIGNAL \U_REG|reg[2]~7_combout\ : std_logic;
SIGNAL \U_REG|reg[2]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[2]~6_combout\ : std_logic;
SIGNAL \U_REG|Mux4~0_combout\ : std_logic;
SIGNAL \U_REG|reg[3]~9_combout\ : std_logic;
SIGNAL \U_REG|reg[3]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[3]~8_combout\ : std_logic;
SIGNAL \U_REG|Mux3~0_combout\ : std_logic;
SIGNAL \U_REG|reg[4]~11_combout\ : std_logic;
SIGNAL \U_REG|reg[4]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[4]~10_combout\ : std_logic;
SIGNAL \U_REG|Mux2~0_combout\ : std_logic;
SIGNAL \U_REG|reg[5]~13_combout\ : std_logic;
SIGNAL \U_REG|reg[5]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[5]~12_combout\ : std_logic;
SIGNAL \U_REG|Mux1~0_combout\ : std_logic;
SIGNAL \U_REG|reg[6]~15_combout\ : std_logic;
SIGNAL \U_REG|reg[6]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[6]~14_combout\ : std_logic;
SIGNAL \U_REG|Mux0~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \U_REG|Mux0~0_combout\ : std_logic;
SIGNAL \U_REG|reg[7]~17_combout\ : std_logic;
SIGNAL \U_REG|reg[7]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[7]~16_combout\ : std_logic;
SIGNAL \U_REG|Mux7~1_combout\ : std_logic;
SIGNAL \U_REG|Mux7~0_combout\ : std_logic;
SIGNAL \U_REG|reg[0]~3_combout\ : std_logic;
SIGNAL \U_REG|reg[0]~_emulated_q\ : std_logic;
SIGNAL \U_REG|reg[0]~2_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[0]~27_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[5]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[6]~14_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[5]~12_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[4]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[7]~16_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[0]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[4]~10_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[3]~8_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[2]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[0]~2_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[6]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[7]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[0]~1_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[2]~6_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[3]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[1]~_emulated_q\ : std_logic;
SIGNAL \U_REG|ALT_INV_reg[0]~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U_REG|ALT_INV_Mux0~0_combout\ <= NOT \U_REG|Mux0~0_combout\;
\U_REG|ALT_INV_Mux2~0_combout\ <= NOT \U_REG|Mux2~0_combout\;
\U_REG|ALT_INV_reg[0]~27_combout\ <= NOT \U_REG|reg[0]~27_combout\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\U_REG|ALT_INV_reg[1]~4_combout\ <= NOT \U_REG|reg[1]~4_combout\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\U_REG|ALT_INV_reg[5]~_emulated_q\ <= NOT \U_REG|reg[5]~_emulated_q\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\U_REG|ALT_INV_reg[6]~14_combout\ <= NOT \U_REG|reg[6]~14_combout\;
\U_REG|ALT_INV_Mux3~0_combout\ <= NOT \U_REG|Mux3~0_combout\;
\U_REG|ALT_INV_reg[5]~12_combout\ <= NOT \U_REG|reg[5]~12_combout\;
\U_REG|ALT_INV_Mux7~1_combout\ <= NOT \U_REG|Mux7~1_combout\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\U_REG|ALT_INV_Mux5~0_combout\ <= NOT \U_REG|Mux5~0_combout\;
\U_REG|ALT_INV_reg[4]~_emulated_q\ <= NOT \U_REG|reg[4]~_emulated_q\;
\U_REG|ALT_INV_reg[7]~16_combout\ <= NOT \U_REG|reg[7]~16_combout\;
\U_REG|ALT_INV_reg[0]~_emulated_q\ <= NOT \U_REG|reg[0]~_emulated_q\;
\U_REG|ALT_INV_reg[4]~10_combout\ <= NOT \U_REG|reg[4]~10_combout\;
\U_REG|ALT_INV_Mux7~0_combout\ <= NOT \U_REG|Mux7~0_combout\;
\U_REG|ALT_INV_reg[3]~8_combout\ <= NOT \U_REG|reg[3]~8_combout\;
\U_REG|ALT_INV_reg[2]~_emulated_q\ <= NOT \U_REG|reg[2]~_emulated_q\;
\U_REG|ALT_INV_reg[0]~2_combout\ <= NOT \U_REG|reg[0]~2_combout\;
\U_REG|ALT_INV_reg[6]~_emulated_q\ <= NOT \U_REG|reg[6]~_emulated_q\;
\U_REG|ALT_INV_Mux4~0_combout\ <= NOT \U_REG|Mux4~0_combout\;
\U_REG|ALT_INV_Mux1~0_combout\ <= NOT \U_REG|Mux1~0_combout\;
\U_REG|ALT_INV_reg[7]~_emulated_q\ <= NOT \U_REG|reg[7]~_emulated_q\;
\U_REG|ALT_INV_Mux0~1_combout\ <= NOT \U_REG|Mux0~1_combout\;
\U_REG|ALT_INV_reg[0]~1_combout\ <= NOT \U_REG|reg[0]~1_combout\;
\U_REG|ALT_INV_reg[2]~6_combout\ <= NOT \U_REG|reg[2]~6_combout\;
\U_REG|ALT_INV_reg[3]~_emulated_q\ <= NOT \U_REG|reg[3]~_emulated_q\;
\U_REG|ALT_INV_reg[1]~_emulated_q\ <= NOT \U_REG|reg[1]~_emulated_q\;
\U_REG|ALT_INV_reg[0]~0_combout\ <= NOT \U_REG|reg[0]~0_combout\;
\U_REG|ALT_INV_Mux6~0_combout\ <= NOT \U_REG|Mux6~0_combout\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[2]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[3]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|reg[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X18_Y4_N9
\U_REG|reg[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[0]~27_combout\ = ( !\KEY[2]~input_o\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \U_REG|reg[0]~27_combout\);

-- Location: LABCELL_X17_Y4_N3
\U_REG|reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[0]~1_combout\ = ( \U_REG|reg[0]~1_combout\ & ( \U_REG|reg[0]~27_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( !\U_REG|reg[0]~1_combout\ & ( \U_REG|reg[0]~27_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( \U_REG|reg[0]~1_combout\ & ( 
-- !\U_REG|reg[0]~27_combout\ & ( \KEY[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datae => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_reg[0]~27_combout\,
	combout => \U_REG|reg[0]~1_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X17_Y4_N48
\U_REG|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux6~0_combout\ = ( \U_REG|reg[2]~6_combout\ & ( (!\SW[1]~input_o\) # (\U_REG|reg[0]~2_combout\) ) ) # ( !\U_REG|reg[2]~6_combout\ & ( (\U_REG|reg[0]~2_combout\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U_REG|ALT_INV_reg[0]~2_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \U_REG|ALT_INV_reg[2]~6_combout\,
	combout => \U_REG|Mux6~0_combout\);

-- Location: LABCELL_X17_Y4_N24
\U_REG|reg[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[1]~5_combout\ = ( \U_REG|Mux6~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\U_REG|Mux6~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \U_REG|ALT_INV_reg[0]~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \U_REG|ALT_INV_Mux6~0_combout\,
	combout => \U_REG|reg[1]~5_combout\);

-- Location: LABCELL_X17_Y4_N30
\U_REG|reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[0]~0_combout\ = ( \KEY[3]~input_o\ & ( \U_REG|reg[0]~27_combout\ ) ) # ( !\KEY[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U_REG|ALT_INV_reg[0]~27_combout\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \U_REG|reg[0]~0_combout\);

-- Location: LABCELL_X17_Y4_N45
\U_REG|reg[1]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[1]~28_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	combout => \U_REG|reg[1]~28_combout\);

-- Location: FF_X17_Y4_N26
\U_REG|reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[1]~5_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	ena => \U_REG|reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[1]~_emulated_q\);

-- Location: LABCELL_X17_Y4_N39
\U_REG|reg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[1]~4_combout\ = ( \U_REG|reg[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\U_REG|reg[0]~1_combout\) # (\U_REG|reg[0]~27_combout\))) ) ) # ( !\U_REG|reg[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\U_REG|reg[0]~27_combout\) # 
-- (\U_REG|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~1_combout\,
	datac => \U_REG|ALT_INV_reg[0]~27_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \U_REG|ALT_INV_reg[1]~_emulated_q\,
	combout => \U_REG|reg[1]~4_combout\);

-- Location: LABCELL_X17_Y4_N12
\U_REG|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux5~0_combout\ = ( \U_REG|reg[3]~8_combout\ & ( (!\SW[1]~input_o\) # (\U_REG|reg[1]~4_combout\) ) ) # ( !\U_REG|reg[3]~8_combout\ & ( (\SW[1]~input_o\ & \U_REG|reg[1]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \U_REG|ALT_INV_reg[1]~4_combout\,
	dataf => \U_REG|ALT_INV_reg[3]~8_combout\,
	combout => \U_REG|Mux5~0_combout\);

-- Location: LABCELL_X17_Y4_N36
\U_REG|reg[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[2]~7_combout\ = ( \U_REG|Mux5~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\U_REG|Mux5~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101001011010101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \U_REG|ALT_INV_Mux5~0_combout\,
	combout => \U_REG|reg[2]~7_combout\);

-- Location: FF_X17_Y4_N38
\U_REG|reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[2]~7_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	ena => \U_REG|reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[2]~_emulated_q\);

-- Location: LABCELL_X17_Y4_N57
\U_REG|reg[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[2]~6_combout\ = ( \U_REG|reg[0]~1_combout\ & ( (\KEY[3]~input_o\ & ((!\U_REG|reg[2]~_emulated_q\) # (\U_REG|reg[0]~27_combout\))) ) ) # ( !\U_REG|reg[0]~1_combout\ & ( (\KEY[3]~input_o\ & ((\U_REG|reg[2]~_emulated_q\) # 
-- (\U_REG|reg[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \U_REG|ALT_INV_reg[0]~27_combout\,
	datad => \U_REG|ALT_INV_reg[2]~_emulated_q\,
	dataf => \U_REG|ALT_INV_reg[0]~1_combout\,
	combout => \U_REG|reg[2]~6_combout\);

-- Location: LABCELL_X17_Y4_N27
\U_REG|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux4~0_combout\ = ( \U_REG|reg[2]~6_combout\ & ( (\U_REG|reg[4]~10_combout\) # (\SW[1]~input_o\) ) ) # ( !\U_REG|reg[2]~6_combout\ & ( (!\SW[1]~input_o\ & \U_REG|reg[4]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \U_REG|ALT_INV_reg[4]~10_combout\,
	dataf => \U_REG|ALT_INV_reg[2]~6_combout\,
	combout => \U_REG|Mux4~0_combout\);

-- Location: LABCELL_X17_Y4_N9
\U_REG|reg[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[3]~9_combout\ = ( \U_REG|Mux4~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[0]~input_o\ & \SW[1]~input_o\))) ) ) # ( !\U_REG|Mux4~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101001011010101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \U_REG|ALT_INV_Mux4~0_combout\,
	combout => \U_REG|reg[3]~9_combout\);

-- Location: FF_X17_Y4_N11
\U_REG|reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[3]~9_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	ena => \U_REG|reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[3]~_emulated_q\);

-- Location: LABCELL_X17_Y4_N6
\U_REG|reg[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[3]~8_combout\ = ( \U_REG|reg[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\U_REG|reg[0]~1_combout\) # (\U_REG|reg[0]~27_combout\))) ) ) # ( !\U_REG|reg[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\U_REG|reg[0]~27_combout\) # 
-- (\U_REG|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~1_combout\,
	datab => \U_REG|ALT_INV_reg[0]~27_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \U_REG|ALT_INV_reg[3]~_emulated_q\,
	combout => \U_REG|reg[3]~8_combout\);

-- Location: LABCELL_X17_Y4_N42
\U_REG|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux3~0_combout\ = ( \U_REG|reg[5]~12_combout\ & ( (!\SW[1]~input_o\) # (\U_REG|reg[3]~8_combout\) ) ) # ( !\U_REG|reg[5]~12_combout\ & ( (\SW[1]~input_o\ & \U_REG|reg[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \U_REG|ALT_INV_reg[3]~8_combout\,
	dataf => \U_REG|ALT_INV_reg[5]~12_combout\,
	combout => \U_REG|Mux3~0_combout\);

-- Location: LABCELL_X17_Y4_N33
\U_REG|reg[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[4]~11_combout\ = ( \U_REG|Mux3~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\U_REG|Mux3~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_Mux3~0_combout\,
	combout => \U_REG|reg[4]~11_combout\);

-- Location: FF_X17_Y4_N35
\U_REG|reg[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[4]~11_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	ena => \U_REG|reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[4]~_emulated_q\);

-- Location: LABCELL_X17_Y4_N54
\U_REG|reg[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[4]~10_combout\ = ( \U_REG|reg[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\U_REG|reg[0]~1_combout\) # (\U_REG|reg[0]~27_combout\))) ) ) # ( !\U_REG|reg[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\U_REG|reg[0]~1_combout\) # 
-- (\U_REG|reg[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \U_REG|ALT_INV_reg[0]~27_combout\,
	datac => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_reg[4]~_emulated_q\,
	combout => \U_REG|reg[4]~10_combout\);

-- Location: LABCELL_X18_Y4_N51
\U_REG|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux2~0_combout\ = ( \U_REG|reg[4]~10_combout\ & ( (\U_REG|reg[6]~14_combout\) # (\SW[1]~input_o\) ) ) # ( !\U_REG|reg[4]~10_combout\ & ( (!\SW[1]~input_o\ & \U_REG|reg[6]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \U_REG|ALT_INV_reg[6]~14_combout\,
	dataf => \U_REG|ALT_INV_reg[4]~10_combout\,
	combout => \U_REG|Mux2~0_combout\);

-- Location: LABCELL_X18_Y4_N48
\U_REG|reg[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[5]~13_combout\ = ( \U_REG|Mux2~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\U_REG|Mux2~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_Mux2~0_combout\,
	combout => \U_REG|reg[5]~13_combout\);

-- Location: FF_X18_Y4_N50
\U_REG|reg[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[5]~13_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	ena => \U_REG|reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[5]~_emulated_q\);

-- Location: LABCELL_X18_Y4_N39
\U_REG|reg[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[5]~12_combout\ = ( \U_REG|reg[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\U_REG|reg[0]~1_combout\) # (\U_REG|reg[0]~27_combout\))) ) ) # ( !\U_REG|reg[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\U_REG|reg[0]~27_combout\) # 
-- (\U_REG|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \U_REG|ALT_INV_reg[0]~27_combout\,
	dataf => \U_REG|ALT_INV_reg[5]~_emulated_q\,
	combout => \U_REG|reg[5]~12_combout\);

-- Location: LABCELL_X18_Y4_N12
\U_REG|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux1~0_combout\ = ( \U_REG|reg[5]~12_combout\ & ( (\U_REG|reg[7]~16_combout\) # (\SW[1]~input_o\) ) ) # ( !\U_REG|reg[5]~12_combout\ & ( (!\SW[1]~input_o\ & \U_REG|reg[7]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \U_REG|ALT_INV_reg[7]~16_combout\,
	dataf => \U_REG|ALT_INV_reg[5]~12_combout\,
	combout => \U_REG|Mux1~0_combout\);

-- Location: LABCELL_X18_Y4_N27
\U_REG|reg[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[6]~15_combout\ = ( \U_REG|Mux1~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\U_REG|Mux1~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_Mux1~0_combout\,
	combout => \U_REG|reg[6]~15_combout\);

-- Location: FF_X18_Y4_N28
\U_REG|reg[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[6]~15_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	ena => \U_REG|reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[6]~_emulated_q\);

-- Location: LABCELL_X18_Y4_N36
\U_REG|reg[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[6]~14_combout\ = ( \U_REG|reg[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\U_REG|reg[0]~1_combout\) # (\U_REG|reg[0]~27_combout\))) ) ) # ( !\U_REG|reg[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\U_REG|reg[0]~27_combout\) # 
-- (\U_REG|reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \U_REG|ALT_INV_reg[0]~27_combout\,
	dataf => \U_REG|ALT_INV_reg[6]~_emulated_q\,
	combout => \U_REG|reg[6]~14_combout\);

-- Location: LABCELL_X18_Y4_N57
\U_REG|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux0~1_combout\ = ( \U_REG|reg[6]~14_combout\ & ( (\SW[1]~input_o\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \U_REG|ALT_INV_reg[6]~14_combout\,
	combout => \U_REG|Mux0~1_combout\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X18_Y4_N6
\U_REG|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux0~0_combout\ = ( \U_REG|reg[7]~16_combout\ & ( (!\SW[0]~input_o\) # ((!\SW[2]~input_o\ & ((\SW[9]~input_o\))) # (\SW[2]~input_o\ & (\U_REG|reg[0]~2_combout\))) ) ) # ( !\U_REG|reg[7]~16_combout\ & ( (\SW[0]~input_o\ & ((!\SW[2]~input_o\ & 
-- ((\SW[9]~input_o\))) # (\SW[2]~input_o\ & (\U_REG|reg[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \U_REG|ALT_INV_reg[0]~2_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \U_REG|ALT_INV_reg[7]~16_combout\,
	combout => \U_REG|Mux0~0_combout\);

-- Location: LABCELL_X18_Y4_N21
\U_REG|reg[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[7]~17_combout\ = ( \U_REG|Mux0~1_combout\ & ( \U_REG|Mux0~0_combout\ & ( !\U_REG|reg[0]~1_combout\ ) ) ) # ( !\U_REG|Mux0~1_combout\ & ( \U_REG|Mux0~0_combout\ & ( !\SW[1]~input_o\ $ (\U_REG|reg[0]~1_combout\) ) ) ) # ( \U_REG|Mux0~1_combout\ & 
-- ( !\U_REG|Mux0~0_combout\ & ( !\U_REG|reg[0]~1_combout\ ) ) ) # ( !\U_REG|Mux0~1_combout\ & ( !\U_REG|Mux0~0_combout\ & ( \U_REG|reg[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000010101010010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \U_REG|ALT_INV_reg[0]~1_combout\,
	datae => \U_REG|ALT_INV_Mux0~1_combout\,
	dataf => \U_REG|ALT_INV_Mux0~0_combout\,
	combout => \U_REG|reg[7]~17_combout\);

-- Location: FF_X18_Y4_N22
\U_REG|reg[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[7]~17_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[7]~_emulated_q\);

-- Location: LABCELL_X18_Y4_N30
\U_REG|reg[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[7]~16_combout\ = ( \U_REG|reg[0]~1_combout\ & ( \U_REG|reg[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & \U_REG|reg[0]~27_combout\) ) ) ) # ( !\U_REG|reg[0]~1_combout\ & ( \U_REG|reg[7]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( 
-- \U_REG|reg[0]~1_combout\ & ( !\U_REG|reg[7]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\U_REG|reg[0]~1_combout\ & ( !\U_REG|reg[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & \U_REG|reg[0]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110011001100110011001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[3]~input_o\,
	datad => \U_REG|ALT_INV_reg[0]~27_combout\,
	datae => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_reg[7]~_emulated_q\,
	combout => \U_REG|reg[7]~16_combout\);

-- Location: LABCELL_X18_Y4_N24
\U_REG|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux7~1_combout\ = ( \U_REG|reg[7]~16_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\SW[2]~input_o\) # (\SW[8]~input_o\)))) ) ) # ( !\U_REG|reg[7]~16_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[8]~input_o\ & !\SW[2]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \U_REG|ALT_INV_reg[7]~16_combout\,
	combout => \U_REG|Mux7~1_combout\);

-- Location: LABCELL_X17_Y4_N51
\U_REG|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|Mux7~0_combout\ = ( \U_REG|reg[1]~4_combout\ & ( (\SW[0]~input_o\) # (\U_REG|reg[0]~2_combout\) ) ) # ( !\U_REG|reg[1]~4_combout\ & ( (\U_REG|reg[0]~2_combout\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_reg[0]~2_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \U_REG|ALT_INV_reg[1]~4_combout\,
	combout => \U_REG|Mux7~0_combout\);

-- Location: LABCELL_X17_Y4_N15
\U_REG|reg[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[0]~3_combout\ = ( \U_REG|Mux7~0_combout\ & ( !\U_REG|reg[0]~1_combout\ $ (((\SW[1]~input_o\ & !\U_REG|Mux7~1_combout\))) ) ) # ( !\U_REG|Mux7~0_combout\ & ( !\U_REG|Mux7~1_combout\ $ (!\U_REG|reg[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \U_REG|ALT_INV_Mux7~1_combout\,
	datad => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_Mux7~0_combout\,
	combout => \U_REG|reg[0]~3_combout\);

-- Location: FF_X17_Y4_N17
\U_REG|reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U_REG|reg[0]~3_combout\,
	clrn => \U_REG|ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|reg[0]~_emulated_q\);

-- Location: LABCELL_X17_Y4_N18
\U_REG|reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|reg[0]~2_combout\ = ( \U_REG|reg[0]~1_combout\ & ( \U_REG|reg[0]~_emulated_q\ & ( (\U_REG|reg[0]~27_combout\ & \KEY[3]~input_o\) ) ) ) # ( !\U_REG|reg[0]~1_combout\ & ( \U_REG|reg[0]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( 
-- \U_REG|reg[0]~1_combout\ & ( !\U_REG|reg[0]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\U_REG|reg[0]~1_combout\ & ( !\U_REG|reg[0]~_emulated_q\ & ( (\U_REG|reg[0]~27_combout\ & \KEY[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_REG|ALT_INV_reg[0]~27_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \U_REG|ALT_INV_reg[0]~1_combout\,
	dataf => \U_REG|ALT_INV_reg[0]~_emulated_q\,
	combout => \U_REG|reg[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X11_Y54_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


