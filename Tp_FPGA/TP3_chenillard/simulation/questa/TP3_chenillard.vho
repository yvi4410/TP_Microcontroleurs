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

-- DATE "05/07/2025 11:53:49"

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
	CLOCK_50_B6A : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clkdiv_i|counter[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \clkdiv_i|Add0~77_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~78\ : std_logic;
SIGNAL \clkdiv_i|Add0~73_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~74\ : std_logic;
SIGNAL \clkdiv_i|Add0~69_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~70\ : std_logic;
SIGNAL \clkdiv_i|Add0~65_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~66\ : std_logic;
SIGNAL \clkdiv_i|Add0~61_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~62\ : std_logic;
SIGNAL \clkdiv_i|Add0~57_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~58\ : std_logic;
SIGNAL \clkdiv_i|Add0~53_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~54\ : std_logic;
SIGNAL \clkdiv_i|Add0~49_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~50\ : std_logic;
SIGNAL \clkdiv_i|Add0~45_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~46\ : std_logic;
SIGNAL \clkdiv_i|Add0~41_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~42\ : std_logic;
SIGNAL \clkdiv_i|Add0~37_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~38\ : std_logic;
SIGNAL \clkdiv_i|Add0~33_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~34\ : std_logic;
SIGNAL \clkdiv_i|Add0~29_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~30\ : std_logic;
SIGNAL \clkdiv_i|Add0~25_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~26\ : std_logic;
SIGNAL \clkdiv_i|Add0~21_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~22\ : std_logic;
SIGNAL \clkdiv_i|Add0~17_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~18\ : std_logic;
SIGNAL \clkdiv_i|Add0~13_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~14\ : std_logic;
SIGNAL \clkdiv_i|Add0~9_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~10\ : std_logic;
SIGNAL \clkdiv_i|Add0~5_sumout\ : std_logic;
SIGNAL \clkdiv_i|Add0~6\ : std_logic;
SIGNAL \clkdiv_i|Add0~1_sumout\ : std_logic;
SIGNAL \clkdiv_i|counter[20]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[1]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[2]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[3]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[4]~1_combout\ : std_logic;
SIGNAL \chen_i|pattern[5]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[6]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[7]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[8]~feeder_combout\ : std_logic;
SIGNAL \chen_i|pattern[8]~DUPLICATE_q\ : std_logic;
SIGNAL \chen_i|pattern[0]~0_combout\ : std_logic;
SIGNAL \chen_i|pattern\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clkdiv_i|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \clkdiv_i|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \clkdiv_i|ALT_INV_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \chen_i|ALT_INV_pattern\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\clkdiv_i|ALT_INV_Add0~1_sumout\ <= NOT \clkdiv_i|Add0~1_sumout\;
\clkdiv_i|ALT_INV_counter\(3) <= NOT \clkdiv_i|counter\(3);
\chen_i|ALT_INV_pattern\(7) <= NOT \chen_i|pattern\(7);
\clkdiv_i|ALT_INV_counter\(19) <= NOT \clkdiv_i|counter\(19);
\clkdiv_i|ALT_INV_counter\(10) <= NOT \clkdiv_i|counter\(10);
\clkdiv_i|ALT_INV_counter\(20) <= NOT \clkdiv_i|counter\(20);
\clkdiv_i|ALT_INV_counter\(14) <= NOT \clkdiv_i|counter\(14);
\clkdiv_i|ALT_INV_counter\(18) <= NOT \clkdiv_i|counter\(18);
\chen_i|ALT_INV_pattern\(4) <= NOT \chen_i|pattern\(4);
\clkdiv_i|ALT_INV_counter\(16) <= NOT \clkdiv_i|counter\(16);
\clkdiv_i|ALT_INV_counter\(8) <= NOT \clkdiv_i|counter\(8);
\chen_i|ALT_INV_pattern\(0) <= NOT \chen_i|pattern\(0);
\clkdiv_i|ALT_INV_counter\(13) <= NOT \clkdiv_i|counter\(13);
\clkdiv_i|ALT_INV_counter\(11) <= NOT \clkdiv_i|counter\(11);
\chen_i|ALT_INV_pattern\(5) <= NOT \chen_i|pattern\(5);
\clkdiv_i|ALT_INV_counter\(4) <= NOT \clkdiv_i|counter\(4);
\clkdiv_i|ALT_INV_counter\(1) <= NOT \clkdiv_i|counter\(1);
\chen_i|ALT_INV_pattern\(1) <= NOT \chen_i|pattern\(1);
\chen_i|ALT_INV_pattern\(3) <= NOT \chen_i|pattern\(3);
\chen_i|ALT_INV_pattern\(9) <= NOT \chen_i|pattern\(9);
\clkdiv_i|ALT_INV_counter\(7) <= NOT \clkdiv_i|counter\(7);
\clkdiv_i|ALT_INV_counter\(6) <= NOT \clkdiv_i|counter\(6);
\clkdiv_i|ALT_INV_counter\(0) <= NOT \clkdiv_i|counter\(0);
\clkdiv_i|ALT_INV_counter\(5) <= NOT \clkdiv_i|counter\(5);
\chen_i|ALT_INV_pattern\(6) <= NOT \chen_i|pattern\(6);
\clkdiv_i|ALT_INV_counter\(15) <= NOT \clkdiv_i|counter\(15);
\clkdiv_i|ALT_INV_counter\(12) <= NOT \clkdiv_i|counter\(12);
\clkdiv_i|ALT_INV_counter\(2) <= NOT \clkdiv_i|counter\(2);
\chen_i|ALT_INV_pattern\(2) <= NOT \chen_i|pattern\(2);
\clkdiv_i|ALT_INV_counter\(17) <= NOT \clkdiv_i|counter\(17);
\clkdiv_i|ALT_INV_counter\(9) <= NOT \clkdiv_i|counter\(9);

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|ALT_INV_pattern\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|ALT_INV_pattern\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|ALT_INV_pattern\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|ALT_INV_pattern\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|pattern\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|pattern\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|pattern\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|pattern\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|pattern\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chen_i|pattern\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X68_Y32_N44
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50_B6A~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B6A~input_o\,
	outclk => \CLOCK_50_B6A~inputCLKENA0_outclk\);

-- Location: LABCELL_X63_Y31_N12
\clkdiv_i|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|counter[0]~0_combout\ = ( !\clkdiv_i|counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clkdiv_i|ALT_INV_counter\(0),
	combout => \clkdiv_i|counter[0]~0_combout\);

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

-- Location: FF_X63_Y31_N13
\clkdiv_i|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|counter[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(0));

-- Location: LABCELL_X64_Y31_N0
\clkdiv_i|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~77_sumout\ = SUM(( \clkdiv_i|counter\(0) ) + ( \clkdiv_i|counter\(1) ) + ( !VCC ))
-- \clkdiv_i|Add0~78\ = CARRY(( \clkdiv_i|counter\(0) ) + ( \clkdiv_i|counter\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(1),
	datad => \clkdiv_i|ALT_INV_counter\(0),
	cin => GND,
	sumout => \clkdiv_i|Add0~77_sumout\,
	cout => \clkdiv_i|Add0~78\);

-- Location: FF_X64_Y31_N2
\clkdiv_i|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(1));

-- Location: LABCELL_X64_Y31_N3
\clkdiv_i|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~73_sumout\ = SUM(( \clkdiv_i|counter\(2) ) + ( GND ) + ( \clkdiv_i|Add0~78\ ))
-- \clkdiv_i|Add0~74\ = CARRY(( \clkdiv_i|counter\(2) ) + ( GND ) + ( \clkdiv_i|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(2),
	cin => \clkdiv_i|Add0~78\,
	sumout => \clkdiv_i|Add0~73_sumout\,
	cout => \clkdiv_i|Add0~74\);

-- Location: FF_X64_Y31_N5
\clkdiv_i|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(2));

-- Location: LABCELL_X64_Y31_N6
\clkdiv_i|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~69_sumout\ = SUM(( \clkdiv_i|counter\(3) ) + ( GND ) + ( \clkdiv_i|Add0~74\ ))
-- \clkdiv_i|Add0~70\ = CARRY(( \clkdiv_i|counter\(3) ) + ( GND ) + ( \clkdiv_i|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(3),
	cin => \clkdiv_i|Add0~74\,
	sumout => \clkdiv_i|Add0~69_sumout\,
	cout => \clkdiv_i|Add0~70\);

-- Location: FF_X64_Y31_N7
\clkdiv_i|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(3));

-- Location: LABCELL_X64_Y31_N9
\clkdiv_i|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~65_sumout\ = SUM(( \clkdiv_i|counter\(4) ) + ( GND ) + ( \clkdiv_i|Add0~70\ ))
-- \clkdiv_i|Add0~66\ = CARRY(( \clkdiv_i|counter\(4) ) + ( GND ) + ( \clkdiv_i|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(4),
	cin => \clkdiv_i|Add0~70\,
	sumout => \clkdiv_i|Add0~65_sumout\,
	cout => \clkdiv_i|Add0~66\);

-- Location: FF_X64_Y31_N11
\clkdiv_i|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(4));

-- Location: LABCELL_X64_Y31_N12
\clkdiv_i|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~61_sumout\ = SUM(( \clkdiv_i|counter\(5) ) + ( GND ) + ( \clkdiv_i|Add0~66\ ))
-- \clkdiv_i|Add0~62\ = CARRY(( \clkdiv_i|counter\(5) ) + ( GND ) + ( \clkdiv_i|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv_i|ALT_INV_counter\(5),
	cin => \clkdiv_i|Add0~66\,
	sumout => \clkdiv_i|Add0~61_sumout\,
	cout => \clkdiv_i|Add0~62\);

-- Location: FF_X64_Y31_N14
\clkdiv_i|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(5));

-- Location: LABCELL_X64_Y31_N15
\clkdiv_i|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~57_sumout\ = SUM(( \clkdiv_i|counter\(6) ) + ( GND ) + ( \clkdiv_i|Add0~62\ ))
-- \clkdiv_i|Add0~58\ = CARRY(( \clkdiv_i|counter\(6) ) + ( GND ) + ( \clkdiv_i|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(6),
	cin => \clkdiv_i|Add0~62\,
	sumout => \clkdiv_i|Add0~57_sumout\,
	cout => \clkdiv_i|Add0~58\);

-- Location: FF_X64_Y31_N17
\clkdiv_i|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(6));

-- Location: LABCELL_X64_Y31_N18
\clkdiv_i|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~53_sumout\ = SUM(( \clkdiv_i|counter\(7) ) + ( GND ) + ( \clkdiv_i|Add0~58\ ))
-- \clkdiv_i|Add0~54\ = CARRY(( \clkdiv_i|counter\(7) ) + ( GND ) + ( \clkdiv_i|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(7),
	cin => \clkdiv_i|Add0~58\,
	sumout => \clkdiv_i|Add0~53_sumout\,
	cout => \clkdiv_i|Add0~54\);

-- Location: FF_X64_Y31_N20
\clkdiv_i|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(7));

-- Location: LABCELL_X64_Y31_N21
\clkdiv_i|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~49_sumout\ = SUM(( \clkdiv_i|counter\(8) ) + ( GND ) + ( \clkdiv_i|Add0~54\ ))
-- \clkdiv_i|Add0~50\ = CARRY(( \clkdiv_i|counter\(8) ) + ( GND ) + ( \clkdiv_i|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(8),
	cin => \clkdiv_i|Add0~54\,
	sumout => \clkdiv_i|Add0~49_sumout\,
	cout => \clkdiv_i|Add0~50\);

-- Location: FF_X64_Y31_N23
\clkdiv_i|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(8));

-- Location: LABCELL_X64_Y31_N24
\clkdiv_i|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~45_sumout\ = SUM(( \clkdiv_i|counter\(9) ) + ( GND ) + ( \clkdiv_i|Add0~50\ ))
-- \clkdiv_i|Add0~46\ = CARRY(( \clkdiv_i|counter\(9) ) + ( GND ) + ( \clkdiv_i|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(9),
	cin => \clkdiv_i|Add0~50\,
	sumout => \clkdiv_i|Add0~45_sumout\,
	cout => \clkdiv_i|Add0~46\);

-- Location: FF_X64_Y31_N26
\clkdiv_i|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(9));

-- Location: LABCELL_X64_Y31_N27
\clkdiv_i|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~41_sumout\ = SUM(( \clkdiv_i|counter\(10) ) + ( GND ) + ( \clkdiv_i|Add0~46\ ))
-- \clkdiv_i|Add0~42\ = CARRY(( \clkdiv_i|counter\(10) ) + ( GND ) + ( \clkdiv_i|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(10),
	cin => \clkdiv_i|Add0~46\,
	sumout => \clkdiv_i|Add0~41_sumout\,
	cout => \clkdiv_i|Add0~42\);

-- Location: FF_X64_Y31_N29
\clkdiv_i|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(10));

-- Location: LABCELL_X64_Y31_N30
\clkdiv_i|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~37_sumout\ = SUM(( \clkdiv_i|counter\(11) ) + ( GND ) + ( \clkdiv_i|Add0~42\ ))
-- \clkdiv_i|Add0~38\ = CARRY(( \clkdiv_i|counter\(11) ) + ( GND ) + ( \clkdiv_i|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(11),
	cin => \clkdiv_i|Add0~42\,
	sumout => \clkdiv_i|Add0~37_sumout\,
	cout => \clkdiv_i|Add0~38\);

-- Location: FF_X64_Y31_N31
\clkdiv_i|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(11));

-- Location: LABCELL_X64_Y31_N33
\clkdiv_i|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~33_sumout\ = SUM(( \clkdiv_i|counter\(12) ) + ( GND ) + ( \clkdiv_i|Add0~38\ ))
-- \clkdiv_i|Add0~34\ = CARRY(( \clkdiv_i|counter\(12) ) + ( GND ) + ( \clkdiv_i|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv_i|ALT_INV_counter\(12),
	cin => \clkdiv_i|Add0~38\,
	sumout => \clkdiv_i|Add0~33_sumout\,
	cout => \clkdiv_i|Add0~34\);

-- Location: FF_X64_Y31_N35
\clkdiv_i|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(12));

-- Location: LABCELL_X64_Y31_N36
\clkdiv_i|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~29_sumout\ = SUM(( \clkdiv_i|counter\(13) ) + ( GND ) + ( \clkdiv_i|Add0~34\ ))
-- \clkdiv_i|Add0~30\ = CARRY(( \clkdiv_i|counter\(13) ) + ( GND ) + ( \clkdiv_i|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(13),
	cin => \clkdiv_i|Add0~34\,
	sumout => \clkdiv_i|Add0~29_sumout\,
	cout => \clkdiv_i|Add0~30\);

-- Location: FF_X64_Y31_N38
\clkdiv_i|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(13));

-- Location: LABCELL_X64_Y31_N39
\clkdiv_i|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~25_sumout\ = SUM(( \clkdiv_i|counter\(14) ) + ( GND ) + ( \clkdiv_i|Add0~30\ ))
-- \clkdiv_i|Add0~26\ = CARRY(( \clkdiv_i|counter\(14) ) + ( GND ) + ( \clkdiv_i|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(14),
	cin => \clkdiv_i|Add0~30\,
	sumout => \clkdiv_i|Add0~25_sumout\,
	cout => \clkdiv_i|Add0~26\);

-- Location: FF_X64_Y31_N41
\clkdiv_i|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(14));

-- Location: LABCELL_X64_Y31_N42
\clkdiv_i|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~21_sumout\ = SUM(( \clkdiv_i|counter\(15) ) + ( GND ) + ( \clkdiv_i|Add0~26\ ))
-- \clkdiv_i|Add0~22\ = CARRY(( \clkdiv_i|counter\(15) ) + ( GND ) + ( \clkdiv_i|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(15),
	cin => \clkdiv_i|Add0~26\,
	sumout => \clkdiv_i|Add0~21_sumout\,
	cout => \clkdiv_i|Add0~22\);

-- Location: FF_X64_Y31_N43
\clkdiv_i|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(15));

-- Location: LABCELL_X64_Y31_N45
\clkdiv_i|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~17_sumout\ = SUM(( \clkdiv_i|counter\(16) ) + ( GND ) + ( \clkdiv_i|Add0~22\ ))
-- \clkdiv_i|Add0~18\ = CARRY(( \clkdiv_i|counter\(16) ) + ( GND ) + ( \clkdiv_i|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(16),
	cin => \clkdiv_i|Add0~22\,
	sumout => \clkdiv_i|Add0~17_sumout\,
	cout => \clkdiv_i|Add0~18\);

-- Location: FF_X64_Y31_N47
\clkdiv_i|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(16));

-- Location: LABCELL_X64_Y31_N48
\clkdiv_i|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~13_sumout\ = SUM(( \clkdiv_i|counter\(17) ) + ( GND ) + ( \clkdiv_i|Add0~18\ ))
-- \clkdiv_i|Add0~14\ = CARRY(( \clkdiv_i|counter\(17) ) + ( GND ) + ( \clkdiv_i|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(17),
	cin => \clkdiv_i|Add0~18\,
	sumout => \clkdiv_i|Add0~13_sumout\,
	cout => \clkdiv_i|Add0~14\);

-- Location: FF_X64_Y31_N50
\clkdiv_i|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(17));

-- Location: LABCELL_X64_Y31_N51
\clkdiv_i|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~9_sumout\ = SUM(( \clkdiv_i|counter\(18) ) + ( GND ) + ( \clkdiv_i|Add0~14\ ))
-- \clkdiv_i|Add0~10\ = CARRY(( \clkdiv_i|counter\(18) ) + ( GND ) + ( \clkdiv_i|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(18),
	cin => \clkdiv_i|Add0~14\,
	sumout => \clkdiv_i|Add0~9_sumout\,
	cout => \clkdiv_i|Add0~10\);

-- Location: FF_X64_Y31_N52
\clkdiv_i|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(18));

-- Location: LABCELL_X64_Y31_N54
\clkdiv_i|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~5_sumout\ = SUM(( \clkdiv_i|counter\(19) ) + ( GND ) + ( \clkdiv_i|Add0~10\ ))
-- \clkdiv_i|Add0~6\ = CARRY(( \clkdiv_i|counter\(19) ) + ( GND ) + ( \clkdiv_i|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv_i|ALT_INV_counter\(19),
	cin => \clkdiv_i|Add0~10\,
	sumout => \clkdiv_i|Add0~5_sumout\,
	cout => \clkdiv_i|Add0~6\);

-- Location: FF_X64_Y31_N56
\clkdiv_i|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clkdiv_i|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(19));

-- Location: LABCELL_X64_Y31_N57
\clkdiv_i|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|Add0~1_sumout\ = SUM(( \clkdiv_i|counter\(20) ) + ( GND ) + ( \clkdiv_i|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv_i|ALT_INV_counter\(20),
	cin => \clkdiv_i|Add0~6\,
	sumout => \clkdiv_i|Add0~1_sumout\);

-- Location: LABCELL_X65_Y31_N12
\clkdiv_i|counter[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clkdiv_i|counter[20]~feeder_combout\ = ( \clkdiv_i|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clkdiv_i|ALT_INV_Add0~1_sumout\,
	combout => \clkdiv_i|counter[20]~feeder_combout\);

-- Location: FF_X65_Y31_N14
\clkdiv_i|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~input_o\,
	d => \clkdiv_i|counter[20]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv_i|counter\(20));

-- Location: LABCELL_X65_Y31_N9
\chen_i|pattern[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[1]~feeder_combout\ = \chen_i|pattern\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chen_i|ALT_INV_pattern\(0),
	combout => \chen_i|pattern[1]~feeder_combout\);

-- Location: FF_X65_Y31_N10
\chen_i|pattern[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(1));

-- Location: LABCELL_X65_Y31_N18
\chen_i|pattern[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[2]~feeder_combout\ = \chen_i|pattern\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chen_i|ALT_INV_pattern\(1),
	combout => \chen_i|pattern[2]~feeder_combout\);

-- Location: FF_X65_Y31_N19
\chen_i|pattern[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(2));

-- Location: LABCELL_X65_Y31_N24
\chen_i|pattern[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[3]~feeder_combout\ = \chen_i|pattern\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chen_i|ALT_INV_pattern\(2),
	combout => \chen_i|pattern[3]~feeder_combout\);

-- Location: FF_X65_Y31_N25
\chen_i|pattern[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(3));

-- Location: LABCELL_X65_Y31_N45
\chen_i|pattern[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[4]~1_combout\ = !\chen_i|pattern\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chen_i|ALT_INV_pattern\(3),
	combout => \chen_i|pattern[4]~1_combout\);

-- Location: FF_X65_Y31_N46
\chen_i|pattern[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[4]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(4));

-- Location: LABCELL_X65_Y31_N30
\chen_i|pattern[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[5]~feeder_combout\ = \chen_i|pattern\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chen_i|ALT_INV_pattern\(4),
	combout => \chen_i|pattern[5]~feeder_combout\);

-- Location: FF_X65_Y31_N31
\chen_i|pattern[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(5));

-- Location: LABCELL_X65_Y31_N27
\chen_i|pattern[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[6]~feeder_combout\ = \chen_i|pattern\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chen_i|ALT_INV_pattern\(5),
	combout => \chen_i|pattern[6]~feeder_combout\);

-- Location: FF_X65_Y31_N28
\chen_i|pattern[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(6));

-- Location: LABCELL_X65_Y31_N54
\chen_i|pattern[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[7]~feeder_combout\ = \chen_i|pattern\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chen_i|ALT_INV_pattern\(6),
	combout => \chen_i|pattern[7]~feeder_combout\);

-- Location: FF_X65_Y31_N55
\chen_i|pattern[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(7));

-- Location: LABCELL_X65_Y31_N39
\chen_i|pattern[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[8]~feeder_combout\ = \chen_i|pattern\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chen_i|ALT_INV_pattern\(7),
	combout => \chen_i|pattern[8]~feeder_combout\);

-- Location: FF_X65_Y31_N40
\chen_i|pattern[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern[8]~DUPLICATE_q\);

-- Location: FF_X65_Y31_N52
\chen_i|pattern[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	asdata => \chen_i|pattern[8]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(9));

-- Location: LABCELL_X65_Y31_N48
\chen_i|pattern[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chen_i|pattern[0]~0_combout\ = !\chen_i|pattern\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chen_i|ALT_INV_pattern\(9),
	combout => \chen_i|pattern[0]~0_combout\);

-- Location: FF_X65_Y31_N49
\chen_i|pattern[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(0));

-- Location: FF_X65_Y31_N41
\chen_i|pattern[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv_i|counter\(20),
	d => \chen_i|pattern[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chen_i|pattern\(8));

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

-- Location: LABCELL_X2_Y1_N0
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


