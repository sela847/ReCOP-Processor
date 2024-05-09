-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/09/2024 17:41:37"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pc_test IS
    PORT (
	incrAddr : OUT std_logic_vector(15 DOWNTO 0);
	write_pc : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	addr : IN std_logic_vector(15 DOWNTO 0);
	instAddr : OUT std_logic_vector(15 DOWNTO 0)
	);
END pc_test;

ARCHITECTURE structure OF pc_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_incrAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_write_pc : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL \write_pc~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \incrAddr[15]~output_o\ : std_logic;
SIGNAL \incrAddr[14]~output_o\ : std_logic;
SIGNAL \incrAddr[13]~output_o\ : std_logic;
SIGNAL \incrAddr[12]~output_o\ : std_logic;
SIGNAL \incrAddr[11]~output_o\ : std_logic;
SIGNAL \incrAddr[10]~output_o\ : std_logic;
SIGNAL \incrAddr[9]~output_o\ : std_logic;
SIGNAL \incrAddr[8]~output_o\ : std_logic;
SIGNAL \incrAddr[7]~output_o\ : std_logic;
SIGNAL \incrAddr[6]~output_o\ : std_logic;
SIGNAL \incrAddr[5]~output_o\ : std_logic;
SIGNAL \incrAddr[4]~output_o\ : std_logic;
SIGNAL \incrAddr[3]~output_o\ : std_logic;
SIGNAL \incrAddr[2]~output_o\ : std_logic;
SIGNAL \incrAddr[1]~output_o\ : std_logic;
SIGNAL \incrAddr[0]~output_o\ : std_logic;
SIGNAL \instAddr[15]~output_o\ : std_logic;
SIGNAL \instAddr[14]~output_o\ : std_logic;
SIGNAL \instAddr[13]~output_o\ : std_logic;
SIGNAL \instAddr[12]~output_o\ : std_logic;
SIGNAL \instAddr[11]~output_o\ : std_logic;
SIGNAL \instAddr[10]~output_o\ : std_logic;
SIGNAL \instAddr[9]~output_o\ : std_logic;
SIGNAL \instAddr[8]~output_o\ : std_logic;
SIGNAL \instAddr[7]~output_o\ : std_logic;
SIGNAL \instAddr[6]~output_o\ : std_logic;
SIGNAL \instAddr[5]~output_o\ : std_logic;
SIGNAL \instAddr[4]~output_o\ : std_logic;
SIGNAL \instAddr[3]~output_o\ : std_logic;
SIGNAL \instAddr[2]~output_o\ : std_logic;
SIGNAL \instAddr[1]~output_o\ : std_logic;
SIGNAL \instAddr[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \inst|tempAddress[0]~0_combout\ : std_logic;
SIGNAL \inst|tempAddress\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

incrAddr <= ww_incrAddr;
ww_write_pc <= write_pc;
ww_reset <= reset;
ww_clk <= clk;
ww_addr <= addr;
instAddr <= ww_instAddr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_addr[1]~input_o\ <= NOT \addr[1]~input_o\;
\ALT_INV_addr[2]~input_o\ <= NOT \addr[2]~input_o\;
\ALT_INV_addr[3]~input_o\ <= NOT \addr[3]~input_o\;
\ALT_INV_addr[4]~input_o\ <= NOT \addr[4]~input_o\;
\ALT_INV_addr[5]~input_o\ <= NOT \addr[5]~input_o\;
\ALT_INV_addr[6]~input_o\ <= NOT \addr[6]~input_o\;
\ALT_INV_addr[7]~input_o\ <= NOT \addr[7]~input_o\;
\ALT_INV_addr[8]~input_o\ <= NOT \addr[8]~input_o\;
\ALT_INV_addr[9]~input_o\ <= NOT \addr[9]~input_o\;
\ALT_INV_addr[10]~input_o\ <= NOT \addr[10]~input_o\;
\ALT_INV_addr[11]~input_o\ <= NOT \addr[11]~input_o\;
\ALT_INV_addr[12]~input_o\ <= NOT \addr[12]~input_o\;
\ALT_INV_addr[13]~input_o\ <= NOT \addr[13]~input_o\;
\ALT_INV_addr[14]~input_o\ <= NOT \addr[14]~input_o\;
\ALT_INV_addr[0]~input_o\ <= NOT \addr[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

\incrAddr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \incrAddr[15]~output_o\);

\incrAddr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(14),
	devoe => ww_devoe,
	o => \incrAddr[14]~output_o\);

\incrAddr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(13),
	devoe => ww_devoe,
	o => \incrAddr[13]~output_o\);

\incrAddr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(12),
	devoe => ww_devoe,
	o => \incrAddr[12]~output_o\);

\incrAddr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(11),
	devoe => ww_devoe,
	o => \incrAddr[11]~output_o\);

\incrAddr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(10),
	devoe => ww_devoe,
	o => \incrAddr[10]~output_o\);

\incrAddr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(9),
	devoe => ww_devoe,
	o => \incrAddr[9]~output_o\);

\incrAddr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(8),
	devoe => ww_devoe,
	o => \incrAddr[8]~output_o\);

\incrAddr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(7),
	devoe => ww_devoe,
	o => \incrAddr[7]~output_o\);

\incrAddr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(6),
	devoe => ww_devoe,
	o => \incrAddr[6]~output_o\);

\incrAddr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(5),
	devoe => ww_devoe,
	o => \incrAddr[5]~output_o\);

\incrAddr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(4),
	devoe => ww_devoe,
	o => \incrAddr[4]~output_o\);

\incrAddr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(3),
	devoe => ww_devoe,
	o => \incrAddr[3]~output_o\);

\incrAddr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(2),
	devoe => ww_devoe,
	o => \incrAddr[2]~output_o\);

\incrAddr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(1),
	devoe => ww_devoe,
	o => \incrAddr[1]~output_o\);

\incrAddr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tempAddress\(0),
	devoe => ww_devoe,
	o => \incrAddr[0]~output_o\);

\instAddr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[15]~output_o\);

\instAddr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[14]~output_o\);

\instAddr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[13]~output_o\);

\instAddr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[12]~output_o\);

\instAddr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[11]~output_o\);

\instAddr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[10]~output_o\);

\instAddr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[9]~output_o\);

\instAddr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[8]~output_o\);

\instAddr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[7]~output_o\);

\instAddr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[6]~output_o\);

\instAddr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[5]~output_o\);

\instAddr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[4]~output_o\);

\instAddr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[3]~output_o\);

\instAddr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[2]~output_o\);

\instAddr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[1]~output_o\);

\instAddr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instAddr[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\addr[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

\addr[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

\addr[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

\addr[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

\addr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

\addr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

\addr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

\addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

\addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

\addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

\addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

\addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

\addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

\addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

\addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

\inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~53_sumout\ = SUM(( \addr[0]~input_o\ ) + ( \addr[1]~input_o\ ) + ( !VCC ))
-- \inst|Add0~54\ = CARRY(( \addr[0]~input_o\ ) + ( \addr[1]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[0]~input_o\,
	dataf => \ALT_INV_addr[1]~input_o\,
	cin => GND,
	sumout => \inst|Add0~53_sumout\,
	cout => \inst|Add0~54\);

\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( \addr[2]~input_o\ ) + ( GND ) + ( \inst|Add0~54\ ))
-- \inst|Add0~50\ = CARRY(( \addr[2]~input_o\ ) + ( GND ) + ( \inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[2]~input_o\,
	cin => \inst|Add0~54\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( \addr[3]~input_o\ ) + ( GND ) + ( \inst|Add0~50\ ))
-- \inst|Add0~46\ = CARRY(( \addr[3]~input_o\ ) + ( GND ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[3]~input_o\,
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\,
	cout => \inst|Add0~46\);

\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \addr[4]~input_o\ ) + ( GND ) + ( \inst|Add0~46\ ))
-- \inst|Add0~42\ = CARRY(( \addr[4]~input_o\ ) + ( GND ) + ( \inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[4]~input_o\,
	cin => \inst|Add0~46\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \addr[5]~input_o\ ) + ( GND ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( \addr[5]~input_o\ ) + ( GND ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[5]~input_o\,
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \addr[6]~input_o\ ) + ( GND ) + ( \inst|Add0~38\ ))
-- \inst|Add0~34\ = CARRY(( \addr[6]~input_o\ ) + ( GND ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[6]~input_o\,
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \addr[7]~input_o\ ) + ( GND ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( \addr[7]~input_o\ ) + ( GND ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[7]~input_o\,
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \addr[8]~input_o\ ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \addr[8]~input_o\ ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[8]~input_o\,
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \addr[9]~input_o\ ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \addr[9]~input_o\ ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[9]~input_o\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \addr[10]~input_o\ ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \addr[10]~input_o\ ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[10]~input_o\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \addr[11]~input_o\ ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \addr[11]~input_o\ ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[11]~input_o\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \addr[12]~input_o\ ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \addr[12]~input_o\ ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[12]~input_o\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \addr[13]~input_o\ ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \addr[13]~input_o\ ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[13]~input_o\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \addr[14]~input_o\ ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_addr[14]~input_o\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\inst|tempAddress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(14));

\inst|tempAddress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(13));

\inst|tempAddress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(12));

\inst|tempAddress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(11));

\inst|tempAddress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(10));

\inst|tempAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(9));

\inst|tempAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(8));

\inst|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(7));

\inst|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(6));

\inst|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(5));

\inst|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(4));

\inst|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(3));

\inst|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(2));

\inst|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(1));

\inst|tempAddress[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|tempAddress[0]~0_combout\ = !\addr[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	combout => \inst|tempAddress[0]~0_combout\);

\inst|tempAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|tempAddress[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tempAddress\(0));

\write_pc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_pc,
	o => \write_pc~input_o\);

\addr[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

ww_incrAddr(15) <= \incrAddr[15]~output_o\;

ww_incrAddr(14) <= \incrAddr[14]~output_o\;

ww_incrAddr(13) <= \incrAddr[13]~output_o\;

ww_incrAddr(12) <= \incrAddr[12]~output_o\;

ww_incrAddr(11) <= \incrAddr[11]~output_o\;

ww_incrAddr(10) <= \incrAddr[10]~output_o\;

ww_incrAddr(9) <= \incrAddr[9]~output_o\;

ww_incrAddr(8) <= \incrAddr[8]~output_o\;

ww_incrAddr(7) <= \incrAddr[7]~output_o\;

ww_incrAddr(6) <= \incrAddr[6]~output_o\;

ww_incrAddr(5) <= \incrAddr[5]~output_o\;

ww_incrAddr(4) <= \incrAddr[4]~output_o\;

ww_incrAddr(3) <= \incrAddr[3]~output_o\;

ww_incrAddr(2) <= \incrAddr[2]~output_o\;

ww_incrAddr(1) <= \incrAddr[1]~output_o\;

ww_incrAddr(0) <= \incrAddr[0]~output_o\;

ww_instAddr(15) <= \instAddr[15]~output_o\;

ww_instAddr(14) <= \instAddr[14]~output_o\;

ww_instAddr(13) <= \instAddr[13]~output_o\;

ww_instAddr(12) <= \instAddr[12]~output_o\;

ww_instAddr(11) <= \instAddr[11]~output_o\;

ww_instAddr(10) <= \instAddr[10]~output_o\;

ww_instAddr(9) <= \instAddr[9]~output_o\;

ww_instAddr(8) <= \instAddr[8]~output_o\;

ww_instAddr(7) <= \instAddr[7]~output_o\;

ww_instAddr(6) <= \instAddr[6]~output_o\;

ww_instAddr(5) <= \instAddr[5]~output_o\;

ww_instAddr(4) <= \instAddr[4]~output_o\;

ww_instAddr(3) <= \instAddr[3]~output_o\;

ww_instAddr(2) <= \instAddr[2]~output_o\;

ww_instAddr(1) <= \instAddr[1]~output_o\;

ww_instAddr(0) <= \instAddr[0]~output_o\;
END structure;


