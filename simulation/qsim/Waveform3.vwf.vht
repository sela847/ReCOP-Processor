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
-- Generated on "05/19/2024 14:40:38"
                                                             
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
SIGNAL alu_op_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL alu_outputpin : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AM : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL currentState : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dm_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dpcr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dprr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL incrAddr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instAddr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ir_operand_set : STD_LOGIC;
SIGNAL ir_reset : STD_LOGIC;
SIGNAL ir_wr : STD_LOGIC;
SIGNAL load_reg : STD_LOGIC;
SIGNAL op1_wr : STD_LOGIC;
SIGNAL op1OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL op2_wr : STD_LOGIC;
SIGNAL op2OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL OPCode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Operand : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_mux_sel : STD_LOGIC;
SIGNAL prog_mem_instruct : STD_LOGIC_VECTOR(15 DOWNTO 0);
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
SIGNAL z_flag : STD_LOGIC;
COMPONENT pc_test
	PORT (
	alu_op_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	alu_outputpin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	currentState : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	dm_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dprr : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	incrAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ir_operand_set : OUT STD_LOGIC;
	ir_reset : OUT STD_LOGIC;
	ir_wr : OUT STD_LOGIC;
	load_reg : OUT STD_LOGIC;
	op1_wr : OUT STD_LOGIC;
	op1OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	op2_wr : OUT STD_LOGIC;
	op2OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	OPCode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_mux_sel : OUT STD_LOGIC;
	prog_mem_instruct : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
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
	write_pc : OUT STD_LOGIC;
	z_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pc_test
	PORT MAP (
-- list connections between master ports and signals
	alu_op_sel => alu_op_sel,
	alu_outputpin => alu_outputpin,
	AM => AM,
	clk => clk,
	currentState => currentState,
	dm_out => dm_out,
	dpcr => dpcr,
	dprr => dprr,
	incrAddr => incrAddr,
	instAddr => instAddr,
	instruction => instruction,
	ir_operand_set => ir_operand_set,
	ir_reset => ir_reset,
	ir_wr => ir_wr,
	load_reg => load_reg,
	op1_wr => op1_wr,
	op1OUT => op1OUT,
	op2_wr => op2_wr,
	op2OUT => op2OUT,
	OPCode => OPCode,
	Operand => Operand,
	pc_mux_sel => pc_mux_sel,
	prog_mem_instruct => prog_mem_instruct,
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
	write_pc => write_pc,
	z_flag => z_flag
	);
-- sip[15]
t_prcs_sip_15: PROCESS
BEGIN
	sip(15) <= '0';
WAIT;
END PROCESS t_prcs_sip_15;
-- sip[14]
t_prcs_sip_14: PROCESS
BEGIN
	sip(14) <= '0';
WAIT;
END PROCESS t_prcs_sip_14;
-- sip[13]
t_prcs_sip_13: PROCESS
BEGIN
	sip(13) <= '0';
WAIT;
END PROCESS t_prcs_sip_13;
-- sip[12]
t_prcs_sip_12: PROCESS
BEGIN
	sip(12) <= '0';
WAIT;
END PROCESS t_prcs_sip_12;
-- sip[11]
t_prcs_sip_11: PROCESS
BEGIN
	sip(11) <= '0';
WAIT;
END PROCESS t_prcs_sip_11;
-- sip[10]
t_prcs_sip_10: PROCESS
BEGIN
	sip(10) <= '0';
WAIT;
END PROCESS t_prcs_sip_10;
-- sip[9]
t_prcs_sip_9: PROCESS
BEGIN
	sip(9) <= '0';
WAIT;
END PROCESS t_prcs_sip_9;
-- sip[8]
t_prcs_sip_8: PROCESS
BEGIN
	sip(8) <= '0';
WAIT;
END PROCESS t_prcs_sip_8;
-- sip[7]
t_prcs_sip_7: PROCESS
BEGIN
	sip(7) <= '0';
WAIT;
END PROCESS t_prcs_sip_7;
-- sip[6]
t_prcs_sip_6: PROCESS
BEGIN
	sip(6) <= '0';
WAIT;
END PROCESS t_prcs_sip_6;
-- sip[5]
t_prcs_sip_5: PROCESS
BEGIN
	sip(5) <= '0';
WAIT;
END PROCESS t_prcs_sip_5;
-- sip[4]
t_prcs_sip_4: PROCESS
BEGIN
	sip(4) <= '0';
WAIT;
END PROCESS t_prcs_sip_4;
-- sip[3]
t_prcs_sip_3: PROCESS
BEGIN
	sip(3) <= '0';
WAIT;
END PROCESS t_prcs_sip_3;
-- sip[2]
t_prcs_sip_2: PROCESS
BEGIN
	sip(2) <= '0';
WAIT;
END PROCESS t_prcs_sip_2;
-- sip[1]
t_prcs_sip_1: PROCESS
BEGIN
	sip(1) <= '0';
WAIT;
END PROCESS t_prcs_sip_1;
-- sip[0]
t_prcs_sip_0: PROCESS
BEGIN
	sip(0) <= '0';
WAIT;
END PROCESS t_prcs_sip_0;

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
	WAIT FOR 120000 ps;
	reset_in <= '0';
WAIT;
END PROCESS t_prcs_reset_in;
END pc_test_arch;
