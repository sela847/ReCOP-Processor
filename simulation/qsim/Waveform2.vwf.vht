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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/15/2024 17:31:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pc_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pc_test_vhd_vec_tst IS
END pc_test_vhd_vec_tst;
ARCHITECTURE pc_test_arch OF pc_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_outputpin : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AM : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL currentState : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dpcr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL incrAddr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instAddr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ir_operand_set : STD_LOGIC;
SIGNAL ir_reset : STD_LOGIC;
SIGNAL ir_wr : STD_LOGIC;
SIGNAL OPCode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Operand : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_mux_sel : STD_LOGIC;
SIGNAL r7_outputData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg4_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset_in : STD_LOGIC;
SIGNAL reset_pc : STD_LOGIC;
SIGNAL Rx : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rx_outputData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Rz : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rz_outputData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL write_pc : STD_LOGIC;
COMPONENT pc_test
	PORT (
	alu_outputpin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	currentState : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	incrAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ir_operand_set : OUT STD_LOGIC;
	ir_reset : OUT STD_LOGIC;
	ir_wr : OUT STD_LOGIC;
	OPCode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_mux_sel : OUT STD_LOGIC;
	r7_outputData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg4_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset_in : IN STD_LOGIC;
	reset_pc : OUT STD_LOGIC;
	Rx : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rx_outputData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Rz : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rz_outputData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	write_pc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pc_test
	PORT MAP (
-- list connections between master ports and signals
	alu_outputpin => alu_outputpin,
	AM => AM,
	clk => clk,
	currentState => currentState,
	dpcr => dpcr,
	incrAddr => incrAddr,
	instAddr => instAddr,
	instruction => instruction,
	ir_operand_set => ir_operand_set,
	ir_reset => ir_reset,
	ir_wr => ir_wr,
	OPCode => OPCode,
	Operand => Operand,
	pc_mux_sel => pc_mux_sel,
	r7_outputData => r7_outputData,
	reg4_output => reg4_output,
	reset_in => reset_in,
	reset_pc => reset_pc,
	Rx => Rx,
	rx_outputData => rx_outputData,
	Rz => Rz,
	rz_outputData => rz_outputData,
	sip => sip,
	sop_out => sop_out,
	write_pc => write_pc
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset_in
t_prcs_reset_in: PROCESS
BEGIN
	reset_in <= '1';
	WAIT FOR 110000 ps;
	reset_in <= '0';
WAIT;
END PROCESS t_prcs_reset_in;
END pc_test_arch;
