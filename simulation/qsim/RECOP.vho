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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/15/2024 23:02:42"

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
	write_pc : OUT std_logic;
	clk : IN std_logic;
	reset_in : IN std_logic;
	AM : OUT std_logic_vector(1 DOWNTO 0);
	ir_wr : OUT std_logic;
	ir_reset : OUT std_logic;
	ir_operand_set : OUT std_logic;
	op2_wr : OUT std_logic;
	reset_pc : OUT std_logic;
	op1_wr : OUT std_logic;
	Operand : OUT std_logic_vector(15 DOWNTO 0);
	pc_mux_sel : OUT std_logic;
	sip : IN std_logic_vector(15 DOWNTO 0);
	instAddr : OUT std_logic_vector(15 DOWNTO 0);
	OPCode : OUT std_logic_vector(5 DOWNTO 0);
	load_reg : OUT std_logic;
	alu_outputpin : OUT std_logic_vector(15 DOWNTO 0);
	currentState : OUT std_logic_vector(2 DOWNTO 0);
	dpcr : OUT std_logic_vector(31 DOWNTO 0);
	incrAddr : OUT std_logic_vector(15 DOWNTO 0);
	instruction : OUT std_logic_vector(15 DOWNTO 0);
	op1OUT : OUT std_logic_vector(15 DOWNTO 0);
	op2OUT : OUT std_logic_vector(15 DOWNTO 0);
	r7_outputData : OUT std_logic_vector(15 DOWNTO 0);
	reg4_output : OUT std_logic_vector(15 DOWNTO 0);
	Rx : OUT std_logic_vector(3 DOWNTO 0);
	rx_outputData : OUT std_logic_vector(15 DOWNTO 0);
	Rz : OUT std_logic_vector(3 DOWNTO 0);
	rz_outputData : OUT std_logic_vector(15 DOWNTO 0);
	sop_out : OUT std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_write_pc : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_in : std_logic;
SIGNAL ww_AM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ir_wr : std_logic;
SIGNAL ww_ir_reset : std_logic;
SIGNAL ww_ir_operand_set : std_logic;
SIGNAL ww_op2_wr : std_logic;
SIGNAL ww_reset_pc : std_logic;
SIGNAL ww_op1_wr : std_logic;
SIGNAL ww_Operand : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pc_mux_sel : std_logic;
SIGNAL ww_sip : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OPCode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_load_reg : std_logic;
SIGNAL ww_alu_outputpin : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_currentState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dpcr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_incrAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_op1OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_op2OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r7_outputData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg4_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rx : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rx_outputData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rz : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rz_outputData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sop_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \write_pc~output_o\ : std_logic;
SIGNAL \AM[1]~output_o\ : std_logic;
SIGNAL \AM[0]~output_o\ : std_logic;
SIGNAL \ir_wr~output_o\ : std_logic;
SIGNAL \ir_reset~output_o\ : std_logic;
SIGNAL \ir_operand_set~output_o\ : std_logic;
SIGNAL \op2_wr~output_o\ : std_logic;
SIGNAL \reset_pc~output_o\ : std_logic;
SIGNAL \op1_wr~output_o\ : std_logic;
SIGNAL \Operand[15]~output_o\ : std_logic;
SIGNAL \Operand[14]~output_o\ : std_logic;
SIGNAL \Operand[13]~output_o\ : std_logic;
SIGNAL \Operand[12]~output_o\ : std_logic;
SIGNAL \Operand[11]~output_o\ : std_logic;
SIGNAL \Operand[10]~output_o\ : std_logic;
SIGNAL \Operand[9]~output_o\ : std_logic;
SIGNAL \Operand[8]~output_o\ : std_logic;
SIGNAL \Operand[7]~output_o\ : std_logic;
SIGNAL \Operand[6]~output_o\ : std_logic;
SIGNAL \Operand[5]~output_o\ : std_logic;
SIGNAL \Operand[4]~output_o\ : std_logic;
SIGNAL \Operand[3]~output_o\ : std_logic;
SIGNAL \Operand[2]~output_o\ : std_logic;
SIGNAL \Operand[1]~output_o\ : std_logic;
SIGNAL \Operand[0]~output_o\ : std_logic;
SIGNAL \pc_mux_sel~output_o\ : std_logic;
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
SIGNAL \OPCode[5]~output_o\ : std_logic;
SIGNAL \OPCode[4]~output_o\ : std_logic;
SIGNAL \OPCode[3]~output_o\ : std_logic;
SIGNAL \OPCode[2]~output_o\ : std_logic;
SIGNAL \OPCode[1]~output_o\ : std_logic;
SIGNAL \OPCode[0]~output_o\ : std_logic;
SIGNAL \load_reg~output_o\ : std_logic;
SIGNAL \alu_outputpin[15]~output_o\ : std_logic;
SIGNAL \alu_outputpin[14]~output_o\ : std_logic;
SIGNAL \alu_outputpin[13]~output_o\ : std_logic;
SIGNAL \alu_outputpin[12]~output_o\ : std_logic;
SIGNAL \alu_outputpin[11]~output_o\ : std_logic;
SIGNAL \alu_outputpin[10]~output_o\ : std_logic;
SIGNAL \alu_outputpin[9]~output_o\ : std_logic;
SIGNAL \alu_outputpin[8]~output_o\ : std_logic;
SIGNAL \alu_outputpin[7]~output_o\ : std_logic;
SIGNAL \alu_outputpin[6]~output_o\ : std_logic;
SIGNAL \alu_outputpin[5]~output_o\ : std_logic;
SIGNAL \alu_outputpin[4]~output_o\ : std_logic;
SIGNAL \alu_outputpin[3]~output_o\ : std_logic;
SIGNAL \alu_outputpin[2]~output_o\ : std_logic;
SIGNAL \alu_outputpin[1]~output_o\ : std_logic;
SIGNAL \alu_outputpin[0]~output_o\ : std_logic;
SIGNAL \currentState[2]~output_o\ : std_logic;
SIGNAL \currentState[1]~output_o\ : std_logic;
SIGNAL \currentState[0]~output_o\ : std_logic;
SIGNAL \dpcr[31]~output_o\ : std_logic;
SIGNAL \dpcr[30]~output_o\ : std_logic;
SIGNAL \dpcr[29]~output_o\ : std_logic;
SIGNAL \dpcr[28]~output_o\ : std_logic;
SIGNAL \dpcr[27]~output_o\ : std_logic;
SIGNAL \dpcr[26]~output_o\ : std_logic;
SIGNAL \dpcr[25]~output_o\ : std_logic;
SIGNAL \dpcr[24]~output_o\ : std_logic;
SIGNAL \dpcr[23]~output_o\ : std_logic;
SIGNAL \dpcr[22]~output_o\ : std_logic;
SIGNAL \dpcr[21]~output_o\ : std_logic;
SIGNAL \dpcr[20]~output_o\ : std_logic;
SIGNAL \dpcr[19]~output_o\ : std_logic;
SIGNAL \dpcr[18]~output_o\ : std_logic;
SIGNAL \dpcr[17]~output_o\ : std_logic;
SIGNAL \dpcr[16]~output_o\ : std_logic;
SIGNAL \dpcr[15]~output_o\ : std_logic;
SIGNAL \dpcr[14]~output_o\ : std_logic;
SIGNAL \dpcr[13]~output_o\ : std_logic;
SIGNAL \dpcr[12]~output_o\ : std_logic;
SIGNAL \dpcr[11]~output_o\ : std_logic;
SIGNAL \dpcr[10]~output_o\ : std_logic;
SIGNAL \dpcr[9]~output_o\ : std_logic;
SIGNAL \dpcr[8]~output_o\ : std_logic;
SIGNAL \dpcr[7]~output_o\ : std_logic;
SIGNAL \dpcr[6]~output_o\ : std_logic;
SIGNAL \dpcr[5]~output_o\ : std_logic;
SIGNAL \dpcr[4]~output_o\ : std_logic;
SIGNAL \dpcr[3]~output_o\ : std_logic;
SIGNAL \dpcr[2]~output_o\ : std_logic;
SIGNAL \dpcr[1]~output_o\ : std_logic;
SIGNAL \dpcr[0]~output_o\ : std_logic;
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
SIGNAL \instruction[15]~output_o\ : std_logic;
SIGNAL \instruction[14]~output_o\ : std_logic;
SIGNAL \instruction[13]~output_o\ : std_logic;
SIGNAL \instruction[12]~output_o\ : std_logic;
SIGNAL \instruction[11]~output_o\ : std_logic;
SIGNAL \instruction[10]~output_o\ : std_logic;
SIGNAL \instruction[9]~output_o\ : std_logic;
SIGNAL \instruction[8]~output_o\ : std_logic;
SIGNAL \instruction[7]~output_o\ : std_logic;
SIGNAL \instruction[6]~output_o\ : std_logic;
SIGNAL \instruction[5]~output_o\ : std_logic;
SIGNAL \instruction[4]~output_o\ : std_logic;
SIGNAL \instruction[3]~output_o\ : std_logic;
SIGNAL \instruction[2]~output_o\ : std_logic;
SIGNAL \instruction[1]~output_o\ : std_logic;
SIGNAL \instruction[0]~output_o\ : std_logic;
SIGNAL \op1OUT[15]~output_o\ : std_logic;
SIGNAL \op1OUT[14]~output_o\ : std_logic;
SIGNAL \op1OUT[13]~output_o\ : std_logic;
SIGNAL \op1OUT[12]~output_o\ : std_logic;
SIGNAL \op1OUT[11]~output_o\ : std_logic;
SIGNAL \op1OUT[10]~output_o\ : std_logic;
SIGNAL \op1OUT[9]~output_o\ : std_logic;
SIGNAL \op1OUT[8]~output_o\ : std_logic;
SIGNAL \op1OUT[7]~output_o\ : std_logic;
SIGNAL \op1OUT[6]~output_o\ : std_logic;
SIGNAL \op1OUT[5]~output_o\ : std_logic;
SIGNAL \op1OUT[4]~output_o\ : std_logic;
SIGNAL \op1OUT[3]~output_o\ : std_logic;
SIGNAL \op1OUT[2]~output_o\ : std_logic;
SIGNAL \op1OUT[1]~output_o\ : std_logic;
SIGNAL \op1OUT[0]~output_o\ : std_logic;
SIGNAL \op2OUT[15]~output_o\ : std_logic;
SIGNAL \op2OUT[14]~output_o\ : std_logic;
SIGNAL \op2OUT[13]~output_o\ : std_logic;
SIGNAL \op2OUT[12]~output_o\ : std_logic;
SIGNAL \op2OUT[11]~output_o\ : std_logic;
SIGNAL \op2OUT[10]~output_o\ : std_logic;
SIGNAL \op2OUT[9]~output_o\ : std_logic;
SIGNAL \op2OUT[8]~output_o\ : std_logic;
SIGNAL \op2OUT[7]~output_o\ : std_logic;
SIGNAL \op2OUT[6]~output_o\ : std_logic;
SIGNAL \op2OUT[5]~output_o\ : std_logic;
SIGNAL \op2OUT[4]~output_o\ : std_logic;
SIGNAL \op2OUT[3]~output_o\ : std_logic;
SIGNAL \op2OUT[2]~output_o\ : std_logic;
SIGNAL \op2OUT[1]~output_o\ : std_logic;
SIGNAL \op2OUT[0]~output_o\ : std_logic;
SIGNAL \r7_outputData[15]~output_o\ : std_logic;
SIGNAL \r7_outputData[14]~output_o\ : std_logic;
SIGNAL \r7_outputData[13]~output_o\ : std_logic;
SIGNAL \r7_outputData[12]~output_o\ : std_logic;
SIGNAL \r7_outputData[11]~output_o\ : std_logic;
SIGNAL \r7_outputData[10]~output_o\ : std_logic;
SIGNAL \r7_outputData[9]~output_o\ : std_logic;
SIGNAL \r7_outputData[8]~output_o\ : std_logic;
SIGNAL \r7_outputData[7]~output_o\ : std_logic;
SIGNAL \r7_outputData[6]~output_o\ : std_logic;
SIGNAL \r7_outputData[5]~output_o\ : std_logic;
SIGNAL \r7_outputData[4]~output_o\ : std_logic;
SIGNAL \r7_outputData[3]~output_o\ : std_logic;
SIGNAL \r7_outputData[2]~output_o\ : std_logic;
SIGNAL \r7_outputData[1]~output_o\ : std_logic;
SIGNAL \r7_outputData[0]~output_o\ : std_logic;
SIGNAL \reg4_output[15]~output_o\ : std_logic;
SIGNAL \reg4_output[14]~output_o\ : std_logic;
SIGNAL \reg4_output[13]~output_o\ : std_logic;
SIGNAL \reg4_output[12]~output_o\ : std_logic;
SIGNAL \reg4_output[11]~output_o\ : std_logic;
SIGNAL \reg4_output[10]~output_o\ : std_logic;
SIGNAL \reg4_output[9]~output_o\ : std_logic;
SIGNAL \reg4_output[8]~output_o\ : std_logic;
SIGNAL \reg4_output[7]~output_o\ : std_logic;
SIGNAL \reg4_output[6]~output_o\ : std_logic;
SIGNAL \reg4_output[5]~output_o\ : std_logic;
SIGNAL \reg4_output[4]~output_o\ : std_logic;
SIGNAL \reg4_output[3]~output_o\ : std_logic;
SIGNAL \reg4_output[2]~output_o\ : std_logic;
SIGNAL \reg4_output[1]~output_o\ : std_logic;
SIGNAL \reg4_output[0]~output_o\ : std_logic;
SIGNAL \Rx[3]~output_o\ : std_logic;
SIGNAL \Rx[2]~output_o\ : std_logic;
SIGNAL \Rx[1]~output_o\ : std_logic;
SIGNAL \Rx[0]~output_o\ : std_logic;
SIGNAL \rx_outputData[15]~output_o\ : std_logic;
SIGNAL \rx_outputData[14]~output_o\ : std_logic;
SIGNAL \rx_outputData[13]~output_o\ : std_logic;
SIGNAL \rx_outputData[12]~output_o\ : std_logic;
SIGNAL \rx_outputData[11]~output_o\ : std_logic;
SIGNAL \rx_outputData[10]~output_o\ : std_logic;
SIGNAL \rx_outputData[9]~output_o\ : std_logic;
SIGNAL \rx_outputData[8]~output_o\ : std_logic;
SIGNAL \rx_outputData[7]~output_o\ : std_logic;
SIGNAL \rx_outputData[6]~output_o\ : std_logic;
SIGNAL \rx_outputData[5]~output_o\ : std_logic;
SIGNAL \rx_outputData[4]~output_o\ : std_logic;
SIGNAL \rx_outputData[3]~output_o\ : std_logic;
SIGNAL \rx_outputData[2]~output_o\ : std_logic;
SIGNAL \rx_outputData[1]~output_o\ : std_logic;
SIGNAL \rx_outputData[0]~output_o\ : std_logic;
SIGNAL \Rz[3]~output_o\ : std_logic;
SIGNAL \Rz[2]~output_o\ : std_logic;
SIGNAL \Rz[1]~output_o\ : std_logic;
SIGNAL \Rz[0]~output_o\ : std_logic;
SIGNAL \rz_outputData[15]~output_o\ : std_logic;
SIGNAL \rz_outputData[14]~output_o\ : std_logic;
SIGNAL \rz_outputData[13]~output_o\ : std_logic;
SIGNAL \rz_outputData[12]~output_o\ : std_logic;
SIGNAL \rz_outputData[11]~output_o\ : std_logic;
SIGNAL \rz_outputData[10]~output_o\ : std_logic;
SIGNAL \rz_outputData[9]~output_o\ : std_logic;
SIGNAL \rz_outputData[8]~output_o\ : std_logic;
SIGNAL \rz_outputData[7]~output_o\ : std_logic;
SIGNAL \rz_outputData[6]~output_o\ : std_logic;
SIGNAL \rz_outputData[5]~output_o\ : std_logic;
SIGNAL \rz_outputData[4]~output_o\ : std_logic;
SIGNAL \rz_outputData[3]~output_o\ : std_logic;
SIGNAL \rz_outputData[2]~output_o\ : std_logic;
SIGNAL \rz_outputData[1]~output_o\ : std_logic;
SIGNAL \rz_outputData[0]~output_o\ : std_logic;
SIGNAL \sop_out[15]~output_o\ : std_logic;
SIGNAL \sop_out[14]~output_o\ : std_logic;
SIGNAL \sop_out[13]~output_o\ : std_logic;
SIGNAL \sop_out[12]~output_o\ : std_logic;
SIGNAL \sop_out[11]~output_o\ : std_logic;
SIGNAL \sop_out[10]~output_o\ : std_logic;
SIGNAL \sop_out[9]~output_o\ : std_logic;
SIGNAL \sop_out[8]~output_o\ : std_logic;
SIGNAL \sop_out[7]~output_o\ : std_logic;
SIGNAL \sop_out[6]~output_o\ : std_logic;
SIGNAL \sop_out[5]~output_o\ : std_logic;
SIGNAL \sop_out[4]~output_o\ : std_logic;
SIGNAL \sop_out[3]~output_o\ : std_logic;
SIGNAL \sop_out[2]~output_o\ : std_logic;
SIGNAL \sop_out[1]~output_o\ : std_logic;
SIGNAL \sop_out[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset_in~input_o\ : std_logic;
SIGNAL \inst1|state.T0~0_combout\ : std_logic;
SIGNAL \inst1|state.T0~q\ : std_logic;
SIGNAL \inst1|state~10_combout\ : std_logic;
SIGNAL \inst1|state.T2~q\ : std_logic;
SIGNAL \inst1|state~11_combout\ : std_logic;
SIGNAL \inst1|state.T3~q\ : std_logic;
SIGNAL \inst1|state~12_combout\ : std_logic;
SIGNAL \inst1|state.T4~q\ : std_logic;
SIGNAL \inst1|state~9_combout\ : std_logic;
SIGNAL \inst1|state.T1~q\ : std_logic;
SIGNAL \inst1|state~8_combout\ : std_logic;
SIGNAL \inst1|state.T1A~q\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr1~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][2]~q\ : std_logic;
SIGNAL \inst5|regs[1][3]~q\ : std_logic;
SIGNAL \inst5|regs[4][4]~q\ : std_logic;
SIGNAL \inst5|regs[8][4]~q\ : std_logic;
SIGNAL \instruction_r|t_Am[0]~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~12_combout\ : std_logic;
SIGNAL \inst5|regs[12][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~6_combout\ : std_logic;
SIGNAL \inst5|regs[5][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~9_combout\ : std_logic;
SIGNAL \inst5|regs[9][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~13_combout\ : std_logic;
SIGNAL \inst5|regs[13][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~7_combout\ : std_logic;
SIGNAL \inst5|regs[6][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~10_combout\ : std_logic;
SIGNAL \inst5|regs[10][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~14_combout\ : std_logic;
SIGNAL \inst5|regs[14][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~2_combout\ : std_logic;
SIGNAL \inst5|Decoder0~5_combout\ : std_logic;
SIGNAL \inst5|regs[3][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~0_combout\ : std_logic;
SIGNAL \inst5|regs[7][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~11_combout\ : std_logic;
SIGNAL \inst5|regs[11][4]~q\ : std_logic;
SIGNAL \inst5|Decoder0~15_combout\ : std_logic;
SIGNAL \inst5|regs[15][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~3_combout\ : std_logic;
SIGNAL \inst5|Mux43~4_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst1|Equal8~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Equal12~0_combout\ : std_logic;
SIGNAL \inst1|Mux14~1_combout\ : std_logic;
SIGNAL \inst5|regs[4][10]~q\ : std_logic;
SIGNAL \inst5|regs[8][10]~q\ : std_logic;
SIGNAL \inst5|regs[12][10]~q\ : std_logic;
SIGNAL \inst5|Mux37~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][10]~q\ : std_logic;
SIGNAL \inst5|regs[5][10]~q\ : std_logic;
SIGNAL \inst5|regs[9][10]~q\ : std_logic;
SIGNAL \inst5|regs[13][10]~q\ : std_logic;
SIGNAL \inst5|Mux37~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][10]~q\ : std_logic;
SIGNAL \inst5|regs[6][10]~q\ : std_logic;
SIGNAL \inst5|regs[10][10]~q\ : std_logic;
SIGNAL \inst5|regs[14][10]~q\ : std_logic;
SIGNAL \inst5|Mux37~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][10]~q\ : std_logic;
SIGNAL \inst5|regs[7][10]~q\ : std_logic;
SIGNAL \inst5|regs[11][10]~q\ : std_logic;
SIGNAL \inst5|regs[15][10]~q\ : std_logic;
SIGNAL \inst5|Mux37~3_combout\ : std_logic;
SIGNAL \inst5|Mux37~4_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst2|output_signal[0]~15_combout\ : std_logic;
SIGNAL \program_counter|Add0~57_sumout\ : std_logic;
SIGNAL \program_counter|Add0~58\ : std_logic;
SIGNAL \program_counter|Add0~53_sumout\ : std_logic;
SIGNAL \program_counter|Add0~54\ : std_logic;
SIGNAL \program_counter|Add0~49_sumout\ : std_logic;
SIGNAL \program_counter|Add0~50\ : std_logic;
SIGNAL \program_counter|Add0~45_sumout\ : std_logic;
SIGNAL \program_counter|Add0~46\ : std_logic;
SIGNAL \program_counter|Add0~41_sumout\ : std_logic;
SIGNAL \program_counter|Add0~42\ : std_logic;
SIGNAL \program_counter|Add0~37_sumout\ : std_logic;
SIGNAL \program_counter|Add0~38\ : std_logic;
SIGNAL \program_counter|Add0~33_sumout\ : std_logic;
SIGNAL \program_counter|Add0~34\ : std_logic;
SIGNAL \program_counter|Add0~29_sumout\ : std_logic;
SIGNAL \program_counter|Add0~30\ : std_logic;
SIGNAL \program_counter|Add0~25_sumout\ : std_logic;
SIGNAL \program_counter|Add0~26\ : std_logic;
SIGNAL \program_counter|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|output_signal[10]~5_combout\ : std_logic;
SIGNAL \inst1|Equal15~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[0]~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Equal13~0_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[1]~2_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[1]~3_combout\ : std_logic;
SIGNAL \op2|reg_out~6_combout\ : std_logic;
SIGNAL \inst1|op2_wr~0_combout\ : std_logic;
SIGNAL \inst1|op2_wr~1_combout\ : std_logic;
SIGNAL \inst1|op2_wr~2_combout\ : std_logic;
SIGNAL \op2|reg_out[8]~1_combout\ : std_logic;
SIGNAL \inst5|regs[1][9]~q\ : std_logic;
SIGNAL \inst5|regs[2][9]~q\ : std_logic;
SIGNAL \inst5|regs[3][9]~q\ : std_logic;
SIGNAL \inst5|Mux38~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][9]~q\ : std_logic;
SIGNAL \inst5|regs[5][9]~q\ : std_logic;
SIGNAL \inst5|regs[6][9]~q\ : std_logic;
SIGNAL \inst5|regs[7][9]~q\ : std_logic;
SIGNAL \inst5|Mux38~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][9]~q\ : std_logic;
SIGNAL \inst5|regs[9][9]~q\ : std_logic;
SIGNAL \inst5|regs[10][9]~q\ : std_logic;
SIGNAL \inst5|regs[11][9]~q\ : std_logic;
SIGNAL \inst5|Mux38~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][9]~q\ : std_logic;
SIGNAL \inst5|regs[13][9]~q\ : std_logic;
SIGNAL \inst5|regs[14][9]~q\ : std_logic;
SIGNAL \inst5|regs[15][9]~q\ : std_logic;
SIGNAL \inst5|Mux38~3_combout\ : std_logic;
SIGNAL \inst5|Mux38~4_combout\ : std_logic;
SIGNAL \inst2|output_signal[9]~6_combout\ : std_logic;
SIGNAL \op2|reg_out~7_combout\ : std_logic;
SIGNAL \inst5|regs[4][8]~q\ : std_logic;
SIGNAL \inst5|regs[8][8]~q\ : std_logic;
SIGNAL \inst5|regs[12][8]~q\ : std_logic;
SIGNAL \inst5|Mux39~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][8]~q\ : std_logic;
SIGNAL \inst5|regs[5][8]~q\ : std_logic;
SIGNAL \inst5|regs[9][8]~q\ : std_logic;
SIGNAL \inst5|regs[13][8]~q\ : std_logic;
SIGNAL \inst5|Mux39~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][8]~q\ : std_logic;
SIGNAL \inst5|regs[6][8]~q\ : std_logic;
SIGNAL \inst5|regs[10][8]~q\ : std_logic;
SIGNAL \inst5|regs[14][8]~q\ : std_logic;
SIGNAL \inst5|Mux39~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][8]~q\ : std_logic;
SIGNAL \inst5|regs[7][8]~q\ : std_logic;
SIGNAL \inst5|regs[11][8]~q\ : std_logic;
SIGNAL \inst5|regs[15][8]~q\ : std_logic;
SIGNAL \inst5|Mux39~3_combout\ : std_logic;
SIGNAL \inst5|Mux39~4_combout\ : std_logic;
SIGNAL \inst2|output_signal[8]~7_combout\ : std_logic;
SIGNAL \op2|reg_out~8_combout\ : std_logic;
SIGNAL \inst5|regs[1][7]~q\ : std_logic;
SIGNAL \inst5|regs[2][7]~q\ : std_logic;
SIGNAL \inst5|regs[3][7]~q\ : std_logic;
SIGNAL \inst5|Mux40~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][7]~q\ : std_logic;
SIGNAL \inst5|regs[5][7]~q\ : std_logic;
SIGNAL \inst5|regs[6][7]~q\ : std_logic;
SIGNAL \inst5|regs[7][7]~q\ : std_logic;
SIGNAL \inst5|Mux40~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][7]~q\ : std_logic;
SIGNAL \inst5|regs[9][7]~q\ : std_logic;
SIGNAL \inst5|regs[10][7]~q\ : std_logic;
SIGNAL \inst5|regs[11][7]~q\ : std_logic;
SIGNAL \inst5|Mux40~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][7]~q\ : std_logic;
SIGNAL \inst5|regs[13][7]~q\ : std_logic;
SIGNAL \inst5|regs[14][7]~q\ : std_logic;
SIGNAL \inst5|regs[15][7]~q\ : std_logic;
SIGNAL \inst5|Mux40~3_combout\ : std_logic;
SIGNAL \inst5|Mux40~4_combout\ : std_logic;
SIGNAL \inst2|output_signal[7]~8_combout\ : std_logic;
SIGNAL \op2|reg_out~9_combout\ : std_logic;
SIGNAL \inst5|regs[4][6]~q\ : std_logic;
SIGNAL \inst5|regs[8][6]~q\ : std_logic;
SIGNAL \inst5|regs[12][6]~q\ : std_logic;
SIGNAL \inst5|Mux41~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][6]~q\ : std_logic;
SIGNAL \inst5|regs[5][6]~q\ : std_logic;
SIGNAL \inst5|regs[9][6]~q\ : std_logic;
SIGNAL \inst5|regs[13][6]~q\ : std_logic;
SIGNAL \inst5|Mux41~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][6]~q\ : std_logic;
SIGNAL \inst5|regs[6][6]~q\ : std_logic;
SIGNAL \inst5|regs[10][6]~q\ : std_logic;
SIGNAL \inst5|regs[14][6]~q\ : std_logic;
SIGNAL \inst5|Mux41~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][6]~q\ : std_logic;
SIGNAL \inst5|regs[7][6]~q\ : std_logic;
SIGNAL \inst5|regs[11][6]~q\ : std_logic;
SIGNAL \inst5|regs[15][6]~q\ : std_logic;
SIGNAL \inst5|Mux41~3_combout\ : std_logic;
SIGNAL \inst5|Mux41~4_combout\ : std_logic;
SIGNAL \inst2|output_signal[6]~9_combout\ : std_logic;
SIGNAL \op2|reg_out~10_combout\ : std_logic;
SIGNAL \inst5|regs[1][5]~q\ : std_logic;
SIGNAL \inst5|regs[2][5]~q\ : std_logic;
SIGNAL \inst5|regs[3][5]~q\ : std_logic;
SIGNAL \inst5|Mux42~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][5]~q\ : std_logic;
SIGNAL \inst5|regs[5][5]~q\ : std_logic;
SIGNAL \inst5|regs[6][5]~q\ : std_logic;
SIGNAL \inst5|regs[7][5]~q\ : std_logic;
SIGNAL \inst5|Mux42~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][5]~q\ : std_logic;
SIGNAL \inst5|regs[9][5]~q\ : std_logic;
SIGNAL \inst5|regs[10][5]~q\ : std_logic;
SIGNAL \inst5|regs[11][5]~q\ : std_logic;
SIGNAL \inst5|Mux42~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][5]~q\ : std_logic;
SIGNAL \inst5|regs[13][5]~q\ : std_logic;
SIGNAL \inst5|regs[14][5]~q\ : std_logic;
SIGNAL \inst5|regs[15][5]~q\ : std_logic;
SIGNAL \inst5|Mux42~3_combout\ : std_logic;
SIGNAL \inst5|Mux42~4_combout\ : std_logic;
SIGNAL \inst2|output_signal[5]~10_combout\ : std_logic;
SIGNAL \op2|reg_out~11_combout\ : std_logic;
SIGNAL \inst1|Mux22~0_combout\ : std_logic;
SIGNAL \inst3|Add0~66_cout\ : std_logic;
SIGNAL \inst3|Add0~62\ : std_logic;
SIGNAL \inst3|Add0~58\ : std_logic;
SIGNAL \inst3|Add0~54\ : std_logic;
SIGNAL \inst3|Add0~50\ : std_logic;
SIGNAL \inst3|Add0~46\ : std_logic;
SIGNAL \inst3|Add0~42\ : std_logic;
SIGNAL \inst3|Add0~38\ : std_logic;
SIGNAL \inst3|Add0~34\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|Selector5~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Selector5~2_combout\ : std_logic;
SIGNAL \inst1|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \sip[10]~input_o\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~2_combout\ : std_logic;
SIGNAL \inst5|regs[0][10]~q\ : std_logic;
SIGNAL \inst5|Mux21~0_combout\ : std_logic;
SIGNAL \inst5|Mux21~1_combout\ : std_logic;
SIGNAL \inst5|Mux21~2_combout\ : std_logic;
SIGNAL \inst5|Mux21~3_combout\ : std_logic;
SIGNAL \inst5|Mux21~4_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|alu_op1_sel[0]~0_combout\ : std_logic;
SIGNAL \inst1|alu_op1_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|alu_op1_sel[1]~2_combout\ : std_logic;
SIGNAL \op1|reg_out~6_combout\ : std_logic;
SIGNAL \inst1|op1_wr~0_combout\ : std_logic;
SIGNAL \inst1|op1_wr~1_combout\ : std_logic;
SIGNAL \inst1|op1_wr~2_combout\ : std_logic;
SIGNAL \inst1|op1_wr~3_combout\ : std_logic;
SIGNAL \inst1|op1_wr~4_combout\ : std_logic;
SIGNAL \op1|reg_out[15]~1_combout\ : std_logic;
SIGNAL \inst2|output_signal[1]~14_combout\ : std_logic;
SIGNAL \inst2|output_signal[2]~13_combout\ : std_logic;
SIGNAL \inst2|output_signal[3]~12_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst1|Equal6~0_combout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][11]~q\ : std_logic;
SIGNAL \inst5|regs[2][11]~q\ : std_logic;
SIGNAL \inst5|regs[3][11]~q\ : std_logic;
SIGNAL \inst5|Mux36~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][11]~q\ : std_logic;
SIGNAL \inst5|regs[5][11]~q\ : std_logic;
SIGNAL \inst5|regs[6][11]~q\ : std_logic;
SIGNAL \inst5|regs[7][11]~q\ : std_logic;
SIGNAL \inst5|Mux36~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][11]~q\ : std_logic;
SIGNAL \inst5|regs[9][11]~q\ : std_logic;
SIGNAL \inst5|regs[10][11]~q\ : std_logic;
SIGNAL \inst5|regs[11][11]~q\ : std_logic;
SIGNAL \inst5|Mux36~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][11]~q\ : std_logic;
SIGNAL \inst5|regs[13][11]~q\ : std_logic;
SIGNAL \inst5|regs[14][11]~q\ : std_logic;
SIGNAL \inst5|regs[15][11]~q\ : std_logic;
SIGNAL \inst5|Mux36~3_combout\ : std_logic;
SIGNAL \inst5|Mux36~4_combout\ : std_logic;
SIGNAL \program_counter|Add0~22\ : std_logic;
SIGNAL \program_counter|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|output_signal[11]~4_combout\ : std_logic;
SIGNAL \op2|reg_out~5_combout\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~2_combout\ : std_logic;
SIGNAL \sip[11]~input_o\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][11]~q\ : std_logic;
SIGNAL \inst5|Mux20~0_combout\ : std_logic;
SIGNAL \inst5|Mux20~1_combout\ : std_logic;
SIGNAL \inst5|Mux20~2_combout\ : std_logic;
SIGNAL \inst5|Mux20~3_combout\ : std_logic;
SIGNAL \inst5|Mux20~4_combout\ : std_logic;
SIGNAL \op1|reg_out~5_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst1|Equal16~0_combout\ : std_logic;
SIGNAL \inst2|output_signal[4]~11_combout\ : std_logic;
SIGNAL \op1|reg_out~12_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst3|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|Add0~45_sumout\ : std_logic;
SIGNAL \inst3|Mux11~1_combout\ : std_logic;
SIGNAL \inst3|Mux11~2_combout\ : std_logic;
SIGNAL \inst3|Mux11~3_combout\ : std_logic;
SIGNAL \inst3|Mux11~4_combout\ : std_logic;
SIGNAL \sip[4]~input_o\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst5|Mux11~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][4]~q\ : std_logic;
SIGNAL \inst5|Mux27~0_combout\ : std_logic;
SIGNAL \inst5|Mux27~1_combout\ : std_logic;
SIGNAL \inst5|Mux27~2_combout\ : std_logic;
SIGNAL \inst5|Mux27~3_combout\ : std_logic;
SIGNAL \inst5|Mux27~4_combout\ : std_logic;
SIGNAL \op2|reg_out~12_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst3|Mux10~0_combout\ : std_logic;
SIGNAL \inst3|Add0~41_sumout\ : std_logic;
SIGNAL \inst3|Mux10~1_combout\ : std_logic;
SIGNAL \inst3|Mux10~2_combout\ : std_logic;
SIGNAL \inst3|Mux10~3_combout\ : std_logic;
SIGNAL \inst3|Mux10~4_combout\ : std_logic;
SIGNAL \sip[5]~input_o\ : std_logic;
SIGNAL \inst5|Mux10~0_combout\ : std_logic;
SIGNAL \inst5|Mux10~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][5]~q\ : std_logic;
SIGNAL \inst5|Mux26~0_combout\ : std_logic;
SIGNAL \inst5|Mux26~1_combout\ : std_logic;
SIGNAL \inst5|Mux26~2_combout\ : std_logic;
SIGNAL \inst5|Mux26~3_combout\ : std_logic;
SIGNAL \inst5|Mux26~4_combout\ : std_logic;
SIGNAL \op1|reg_out~11_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst5|Decoder0~4_combout\ : std_logic;
SIGNAL \inst5|regs[2][3]~q\ : std_logic;
SIGNAL \inst5|regs[3][3]~q\ : std_logic;
SIGNAL \inst5|Mux44~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][3]~q\ : std_logic;
SIGNAL \inst5|regs[5][3]~q\ : std_logic;
SIGNAL \inst5|regs[6][3]~q\ : std_logic;
SIGNAL \inst5|regs[7][3]~q\ : std_logic;
SIGNAL \inst5|Mux44~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][3]~q\ : std_logic;
SIGNAL \inst5|regs[9][3]~q\ : std_logic;
SIGNAL \inst5|regs[10][3]~q\ : std_logic;
SIGNAL \inst5|regs[11][3]~q\ : std_logic;
SIGNAL \inst5|Mux44~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][3]~q\ : std_logic;
SIGNAL \inst5|regs[13][3]~q\ : std_logic;
SIGNAL \inst5|regs[14][3]~q\ : std_logic;
SIGNAL \inst5|regs[15][3]~q\ : std_logic;
SIGNAL \inst5|Mux44~3_combout\ : std_logic;
SIGNAL \inst5|Mux44~4_combout\ : std_logic;
SIGNAL \op1|reg_out~13_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst3|Mux12~0_combout\ : std_logic;
SIGNAL \inst3|Add0~49_sumout\ : std_logic;
SIGNAL \inst3|Mux12~1_combout\ : std_logic;
SIGNAL \inst3|Mux12~2_combout\ : std_logic;
SIGNAL \inst3|Mux12~3_combout\ : std_logic;
SIGNAL \inst3|Mux12~4_combout\ : std_logic;
SIGNAL \sip[3]~input_o\ : std_logic;
SIGNAL \inst5|Mux12~0_combout\ : std_logic;
SIGNAL \inst5|Mux12~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][3]~q\ : std_logic;
SIGNAL \inst5|Mux28~0_combout\ : std_logic;
SIGNAL \inst5|Mux28~1_combout\ : std_logic;
SIGNAL \inst5|Mux28~2_combout\ : std_logic;
SIGNAL \inst5|Mux28~3_combout\ : std_logic;
SIGNAL \inst5|Mux28~4_combout\ : std_logic;
SIGNAL \op2|reg_out~13_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst3|Mux9~0_combout\ : std_logic;
SIGNAL \inst3|Add0~37_sumout\ : std_logic;
SIGNAL \inst3|Mux9~1_combout\ : std_logic;
SIGNAL \inst3|Mux9~2_combout\ : std_logic;
SIGNAL \inst3|Mux9~3_combout\ : std_logic;
SIGNAL \inst3|Mux9~4_combout\ : std_logic;
SIGNAL \sip[6]~input_o\ : std_logic;
SIGNAL \inst5|Mux9~1_combout\ : std_logic;
SIGNAL \inst5|Mux9~2_combout\ : std_logic;
SIGNAL \inst5|regs[0][6]~q\ : std_logic;
SIGNAL \inst5|Mux25~0_combout\ : std_logic;
SIGNAL \inst5|Mux25~1_combout\ : std_logic;
SIGNAL \inst5|Mux25~2_combout\ : std_logic;
SIGNAL \inst5|Mux25~3_combout\ : std_logic;
SIGNAL \inst5|Mux25~4_combout\ : std_logic;
SIGNAL \op1|reg_out~10_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst5|Decoder0~8_combout\ : std_logic;
SIGNAL \inst5|regs[8][2]~q\ : std_logic;
SIGNAL \inst5|regs[12][2]~q\ : std_logic;
SIGNAL \inst5|Mux45~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][2]~q\ : std_logic;
SIGNAL \inst5|regs[5][2]~q\ : std_logic;
SIGNAL \inst5|regs[9][2]~q\ : std_logic;
SIGNAL \inst5|regs[13][2]~q\ : std_logic;
SIGNAL \inst5|Mux45~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][2]~q\ : std_logic;
SIGNAL \inst5|regs[6][2]~q\ : std_logic;
SIGNAL \inst5|regs[10][2]~q\ : std_logic;
SIGNAL \inst5|regs[14][2]~q\ : std_logic;
SIGNAL \inst5|Mux45~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][2]~q\ : std_logic;
SIGNAL \inst5|regs[7][2]~q\ : std_logic;
SIGNAL \inst5|regs[11][2]~q\ : std_logic;
SIGNAL \inst5|regs[15][2]~q\ : std_logic;
SIGNAL \inst5|Mux45~3_combout\ : std_logic;
SIGNAL \inst5|Mux45~4_combout\ : std_logic;
SIGNAL \op1|reg_out~14_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst3|Mux13~0_combout\ : std_logic;
SIGNAL \inst3|Add0~53_sumout\ : std_logic;
SIGNAL \inst3|Mux13~1_combout\ : std_logic;
SIGNAL \inst3|Mux13~2_combout\ : std_logic;
SIGNAL \inst3|Mux13~3_combout\ : std_logic;
SIGNAL \inst3|Mux13~4_combout\ : std_logic;
SIGNAL \sip[2]~input_o\ : std_logic;
SIGNAL \inst5|Mux13~0_combout\ : std_logic;
SIGNAL \inst5|Mux13~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][2]~q\ : std_logic;
SIGNAL \inst5|Mux29~0_combout\ : std_logic;
SIGNAL \inst5|Mux29~1_combout\ : std_logic;
SIGNAL \inst5|Mux29~2_combout\ : std_logic;
SIGNAL \inst5|Mux29~3_combout\ : std_logic;
SIGNAL \inst5|Mux29~4_combout\ : std_logic;
SIGNAL \op2|reg_out~14_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst3|Mux8~0_combout\ : std_logic;
SIGNAL \inst3|Add0~33_sumout\ : std_logic;
SIGNAL \inst3|Mux8~1_combout\ : std_logic;
SIGNAL \inst3|Mux8~2_combout\ : std_logic;
SIGNAL \inst3|Mux8~3_combout\ : std_logic;
SIGNAL \inst3|Mux8~4_combout\ : std_logic;
SIGNAL \sip[7]~input_o\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|Mux8~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][7]~q\ : std_logic;
SIGNAL \inst5|Mux24~0_combout\ : std_logic;
SIGNAL \inst5|Mux24~1_combout\ : std_logic;
SIGNAL \inst5|Mux24~2_combout\ : std_logic;
SIGNAL \inst5|Mux24~3_combout\ : std_logic;
SIGNAL \inst5|Mux24~4_combout\ : std_logic;
SIGNAL \op1|reg_out~9_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst5|Decoder0~3_combout\ : std_logic;
SIGNAL \inst5|regs[1][1]~q\ : std_logic;
SIGNAL \inst5|regs[2][1]~q\ : std_logic;
SIGNAL \inst5|regs[3][1]~q\ : std_logic;
SIGNAL \inst5|Mux46~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][1]~q\ : std_logic;
SIGNAL \inst5|regs[5][1]~q\ : std_logic;
SIGNAL \inst5|regs[6][1]~q\ : std_logic;
SIGNAL \inst5|regs[7][1]~q\ : std_logic;
SIGNAL \inst5|Mux46~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][1]~q\ : std_logic;
SIGNAL \inst5|regs[9][1]~q\ : std_logic;
SIGNAL \inst5|regs[10][1]~q\ : std_logic;
SIGNAL \inst5|regs[11][1]~q\ : std_logic;
SIGNAL \inst5|Mux46~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][1]~q\ : std_logic;
SIGNAL \inst5|regs[13][1]~q\ : std_logic;
SIGNAL \inst5|regs[14][1]~q\ : std_logic;
SIGNAL \inst5|regs[15][1]~q\ : std_logic;
SIGNAL \inst5|Mux46~3_combout\ : std_logic;
SIGNAL \inst5|Mux46~4_combout\ : std_logic;
SIGNAL \op1|reg_out~15_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst3|Add0~57_sumout\ : std_logic;
SIGNAL \inst3|Mux14~0_combout\ : std_logic;
SIGNAL \sip[1]~input_o\ : std_logic;
SIGNAL \inst5|Mux14~0_combout\ : std_logic;
SIGNAL \inst5|Mux14~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][1]~q\ : std_logic;
SIGNAL \inst5|Mux30~0_combout\ : std_logic;
SIGNAL \inst5|Mux30~1_combout\ : std_logic;
SIGNAL \inst5|Mux30~2_combout\ : std_logic;
SIGNAL \inst5|Mux30~3_combout\ : std_logic;
SIGNAL \inst5|Mux30~4_combout\ : std_logic;
SIGNAL \op2|reg_out~15_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst5|regs[4][12]~q\ : std_logic;
SIGNAL \inst5|regs[8][12]~q\ : std_logic;
SIGNAL \inst5|regs[12][12]~q\ : std_logic;
SIGNAL \inst5|Mux35~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][12]~q\ : std_logic;
SIGNAL \inst5|regs[5][12]~q\ : std_logic;
SIGNAL \inst5|regs[9][12]~q\ : std_logic;
SIGNAL \inst5|regs[13][12]~q\ : std_logic;
SIGNAL \inst5|Mux35~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][12]~q\ : std_logic;
SIGNAL \inst5|regs[6][12]~q\ : std_logic;
SIGNAL \inst5|regs[10][12]~q\ : std_logic;
SIGNAL \inst5|regs[14][12]~q\ : std_logic;
SIGNAL \inst5|Mux35~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][12]~q\ : std_logic;
SIGNAL \inst5|regs[7][12]~q\ : std_logic;
SIGNAL \inst5|regs[11][12]~q\ : std_logic;
SIGNAL \inst5|regs[15][12]~q\ : std_logic;
SIGNAL \inst5|Mux35~3_combout\ : std_logic;
SIGNAL \inst5|Mux35~4_combout\ : std_logic;
SIGNAL \program_counter|Add0~18\ : std_logic;
SIGNAL \program_counter|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|output_signal[12]~3_combout\ : std_logic;
SIGNAL \op2|reg_out~4_combout\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~2_combout\ : std_logic;
SIGNAL \sip[12]~input_o\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][12]~q\ : std_logic;
SIGNAL \inst5|Mux19~0_combout\ : std_logic;
SIGNAL \inst5|Mux19~1_combout\ : std_logic;
SIGNAL \inst5|Mux19~2_combout\ : std_logic;
SIGNAL \inst5|Mux19~3_combout\ : std_logic;
SIGNAL \inst5|Mux19~4_combout\ : std_logic;
SIGNAL \op1|reg_out~4_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst1|ld_r~0_combout\ : std_logic;
SIGNAL \inst1|ld_r~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~1_combout\ : std_logic;
SIGNAL \inst5|regs[4][0]~q\ : std_logic;
SIGNAL \inst5|regs[8][0]~q\ : std_logic;
SIGNAL \inst5|regs[12][0]~q\ : std_logic;
SIGNAL \inst5|Mux47~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][0]~q\ : std_logic;
SIGNAL \inst5|regs[5][0]~q\ : std_logic;
SIGNAL \inst5|regs[9][0]~q\ : std_logic;
SIGNAL \inst5|regs[13][0]~q\ : std_logic;
SIGNAL \inst5|Mux47~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][0]~q\ : std_logic;
SIGNAL \inst5|regs[6][0]~q\ : std_logic;
SIGNAL \inst5|regs[10][0]~q\ : std_logic;
SIGNAL \inst5|regs[14][0]~q\ : std_logic;
SIGNAL \inst5|Mux47~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][0]~q\ : std_logic;
SIGNAL \inst5|regs[7][0]~q\ : std_logic;
SIGNAL \inst5|regs[11][0]~q\ : std_logic;
SIGNAL \inst5|regs[15][0]~q\ : std_logic;
SIGNAL \inst5|Mux47~3_combout\ : std_logic;
SIGNAL \inst5|Mux47~4_combout\ : std_logic;
SIGNAL \op1|reg_out~16_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst3|Add0~61_sumout\ : std_logic;
SIGNAL \inst3|Mux15~0_combout\ : std_logic;
SIGNAL \sip[0]~input_o\ : std_logic;
SIGNAL \inst5|Mux15~0_combout\ : std_logic;
SIGNAL \inst5|Mux15~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][0]~q\ : std_logic;
SIGNAL \inst5|Mux31~0_combout\ : std_logic;
SIGNAL \inst5|Mux31~1_combout\ : std_logic;
SIGNAL \inst5|Mux31~2_combout\ : std_logic;
SIGNAL \inst5|Mux31~3_combout\ : std_logic;
SIGNAL \inst5|Mux31~4_combout\ : std_logic;
SIGNAL \op2|reg_out~16_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Mux6~2_combout\ : std_logic;
SIGNAL \sip[9]~input_o\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][9]~q\ : std_logic;
SIGNAL \inst5|Mux22~0_combout\ : std_logic;
SIGNAL \inst5|Mux22~1_combout\ : std_logic;
SIGNAL \inst5|Mux22~2_combout\ : std_logic;
SIGNAL \inst5|Mux22~3_combout\ : std_logic;
SIGNAL \inst5|Mux22~4_combout\ : std_logic;
SIGNAL \op1|reg_out~7_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst1|Mux18~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst5|regs[1][13]~q\ : std_logic;
SIGNAL \inst5|regs[2][13]~q\ : std_logic;
SIGNAL \inst5|regs[3][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][13]~q\ : std_logic;
SIGNAL \inst5|regs[5][13]~q\ : std_logic;
SIGNAL \inst5|regs[6][13]~q\ : std_logic;
SIGNAL \inst5|regs[7][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][13]~q\ : std_logic;
SIGNAL \inst5|regs[9][13]~q\ : std_logic;
SIGNAL \inst5|regs[10][13]~q\ : std_logic;
SIGNAL \inst5|regs[11][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][13]~q\ : std_logic;
SIGNAL \inst5|regs[13][13]~q\ : std_logic;
SIGNAL \inst5|regs[14][13]~q\ : std_logic;
SIGNAL \inst5|regs[15][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~3_combout\ : std_logic;
SIGNAL \inst5|Mux34~4_combout\ : std_logic;
SIGNAL \program_counter|Add0~14\ : std_logic;
SIGNAL \program_counter|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|output_signal[13]~2_combout\ : std_logic;
SIGNAL \op2|reg_out~3_combout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Mux2~2_combout\ : std_logic;
SIGNAL \sip[13]~input_o\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][13]~q\ : std_logic;
SIGNAL \inst5|Mux18~0_combout\ : std_logic;
SIGNAL \inst5|Mux18~1_combout\ : std_logic;
SIGNAL \inst5|Mux18~2_combout\ : std_logic;
SIGNAL \inst5|Mux18~3_combout\ : std_logic;
SIGNAL \inst5|Mux18~4_combout\ : std_logic;
SIGNAL \op1|reg_out~3_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst1|ld_r~2_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst3|Mux7~2_combout\ : std_logic;
SIGNAL \inst3|Mux7~3_combout\ : std_logic;
SIGNAL \inst3|Mux7~4_combout\ : std_logic;
SIGNAL \sip[8]~input_o\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][8]~q\ : std_logic;
SIGNAL \inst5|Mux23~0_combout\ : std_logic;
SIGNAL \inst5|Mux23~1_combout\ : std_logic;
SIGNAL \inst5|Mux23~2_combout\ : std_logic;
SIGNAL \inst5|Mux23~3_combout\ : std_logic;
SIGNAL \inst5|Mux23~4_combout\ : std_logic;
SIGNAL \op1|reg_out~8_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst1|Equal14~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst5|regs[4][14]~q\ : std_logic;
SIGNAL \inst5|regs[8][14]~q\ : std_logic;
SIGNAL \inst5|regs[12][14]~q\ : std_logic;
SIGNAL \inst5|Mux33~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][14]~q\ : std_logic;
SIGNAL \inst5|regs[5][14]~q\ : std_logic;
SIGNAL \inst5|regs[9][14]~q\ : std_logic;
SIGNAL \inst5|regs[13][14]~q\ : std_logic;
SIGNAL \inst5|Mux33~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][14]~q\ : std_logic;
SIGNAL \inst5|regs[6][14]~q\ : std_logic;
SIGNAL \inst5|regs[10][14]~q\ : std_logic;
SIGNAL \inst5|regs[14][14]~q\ : std_logic;
SIGNAL \inst5|Mux33~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][14]~q\ : std_logic;
SIGNAL \inst5|regs[7][14]~q\ : std_logic;
SIGNAL \inst5|regs[11][14]~q\ : std_logic;
SIGNAL \inst5|regs[15][14]~q\ : std_logic;
SIGNAL \inst5|Mux33~3_combout\ : std_logic;
SIGNAL \inst5|Mux33~4_combout\ : std_logic;
SIGNAL \program_counter|Add0~10\ : std_logic;
SIGNAL \program_counter|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|output_signal[14]~1_combout\ : std_logic;
SIGNAL \op2|reg_out~2_combout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~2_combout\ : std_logic;
SIGNAL \sip[14]~input_o\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][14]~q\ : std_logic;
SIGNAL \inst5|Mux17~0_combout\ : std_logic;
SIGNAL \inst5|Mux17~1_combout\ : std_logic;
SIGNAL \inst5|Mux17~2_combout\ : std_logic;
SIGNAL \inst5|Mux17~3_combout\ : std_logic;
SIGNAL \inst5|Mux17~4_combout\ : std_logic;
SIGNAL \op1|reg_out~2_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst5|regs[1][15]~q\ : std_logic;
SIGNAL \inst5|regs[2][15]~q\ : std_logic;
SIGNAL \inst5|regs[3][15]~q\ : std_logic;
SIGNAL \inst5|Mux32~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][15]~q\ : std_logic;
SIGNAL \inst5|regs[5][15]~q\ : std_logic;
SIGNAL \inst5|regs[6][15]~q\ : std_logic;
SIGNAL \inst5|regs[7][15]~q\ : std_logic;
SIGNAL \inst5|Mux32~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][15]~q\ : std_logic;
SIGNAL \inst5|regs[9][15]~q\ : std_logic;
SIGNAL \inst5|regs[10][15]~q\ : std_logic;
SIGNAL \inst5|regs[11][15]~q\ : std_logic;
SIGNAL \inst5|Mux32~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][15]~q\ : std_logic;
SIGNAL \inst5|regs[13][15]~q\ : std_logic;
SIGNAL \inst5|regs[14][15]~q\ : std_logic;
SIGNAL \inst5|regs[15][15]~q\ : std_logic;
SIGNAL \inst5|Mux32~3_combout\ : std_logic;
SIGNAL \inst5|Mux32~4_combout\ : std_logic;
SIGNAL \program_counter|Add0~6\ : std_logic;
SIGNAL \program_counter|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|output_signal[15]~0_combout\ : std_logic;
SIGNAL \op2|reg_out~0_combout\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|Mux0~4_combout\ : std_logic;
SIGNAL \sip[15]~input_o\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~3_combout\ : std_logic;
SIGNAL \inst5|regs[0][15]~q\ : std_logic;
SIGNAL \inst5|Mux16~0_combout\ : std_logic;
SIGNAL \inst5|Mux16~1_combout\ : std_logic;
SIGNAL \inst5|Mux16~2_combout\ : std_logic;
SIGNAL \inst5|Mux16~3_combout\ : std_logic;
SIGNAL \inst5|Mux16~4_combout\ : std_logic;
SIGNAL \op1|reg_out~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|op2_wr~3_combout\ : std_logic;
SIGNAL \inst1|op1_wr~5_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|currentSignal[2]~0_combout\ : std_logic;
SIGNAL \inst1|currentSignal[1]~1_combout\ : std_logic;
SIGNAL \inst1|currentSignal[0]~2_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Selector12~0_combout\ : std_logic;
SIGNAL \inst1|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|Selector13~0_combout\ : std_logic;
SIGNAL \inst9|dpcr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \op1|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \op2|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_Am\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \program_counter|tempAddress\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \program_counter|tempIncr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_Rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_r|t_Rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|sop\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|sip_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_in~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \op2|ALT_INV_reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \op1|ALT_INV_reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_currentSignal[2]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ld_r~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ld_r~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T4~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_op1_wr~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op1_wr~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op1_wr~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op1_wr~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op1_wr~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op2_wr~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op2_wr~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op2_wr~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|ALT_INV_state.T2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1~q\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Am\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALT_INV_state.T1A~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][15]~q\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_regs[4][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][13]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][14]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[7][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][6]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux24~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][7]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][8]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][9]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][10]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux32~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux32~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux32~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][0]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][1]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][2]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][3]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux27~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[14][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[13][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[12][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[10][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[9][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[6][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[5][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[0]~15_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[1]~14_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[2]~13_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[3]~12_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[4]~11_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[5]~10_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[6]~9_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[7]~8_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[8]~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[9]~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[10]~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[11]~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[12]~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[13]~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[14]~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[15]~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux47~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux47~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux47~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux46~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux46~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux46~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux45~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux45~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux45~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux44~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux44~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux44~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux43~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux42~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux42~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux41~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux41~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux40~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux39~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux39~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux38~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux37~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux36~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux36~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux35~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux35~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux34~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux34~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux33~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_sip_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ld_r~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[1]~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[1]~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[0]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op1_sel[1]~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op1_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op1_sel[0]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

write_pc <= ww_write_pc;
ww_clk <= clk;
ww_reset_in <= reset_in;
AM <= ww_AM;
ir_wr <= ww_ir_wr;
ir_reset <= ww_ir_reset;
ir_operand_set <= ww_ir_operand_set;
op2_wr <= ww_op2_wr;
reset_pc <= ww_reset_pc;
op1_wr <= ww_op1_wr;
Operand <= ww_Operand;
pc_mux_sel <= ww_pc_mux_sel;
ww_sip <= sip;
instAddr <= ww_instAddr;
OPCode <= ww_OPCode;
load_reg <= ww_load_reg;
alu_outputpin <= ww_alu_outputpin;
currentState <= ww_currentState;
dpcr <= ww_dpcr;
incrAddr <= ww_incrAddr;
instruction <= ww_instruction;
op1OUT <= ww_op1OUT;
op2OUT <= ww_op2OUT;
r7_outputData <= ww_r7_outputData;
reg4_output <= ww_reg4_output;
Rx <= ww_Rx;
rx_outputData <= ww_rx_outputData;
Rz <= ww_Rz;
rz_outputData <= ww_rz_outputData;
sop_out <= ww_sop_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \op1|reg_out\(15);

\inst|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \op1|reg_out\(14);

\inst|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \op1|reg_out\(13);

\inst|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \op1|reg_out\(12);

\inst|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \op1|reg_out\(11);

\inst|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \op1|reg_out\(10);

\inst|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \op1|reg_out\(9);

\inst|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \op1|reg_out\(8);

\inst|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \op1|reg_out\(7);

\inst|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \op1|reg_out\(6);

\inst|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \op1|reg_out\(5);

\inst|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \op1|reg_out\(4);

\inst|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \op1|reg_out\(3);

\inst|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \op1|reg_out\(2);

\inst|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \op1|reg_out\(1);

\inst|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \op1|reg_out\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & \program_counter|tempIncr\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \op1|reg_out\(15);

\inst|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \op1|reg_out\(14);

\inst|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \op1|reg_out\(13);

\inst|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \op1|reg_out\(12);

\inst|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \op1|reg_out\(11);

\inst|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \op1|reg_out\(10);

\inst|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \op1|reg_out\(9);

\inst|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \op1|reg_out\(8);

\inst|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \op1|reg_out\(7);

\inst|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \op1|reg_out\(6);

\inst|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \op1|reg_out\(5);

\inst|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \op1|reg_out\(4);

\inst|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \op1|reg_out\(3);

\inst|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \op1|reg_out\(2);

\inst|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \op1|reg_out\(1);

\inst|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \op1|reg_out\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_reset_in~input_o\ <= NOT \reset_in~input_o\;
\inst3|ALT_INV_Add0~57_sumout\ <= NOT \inst3|Add0~57_sumout\;
\inst3|ALT_INV_Add0~53_sumout\ <= NOT \inst3|Add0~53_sumout\;
\inst3|ALT_INV_Add0~49_sumout\ <= NOT \inst3|Add0~49_sumout\;
\inst3|ALT_INV_Add0~45_sumout\ <= NOT \inst3|Add0~45_sumout\;
\inst3|ALT_INV_Add0~41_sumout\ <= NOT \inst3|Add0~41_sumout\;
\inst3|ALT_INV_Add0~37_sumout\ <= NOT \inst3|Add0~37_sumout\;
\inst3|ALT_INV_Add0~33_sumout\ <= NOT \inst3|Add0~33_sumout\;
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\op2|ALT_INV_reg_out\(0) <= NOT \op2|reg_out\(0);
\op2|ALT_INV_reg_out\(1) <= NOT \op2|reg_out\(1);
\op2|ALT_INV_reg_out\(2) <= NOT \op2|reg_out\(2);
\op2|ALT_INV_reg_out\(3) <= NOT \op2|reg_out\(3);
\op2|ALT_INV_reg_out\(4) <= NOT \op2|reg_out\(4);
\op2|ALT_INV_reg_out\(5) <= NOT \op2|reg_out\(5);
\op2|ALT_INV_reg_out\(6) <= NOT \op2|reg_out\(6);
\op2|ALT_INV_reg_out\(7) <= NOT \op2|reg_out\(7);
\op2|ALT_INV_reg_out\(8) <= NOT \op2|reg_out\(8);
\op2|ALT_INV_reg_out\(9) <= NOT \op2|reg_out\(9);
\op2|ALT_INV_reg_out\(10) <= NOT \op2|reg_out\(10);
\op2|ALT_INV_reg_out\(11) <= NOT \op2|reg_out\(11);
\op2|ALT_INV_reg_out\(12) <= NOT \op2|reg_out\(12);
\op2|ALT_INV_reg_out\(13) <= NOT \op2|reg_out\(13);
\op2|ALT_INV_reg_out\(14) <= NOT \op2|reg_out\(14);
\op2|ALT_INV_reg_out\(15) <= NOT \op2|reg_out\(15);
\op1|ALT_INV_reg_out\(0) <= NOT \op1|reg_out\(0);
\op1|ALT_INV_reg_out\(1) <= NOT \op1|reg_out\(1);
\op1|ALT_INV_reg_out\(2) <= NOT \op1|reg_out\(2);
\op1|ALT_INV_reg_out\(3) <= NOT \op1|reg_out\(3);
\op1|ALT_INV_reg_out\(4) <= NOT \op1|reg_out\(4);
\op1|ALT_INV_reg_out\(5) <= NOT \op1|reg_out\(5);
\op1|ALT_INV_reg_out\(6) <= NOT \op1|reg_out\(6);
\op1|ALT_INV_reg_out\(7) <= NOT \op1|reg_out\(7);
\op1|ALT_INV_reg_out\(8) <= NOT \op1|reg_out\(8);
\op1|ALT_INV_reg_out\(9) <= NOT \op1|reg_out\(9);
\op1|ALT_INV_reg_out\(10) <= NOT \op1|reg_out\(10);
\op1|ALT_INV_reg_out\(11) <= NOT \op1|reg_out\(11);
\op1|ALT_INV_reg_out\(12) <= NOT \op1|reg_out\(12);
\op1|ALT_INV_reg_out\(13) <= NOT \op1|reg_out\(13);
\op1|ALT_INV_reg_out\(14) <= NOT \op1|reg_out\(14);
\op1|ALT_INV_reg_out\(15) <= NOT \op1|reg_out\(15);
\inst1|ALT_INV_currentSignal[2]~0_combout\ <= NOT \inst1|currentSignal[2]~0_combout\;
\inst1|ALT_INV_ld_r~1_combout\ <= NOT \inst1|ld_r~1_combout\;
\inst1|ALT_INV_ld_r~0_combout\ <= NOT \inst1|ld_r~0_combout\;
\inst1|ALT_INV_Mux18~0_combout\ <= NOT \inst1|Mux18~0_combout\;
\program_counter|ALT_INV_tempIncr\(0) <= NOT \program_counter|tempIncr\(0);
\inst1|ALT_INV_WideOr1~0_combout\ <= NOT \inst1|WideOr1~0_combout\;
\inst1|ALT_INV_state.T4~q\ <= NOT \inst1|state.T4~q\;
\inst1|ALT_INV_state.T3~q\ <= NOT \inst1|state.T3~q\;
\inst1|ALT_INV_Equal16~0_combout\ <= NOT \inst1|Equal16~0_combout\;
\instruction_r|ALT_INV_t_Operand\(0) <= NOT \instruction_r|t_Operand\(0);
\instruction_r|ALT_INV_t_Operand\(1) <= NOT \instruction_r|t_Operand\(1);
\instruction_r|ALT_INV_t_Operand\(2) <= NOT \instruction_r|t_Operand\(2);
\instruction_r|ALT_INV_t_Operand\(3) <= NOT \instruction_r|t_Operand\(3);
\instruction_r|ALT_INV_t_Operand\(4) <= NOT \instruction_r|t_Operand\(4);
\instruction_r|ALT_INV_t_Operand\(5) <= NOT \instruction_r|t_Operand\(5);
\instruction_r|ALT_INV_t_Operand\(6) <= NOT \instruction_r|t_Operand\(6);
\instruction_r|ALT_INV_t_Operand\(7) <= NOT \instruction_r|t_Operand\(7);
\instruction_r|ALT_INV_t_Operand\(8) <= NOT \instruction_r|t_Operand\(8);
\instruction_r|ALT_INV_t_Operand\(9) <= NOT \instruction_r|t_Operand\(9);
\instruction_r|ALT_INV_t_Operand\(10) <= NOT \instruction_r|t_Operand\(10);
\instruction_r|ALT_INV_t_Operand\(11) <= NOT \instruction_r|t_Operand\(11);
\instruction_r|ALT_INV_t_Operand\(12) <= NOT \instruction_r|t_Operand\(12);
\instruction_r|ALT_INV_t_Operand\(13) <= NOT \instruction_r|t_Operand\(13);
\instruction_r|ALT_INV_t_Operand\(14) <= NOT \instruction_r|t_Operand\(14);
\instruction_r|ALT_INV_t_Operand\(15) <= NOT \instruction_r|t_Operand\(15);
\inst1|ALT_INV_op1_wr~4_combout\ <= NOT \inst1|op1_wr~4_combout\;
\inst1|ALT_INV_Equal14~0_combout\ <= NOT \inst1|Equal14~0_combout\;
\inst1|ALT_INV_op1_wr~3_combout\ <= NOT \inst1|op1_wr~3_combout\;
\inst1|ALT_INV_op1_wr~2_combout\ <= NOT \inst1|op1_wr~2_combout\;
\inst1|ALT_INV_op1_wr~1_combout\ <= NOT \inst1|op1_wr~1_combout\;
\inst1|ALT_INV_op1_wr~0_combout\ <= NOT \inst1|op1_wr~0_combout\;
\inst1|ALT_INV_op2_wr~2_combout\ <= NOT \inst1|op2_wr~2_combout\;
\inst1|ALT_INV_op2_wr~1_combout\ <= NOT \inst1|op2_wr~1_combout\;
\inst1|ALT_INV_Equal2~0_combout\ <= NOT \inst1|Equal2~0_combout\;
\inst1|ALT_INV_op2_wr~0_combout\ <= NOT \inst1|op2_wr~0_combout\;
\inst1|ALT_INV_Equal15~0_combout\ <= NOT \inst1|Equal15~0_combout\;
\instruction_r|ALT_INV_t_OP\(2) <= NOT \instruction_r|t_OP\(2);
\instruction_r|ALT_INV_t_OP\(3) <= NOT \instruction_r|t_OP\(3);
\instruction_r|ALT_INV_t_OP\(4) <= NOT \instruction_r|t_OP\(4);
\instruction_r|ALT_INV_t_OP\(1) <= NOT \instruction_r|t_OP\(1);
\instruction_r|ALT_INV_t_OP\(5) <= NOT \instruction_r|t_OP\(5);
\instruction_r|ALT_INV_t_OP\(0) <= NOT \instruction_r|t_OP\(0);
\inst1|ALT_INV_state.T2~q\ <= NOT \inst1|state.T2~q\;
\inst1|ALT_INV_state.T0~q\ <= NOT \inst1|state.T0~q\;
\inst1|ALT_INV_state.T1~q\ <= NOT \inst1|state.T1~q\;
\instruction_r|ALT_INV_t_Am\(0) <= NOT \instruction_r|t_Am\(0);
\instruction_r|ALT_INV_t_Am\(1) <= NOT \instruction_r|t_Am\(1);
\inst1|ALT_INV_state.T1A~q\ <= NOT \inst1|state.T1A~q\;
\inst3|ALT_INV_Mux14~0_combout\ <= NOT \inst3|Mux14~0_combout\;
\inst3|ALT_INV_Mux15~0_combout\ <= NOT \inst3|Mux15~0_combout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a8~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a9~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a10~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a11~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a12~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a13~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a14~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\;
\inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a15~portbdataout\ <= NOT \inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\;
\inst3|ALT_INV_Add0~61_sumout\ <= NOT \inst3|Add0~61_sumout\;
\inst5|ALT_INV_regs[12][12]~q\ <= NOT \inst5|regs[12][12]~q\;
\inst5|ALT_INV_regs[8][12]~q\ <= NOT \inst5|regs[8][12]~q\;
\inst5|ALT_INV_regs[0][12]~q\ <= NOT \inst5|regs[0][12]~q\;
\inst5|ALT_INV_Mux18~4_combout\ <= NOT \inst5|Mux18~4_combout\;
\inst5|ALT_INV_Mux18~3_combout\ <= NOT \inst5|Mux18~3_combout\;
\inst5|ALT_INV_regs[15][13]~q\ <= NOT \inst5|regs[15][13]~q\;
\inst5|ALT_INV_regs[14][13]~q\ <= NOT \inst5|regs[14][13]~q\;
\inst5|ALT_INV_regs[13][13]~q\ <= NOT \inst5|regs[13][13]~q\;
\inst5|ALT_INV_regs[12][13]~q\ <= NOT \inst5|regs[12][13]~q\;
\inst5|ALT_INV_Mux18~2_combout\ <= NOT \inst5|Mux18~2_combout\;
\inst5|ALT_INV_regs[11][13]~q\ <= NOT \inst5|regs[11][13]~q\;
\inst5|ALT_INV_regs[10][13]~q\ <= NOT \inst5|regs[10][13]~q\;
\inst5|ALT_INV_regs[9][13]~q\ <= NOT \inst5|regs[9][13]~q\;
\inst5|ALT_INV_regs[8][13]~q\ <= NOT \inst5|regs[8][13]~q\;
\inst5|ALT_INV_Mux18~1_combout\ <= NOT \inst5|Mux18~1_combout\;
\inst5|ALT_INV_regs[6][13]~q\ <= NOT \inst5|regs[6][13]~q\;
\inst5|ALT_INV_regs[5][13]~q\ <= NOT \inst5|regs[5][13]~q\;
\inst5|ALT_INV_Mux18~0_combout\ <= NOT \inst5|Mux18~0_combout\;
\inst5|ALT_INV_regs[3][13]~q\ <= NOT \inst5|regs[3][13]~q\;
\inst5|ALT_INV_regs[2][13]~q\ <= NOT \inst5|regs[2][13]~q\;
\inst5|ALT_INV_regs[1][13]~q\ <= NOT \inst5|regs[1][13]~q\;
\inst5|ALT_INV_regs[0][13]~q\ <= NOT \inst5|regs[0][13]~q\;
\inst5|ALT_INV_Mux17~4_combout\ <= NOT \inst5|Mux17~4_combout\;
\inst5|ALT_INV_Mux17~3_combout\ <= NOT \inst5|Mux17~3_combout\;
\inst5|ALT_INV_regs[15][14]~q\ <= NOT \inst5|regs[15][14]~q\;
\inst5|ALT_INV_regs[11][14]~q\ <= NOT \inst5|regs[11][14]~q\;
\inst5|ALT_INV_regs[3][14]~q\ <= NOT \inst5|regs[3][14]~q\;
\inst5|ALT_INV_Mux17~2_combout\ <= NOT \inst5|Mux17~2_combout\;
\inst5|ALT_INV_regs[14][14]~q\ <= NOT \inst5|regs[14][14]~q\;
\inst5|ALT_INV_regs[10][14]~q\ <= NOT \inst5|regs[10][14]~q\;
\inst5|ALT_INV_regs[6][14]~q\ <= NOT \inst5|regs[6][14]~q\;
\inst5|ALT_INV_regs[2][14]~q\ <= NOT \inst5|regs[2][14]~q\;
\inst5|ALT_INV_Mux17~1_combout\ <= NOT \inst5|Mux17~1_combout\;
\inst5|ALT_INV_regs[13][14]~q\ <= NOT \inst5|regs[13][14]~q\;
\inst5|ALT_INV_regs[9][14]~q\ <= NOT \inst5|regs[9][14]~q\;
\inst5|ALT_INV_regs[5][14]~q\ <= NOT \inst5|regs[5][14]~q\;
\inst5|ALT_INV_regs[1][14]~q\ <= NOT \inst5|regs[1][14]~q\;
\inst5|ALT_INV_Mux17~0_combout\ <= NOT \inst5|Mux17~0_combout\;
\inst5|ALT_INV_regs[12][14]~q\ <= NOT \inst5|regs[12][14]~q\;
\inst5|ALT_INV_regs[8][14]~q\ <= NOT \inst5|regs[8][14]~q\;
\inst5|ALT_INV_regs[0][14]~q\ <= NOT \inst5|regs[0][14]~q\;
\inst5|ALT_INV_Mux16~4_combout\ <= NOT \inst5|Mux16~4_combout\;
\inst5|ALT_INV_Mux16~3_combout\ <= NOT \inst5|Mux16~3_combout\;
\inst5|ALT_INV_regs[15][15]~q\ <= NOT \inst5|regs[15][15]~q\;
\inst5|ALT_INV_regs[14][15]~q\ <= NOT \inst5|regs[14][15]~q\;
\inst5|ALT_INV_regs[13][15]~q\ <= NOT \inst5|regs[13][15]~q\;
\inst5|ALT_INV_regs[12][15]~q\ <= NOT \inst5|regs[12][15]~q\;
\inst5|ALT_INV_Mux16~2_combout\ <= NOT \inst5|Mux16~2_combout\;
\inst5|ALT_INV_regs[11][15]~q\ <= NOT \inst5|regs[11][15]~q\;
\inst5|ALT_INV_regs[10][15]~q\ <= NOT \inst5|regs[10][15]~q\;
\inst5|ALT_INV_regs[9][15]~q\ <= NOT \inst5|regs[9][15]~q\;
\inst5|ALT_INV_regs[8][15]~q\ <= NOT \inst5|regs[8][15]~q\;
\inst5|ALT_INV_Mux16~1_combout\ <= NOT \inst5|Mux16~1_combout\;
\inst5|ALT_INV_regs[6][15]~q\ <= NOT \inst5|regs[6][15]~q\;
\inst5|ALT_INV_regs[5][15]~q\ <= NOT \inst5|regs[5][15]~q\;
\inst5|ALT_INV_Mux16~0_combout\ <= NOT \inst5|Mux16~0_combout\;
\inst5|ALT_INV_regs[3][15]~q\ <= NOT \inst5|regs[3][15]~q\;
\inst5|ALT_INV_regs[2][15]~q\ <= NOT \inst5|regs[2][15]~q\;
\inst5|ALT_INV_regs[1][15]~q\ <= NOT \inst5|regs[1][15]~q\;
\inst5|ALT_INV_regs[0][15]~q\ <= NOT \inst5|regs[0][15]~q\;
\instruction_r|ALT_INV_t_Rx\(0) <= NOT \instruction_r|t_Rx\(0);
\instruction_r|ALT_INV_t_Rx\(1) <= NOT \instruction_r|t_Rx\(1);
\instruction_r|ALT_INV_t_Rx\(2) <= NOT \instruction_r|t_Rx\(2);
\instruction_r|ALT_INV_t_Rx\(3) <= NOT \instruction_r|t_Rx\(3);
\inst5|ALT_INV_regs[4][0]~q\ <= NOT \inst5|regs[4][0]~q\;
\inst5|ALT_INV_regs[4][1]~q\ <= NOT \inst5|regs[4][1]~q\;
\inst5|ALT_INV_regs[4][2]~q\ <= NOT \inst5|regs[4][2]~q\;
\inst5|ALT_INV_regs[4][3]~q\ <= NOT \inst5|regs[4][3]~q\;
\inst5|ALT_INV_regs[4][4]~q\ <= NOT \inst5|regs[4][4]~q\;
\inst5|ALT_INV_regs[4][5]~q\ <= NOT \inst5|regs[4][5]~q\;
\inst5|ALT_INV_regs[4][6]~q\ <= NOT \inst5|regs[4][6]~q\;
\inst5|ALT_INV_regs[4][7]~q\ <= NOT \inst5|regs[4][7]~q\;
\inst5|ALT_INV_regs[4][8]~q\ <= NOT \inst5|regs[4][8]~q\;
\inst5|ALT_INV_regs[4][9]~q\ <= NOT \inst5|regs[4][9]~q\;
\inst5|ALT_INV_regs[4][10]~q\ <= NOT \inst5|regs[4][10]~q\;
\inst5|ALT_INV_regs[4][11]~q\ <= NOT \inst5|regs[4][11]~q\;
\inst5|ALT_INV_regs[4][12]~q\ <= NOT \inst5|regs[4][12]~q\;
\inst5|ALT_INV_regs[4][13]~q\ <= NOT \inst5|regs[4][13]~q\;
\inst5|ALT_INV_regs[4][14]~q\ <= NOT \inst5|regs[4][14]~q\;
\inst5|ALT_INV_regs[4][15]~q\ <= NOT \inst5|regs[4][15]~q\;
\inst5|ALT_INV_regs[7][0]~q\ <= NOT \inst5|regs[7][0]~q\;
\inst5|ALT_INV_regs[7][1]~q\ <= NOT \inst5|regs[7][1]~q\;
\inst5|ALT_INV_regs[7][2]~q\ <= NOT \inst5|regs[7][2]~q\;
\inst5|ALT_INV_regs[7][3]~q\ <= NOT \inst5|regs[7][3]~q\;
\inst5|ALT_INV_regs[7][4]~q\ <= NOT \inst5|regs[7][4]~q\;
\inst5|ALT_INV_regs[7][5]~q\ <= NOT \inst5|regs[7][5]~q\;
\inst5|ALT_INV_regs[7][6]~q\ <= NOT \inst5|regs[7][6]~q\;
\inst5|ALT_INV_regs[7][7]~q\ <= NOT \inst5|regs[7][7]~q\;
\inst5|ALT_INV_regs[7][8]~q\ <= NOT \inst5|regs[7][8]~q\;
\inst5|ALT_INV_regs[7][9]~q\ <= NOT \inst5|regs[7][9]~q\;
\inst5|ALT_INV_regs[7][10]~q\ <= NOT \inst5|regs[7][10]~q\;
\inst5|ALT_INV_regs[7][11]~q\ <= NOT \inst5|regs[7][11]~q\;
\inst5|ALT_INV_regs[7][12]~q\ <= NOT \inst5|regs[7][12]~q\;
\inst5|ALT_INV_regs[7][13]~q\ <= NOT \inst5|regs[7][13]~q\;
\inst5|ALT_INV_regs[7][14]~q\ <= NOT \inst5|regs[7][14]~q\;
\inst5|ALT_INV_regs[7][15]~q\ <= NOT \inst5|regs[7][15]~q\;
\program_counter|ALT_INV_tempIncr\(1) <= NOT \program_counter|tempIncr\(1);
\program_counter|ALT_INV_tempIncr\(2) <= NOT \program_counter|tempIncr\(2);
\program_counter|ALT_INV_tempIncr\(3) <= NOT \program_counter|tempIncr\(3);
\program_counter|ALT_INV_tempIncr\(4) <= NOT \program_counter|tempIncr\(4);
\program_counter|ALT_INV_tempIncr\(5) <= NOT \program_counter|tempIncr\(5);
\program_counter|ALT_INV_tempIncr\(6) <= NOT \program_counter|tempIncr\(6);
\program_counter|ALT_INV_tempIncr\(7) <= NOT \program_counter|tempIncr\(7);
\program_counter|ALT_INV_tempIncr\(8) <= NOT \program_counter|tempIncr\(8);
\program_counter|ALT_INV_tempIncr\(9) <= NOT \program_counter|tempIncr\(9);
\program_counter|ALT_INV_tempIncr\(10) <= NOT \program_counter|tempIncr\(10);
\program_counter|ALT_INV_tempIncr\(11) <= NOT \program_counter|tempIncr\(11);
\program_counter|ALT_INV_tempIncr\(12) <= NOT \program_counter|tempIncr\(12);
\program_counter|ALT_INV_tempIncr\(13) <= NOT \program_counter|tempIncr\(13);
\program_counter|ALT_INV_tempIncr\(14) <= NOT \program_counter|tempIncr\(14);
\program_counter|ALT_INV_tempIncr\(15) <= NOT \program_counter|tempIncr\(15);
\inst5|ALT_INV_regs[11][6]~q\ <= NOT \inst5|regs[11][6]~q\;
\inst5|ALT_INV_regs[3][6]~q\ <= NOT \inst5|regs[3][6]~q\;
\inst5|ALT_INV_Mux25~2_combout\ <= NOT \inst5|Mux25~2_combout\;
\inst5|ALT_INV_regs[14][6]~q\ <= NOT \inst5|regs[14][6]~q\;
\inst5|ALT_INV_regs[10][6]~q\ <= NOT \inst5|regs[10][6]~q\;
\inst5|ALT_INV_regs[6][6]~q\ <= NOT \inst5|regs[6][6]~q\;
\inst5|ALT_INV_regs[2][6]~q\ <= NOT \inst5|regs[2][6]~q\;
\inst5|ALT_INV_Mux25~1_combout\ <= NOT \inst5|Mux25~1_combout\;
\inst5|ALT_INV_regs[13][6]~q\ <= NOT \inst5|regs[13][6]~q\;
\inst5|ALT_INV_regs[9][6]~q\ <= NOT \inst5|regs[9][6]~q\;
\inst5|ALT_INV_regs[5][6]~q\ <= NOT \inst5|regs[5][6]~q\;
\inst5|ALT_INV_regs[1][6]~q\ <= NOT \inst5|regs[1][6]~q\;
\inst5|ALT_INV_Mux25~0_combout\ <= NOT \inst5|Mux25~0_combout\;
\inst5|ALT_INV_regs[12][6]~q\ <= NOT \inst5|regs[12][6]~q\;
\inst5|ALT_INV_regs[8][6]~q\ <= NOT \inst5|regs[8][6]~q\;
\inst5|ALT_INV_regs[0][6]~q\ <= NOT \inst5|regs[0][6]~q\;
\inst5|ALT_INV_Mux24~4_combout\ <= NOT \inst5|Mux24~4_combout\;
\inst5|ALT_INV_Mux24~3_combout\ <= NOT \inst5|Mux24~3_combout\;
\inst5|ALT_INV_regs[15][7]~q\ <= NOT \inst5|regs[15][7]~q\;
\inst5|ALT_INV_regs[14][7]~q\ <= NOT \inst5|regs[14][7]~q\;
\inst5|ALT_INV_regs[13][7]~q\ <= NOT \inst5|regs[13][7]~q\;
\inst5|ALT_INV_regs[12][7]~q\ <= NOT \inst5|regs[12][7]~q\;
\inst5|ALT_INV_Mux24~2_combout\ <= NOT \inst5|Mux24~2_combout\;
\inst5|ALT_INV_regs[11][7]~q\ <= NOT \inst5|regs[11][7]~q\;
\inst5|ALT_INV_regs[10][7]~q\ <= NOT \inst5|regs[10][7]~q\;
\inst5|ALT_INV_regs[9][7]~q\ <= NOT \inst5|regs[9][7]~q\;
\inst5|ALT_INV_regs[8][7]~q\ <= NOT \inst5|regs[8][7]~q\;
\inst5|ALT_INV_Mux24~1_combout\ <= NOT \inst5|Mux24~1_combout\;
\inst5|ALT_INV_regs[6][7]~q\ <= NOT \inst5|regs[6][7]~q\;
\inst5|ALT_INV_regs[5][7]~q\ <= NOT \inst5|regs[5][7]~q\;
\inst5|ALT_INV_Mux24~0_combout\ <= NOT \inst5|Mux24~0_combout\;
\inst5|ALT_INV_regs[3][7]~q\ <= NOT \inst5|regs[3][7]~q\;
\inst5|ALT_INV_regs[2][7]~q\ <= NOT \inst5|regs[2][7]~q\;
\inst5|ALT_INV_regs[1][7]~q\ <= NOT \inst5|regs[1][7]~q\;
\inst5|ALT_INV_regs[0][7]~q\ <= NOT \inst5|regs[0][7]~q\;
\inst5|ALT_INV_Mux23~4_combout\ <= NOT \inst5|Mux23~4_combout\;
\inst5|ALT_INV_Mux23~3_combout\ <= NOT \inst5|Mux23~3_combout\;
\inst5|ALT_INV_regs[15][8]~q\ <= NOT \inst5|regs[15][8]~q\;
\inst5|ALT_INV_regs[11][8]~q\ <= NOT \inst5|regs[11][8]~q\;
\inst5|ALT_INV_regs[3][8]~q\ <= NOT \inst5|regs[3][8]~q\;
\inst5|ALT_INV_Mux23~2_combout\ <= NOT \inst5|Mux23~2_combout\;
\inst5|ALT_INV_regs[14][8]~q\ <= NOT \inst5|regs[14][8]~q\;
\inst5|ALT_INV_regs[10][8]~q\ <= NOT \inst5|regs[10][8]~q\;
\inst5|ALT_INV_regs[6][8]~q\ <= NOT \inst5|regs[6][8]~q\;
\inst5|ALT_INV_regs[2][8]~q\ <= NOT \inst5|regs[2][8]~q\;
\inst5|ALT_INV_Mux23~1_combout\ <= NOT \inst5|Mux23~1_combout\;
\inst5|ALT_INV_regs[13][8]~q\ <= NOT \inst5|regs[13][8]~q\;
\inst5|ALT_INV_regs[9][8]~q\ <= NOT \inst5|regs[9][8]~q\;
\inst5|ALT_INV_regs[5][8]~q\ <= NOT \inst5|regs[5][8]~q\;
\inst5|ALT_INV_regs[1][8]~q\ <= NOT \inst5|regs[1][8]~q\;
\inst5|ALT_INV_Mux23~0_combout\ <= NOT \inst5|Mux23~0_combout\;
\inst5|ALT_INV_regs[12][8]~q\ <= NOT \inst5|regs[12][8]~q\;
\inst5|ALT_INV_regs[8][8]~q\ <= NOT \inst5|regs[8][8]~q\;
\inst5|ALT_INV_regs[0][8]~q\ <= NOT \inst5|regs[0][8]~q\;
\inst5|ALT_INV_Mux22~4_combout\ <= NOT \inst5|Mux22~4_combout\;
\inst5|ALT_INV_Mux22~3_combout\ <= NOT \inst5|Mux22~3_combout\;
\inst5|ALT_INV_regs[15][9]~q\ <= NOT \inst5|regs[15][9]~q\;
\inst5|ALT_INV_regs[14][9]~q\ <= NOT \inst5|regs[14][9]~q\;
\inst5|ALT_INV_regs[13][9]~q\ <= NOT \inst5|regs[13][9]~q\;
\inst5|ALT_INV_regs[12][9]~q\ <= NOT \inst5|regs[12][9]~q\;
\inst5|ALT_INV_Mux22~2_combout\ <= NOT \inst5|Mux22~2_combout\;
\inst5|ALT_INV_regs[11][9]~q\ <= NOT \inst5|regs[11][9]~q\;
\inst5|ALT_INV_regs[10][9]~q\ <= NOT \inst5|regs[10][9]~q\;
\inst5|ALT_INV_regs[9][9]~q\ <= NOT \inst5|regs[9][9]~q\;
\inst5|ALT_INV_regs[8][9]~q\ <= NOT \inst5|regs[8][9]~q\;
\inst5|ALT_INV_Mux22~1_combout\ <= NOT \inst5|Mux22~1_combout\;
\inst5|ALT_INV_regs[6][9]~q\ <= NOT \inst5|regs[6][9]~q\;
\inst5|ALT_INV_regs[5][9]~q\ <= NOT \inst5|regs[5][9]~q\;
\inst5|ALT_INV_Mux22~0_combout\ <= NOT \inst5|Mux22~0_combout\;
\inst5|ALT_INV_regs[3][9]~q\ <= NOT \inst5|regs[3][9]~q\;
\inst5|ALT_INV_regs[2][9]~q\ <= NOT \inst5|regs[2][9]~q\;
\inst5|ALT_INV_regs[1][9]~q\ <= NOT \inst5|regs[1][9]~q\;
\inst5|ALT_INV_regs[0][9]~q\ <= NOT \inst5|regs[0][9]~q\;
\inst5|ALT_INV_Mux21~4_combout\ <= NOT \inst5|Mux21~4_combout\;
\inst5|ALT_INV_Mux21~3_combout\ <= NOT \inst5|Mux21~3_combout\;
\inst5|ALT_INV_regs[15][10]~q\ <= NOT \inst5|regs[15][10]~q\;
\inst5|ALT_INV_regs[11][10]~q\ <= NOT \inst5|regs[11][10]~q\;
\inst5|ALT_INV_regs[3][10]~q\ <= NOT \inst5|regs[3][10]~q\;
\inst5|ALT_INV_Mux21~2_combout\ <= NOT \inst5|Mux21~2_combout\;
\inst5|ALT_INV_regs[14][10]~q\ <= NOT \inst5|regs[14][10]~q\;
\inst5|ALT_INV_regs[10][10]~q\ <= NOT \inst5|regs[10][10]~q\;
\inst5|ALT_INV_regs[6][10]~q\ <= NOT \inst5|regs[6][10]~q\;
\inst5|ALT_INV_regs[2][10]~q\ <= NOT \inst5|regs[2][10]~q\;
\inst5|ALT_INV_Mux21~1_combout\ <= NOT \inst5|Mux21~1_combout\;
\inst5|ALT_INV_regs[13][10]~q\ <= NOT \inst5|regs[13][10]~q\;
\inst5|ALT_INV_regs[9][10]~q\ <= NOT \inst5|regs[9][10]~q\;
\inst5|ALT_INV_regs[5][10]~q\ <= NOT \inst5|regs[5][10]~q\;
\inst5|ALT_INV_regs[1][10]~q\ <= NOT \inst5|regs[1][10]~q\;
\inst5|ALT_INV_Mux21~0_combout\ <= NOT \inst5|Mux21~0_combout\;
\inst5|ALT_INV_regs[12][10]~q\ <= NOT \inst5|regs[12][10]~q\;
\inst5|ALT_INV_regs[8][10]~q\ <= NOT \inst5|regs[8][10]~q\;
\inst5|ALT_INV_regs[0][10]~q\ <= NOT \inst5|regs[0][10]~q\;
\inst5|ALT_INV_Mux20~4_combout\ <= NOT \inst5|Mux20~4_combout\;
\inst5|ALT_INV_Mux20~3_combout\ <= NOT \inst5|Mux20~3_combout\;
\inst5|ALT_INV_regs[15][11]~q\ <= NOT \inst5|regs[15][11]~q\;
\inst5|ALT_INV_regs[14][11]~q\ <= NOT \inst5|regs[14][11]~q\;
\inst5|ALT_INV_regs[13][11]~q\ <= NOT \inst5|regs[13][11]~q\;
\inst5|ALT_INV_regs[12][11]~q\ <= NOT \inst5|regs[12][11]~q\;
\inst5|ALT_INV_Mux20~2_combout\ <= NOT \inst5|Mux20~2_combout\;
\inst5|ALT_INV_regs[11][11]~q\ <= NOT \inst5|regs[11][11]~q\;
\inst5|ALT_INV_regs[10][11]~q\ <= NOT \inst5|regs[10][11]~q\;
\inst5|ALT_INV_regs[9][11]~q\ <= NOT \inst5|regs[9][11]~q\;
\inst5|ALT_INV_regs[8][11]~q\ <= NOT \inst5|regs[8][11]~q\;
\inst5|ALT_INV_Mux20~1_combout\ <= NOT \inst5|Mux20~1_combout\;
\inst5|ALT_INV_regs[6][11]~q\ <= NOT \inst5|regs[6][11]~q\;
\inst5|ALT_INV_regs[5][11]~q\ <= NOT \inst5|regs[5][11]~q\;
\inst5|ALT_INV_Mux20~0_combout\ <= NOT \inst5|Mux20~0_combout\;
\inst5|ALT_INV_regs[3][11]~q\ <= NOT \inst5|regs[3][11]~q\;
\inst5|ALT_INV_regs[2][11]~q\ <= NOT \inst5|regs[2][11]~q\;
\inst5|ALT_INV_regs[1][11]~q\ <= NOT \inst5|regs[1][11]~q\;
\inst5|ALT_INV_regs[0][11]~q\ <= NOT \inst5|regs[0][11]~q\;
\inst5|ALT_INV_Mux19~4_combout\ <= NOT \inst5|Mux19~4_combout\;
\inst5|ALT_INV_Mux19~3_combout\ <= NOT \inst5|Mux19~3_combout\;
\inst5|ALT_INV_regs[15][12]~q\ <= NOT \inst5|regs[15][12]~q\;
\inst5|ALT_INV_regs[11][12]~q\ <= NOT \inst5|regs[11][12]~q\;
\inst5|ALT_INV_regs[3][12]~q\ <= NOT \inst5|regs[3][12]~q\;
\inst5|ALT_INV_Mux19~2_combout\ <= NOT \inst5|Mux19~2_combout\;
\inst5|ALT_INV_regs[14][12]~q\ <= NOT \inst5|regs[14][12]~q\;
\inst5|ALT_INV_regs[10][12]~q\ <= NOT \inst5|regs[10][12]~q\;
\inst5|ALT_INV_regs[6][12]~q\ <= NOT \inst5|regs[6][12]~q\;
\inst5|ALT_INV_regs[2][12]~q\ <= NOT \inst5|regs[2][12]~q\;
\inst5|ALT_INV_Mux19~1_combout\ <= NOT \inst5|Mux19~1_combout\;
\inst5|ALT_INV_regs[13][12]~q\ <= NOT \inst5|regs[13][12]~q\;
\inst5|ALT_INV_regs[9][12]~q\ <= NOT \inst5|regs[9][12]~q\;
\inst5|ALT_INV_regs[5][12]~q\ <= NOT \inst5|regs[5][12]~q\;
\inst5|ALT_INV_regs[1][12]~q\ <= NOT \inst5|regs[1][12]~q\;
\inst5|ALT_INV_Mux19~0_combout\ <= NOT \inst5|Mux19~0_combout\;
\inst5|ALT_INV_Mux32~4_combout\ <= NOT \inst5|Mux32~4_combout\;
\inst5|ALT_INV_Mux32~3_combout\ <= NOT \inst5|Mux32~3_combout\;
\inst5|ALT_INV_Mux32~2_combout\ <= NOT \inst5|Mux32~2_combout\;
\inst5|ALT_INV_Mux32~1_combout\ <= NOT \inst5|Mux32~1_combout\;
\inst5|ALT_INV_Mux32~0_combout\ <= NOT \inst5|Mux32~0_combout\;
\instruction_r|ALT_INV_t_Rz\(0) <= NOT \instruction_r|t_Rz\(0);
\instruction_r|ALT_INV_t_Rz\(1) <= NOT \instruction_r|t_Rz\(1);
\instruction_r|ALT_INV_t_Rz\(2) <= NOT \instruction_r|t_Rz\(2);
\instruction_r|ALT_INV_t_Rz\(3) <= NOT \instruction_r|t_Rz\(3);
\inst5|ALT_INV_Mux31~4_combout\ <= NOT \inst5|Mux31~4_combout\;
\inst5|ALT_INV_Mux31~3_combout\ <= NOT \inst5|Mux31~3_combout\;
\inst5|ALT_INV_regs[15][0]~q\ <= NOT \inst5|regs[15][0]~q\;
\inst5|ALT_INV_regs[11][0]~q\ <= NOT \inst5|regs[11][0]~q\;
\inst5|ALT_INV_regs[3][0]~q\ <= NOT \inst5|regs[3][0]~q\;
\inst5|ALT_INV_Mux31~2_combout\ <= NOT \inst5|Mux31~2_combout\;
\inst5|ALT_INV_regs[14][0]~q\ <= NOT \inst5|regs[14][0]~q\;
\inst5|ALT_INV_regs[10][0]~q\ <= NOT \inst5|regs[10][0]~q\;
\inst5|ALT_INV_regs[6][0]~q\ <= NOT \inst5|regs[6][0]~q\;
\inst5|ALT_INV_regs[2][0]~q\ <= NOT \inst5|regs[2][0]~q\;
\inst5|ALT_INV_Mux31~1_combout\ <= NOT \inst5|Mux31~1_combout\;
\inst5|ALT_INV_regs[13][0]~q\ <= NOT \inst5|regs[13][0]~q\;
\inst5|ALT_INV_regs[9][0]~q\ <= NOT \inst5|regs[9][0]~q\;
\inst5|ALT_INV_regs[5][0]~q\ <= NOT \inst5|regs[5][0]~q\;
\inst5|ALT_INV_regs[1][0]~q\ <= NOT \inst5|regs[1][0]~q\;
\inst5|ALT_INV_Mux31~0_combout\ <= NOT \inst5|Mux31~0_combout\;
\inst5|ALT_INV_regs[12][0]~q\ <= NOT \inst5|regs[12][0]~q\;
\inst5|ALT_INV_regs[8][0]~q\ <= NOT \inst5|regs[8][0]~q\;
\inst5|ALT_INV_regs[0][0]~q\ <= NOT \inst5|regs[0][0]~q\;
\inst5|ALT_INV_Mux30~4_combout\ <= NOT \inst5|Mux30~4_combout\;
\inst5|ALT_INV_Mux30~3_combout\ <= NOT \inst5|Mux30~3_combout\;
\inst5|ALT_INV_regs[15][1]~q\ <= NOT \inst5|regs[15][1]~q\;
\inst5|ALT_INV_regs[14][1]~q\ <= NOT \inst5|regs[14][1]~q\;
\inst5|ALT_INV_regs[13][1]~q\ <= NOT \inst5|regs[13][1]~q\;
\inst5|ALT_INV_regs[12][1]~q\ <= NOT \inst5|regs[12][1]~q\;
\inst5|ALT_INV_Mux30~2_combout\ <= NOT \inst5|Mux30~2_combout\;
\inst5|ALT_INV_regs[11][1]~q\ <= NOT \inst5|regs[11][1]~q\;
\inst5|ALT_INV_regs[10][1]~q\ <= NOT \inst5|regs[10][1]~q\;
\inst5|ALT_INV_regs[9][1]~q\ <= NOT \inst5|regs[9][1]~q\;
\inst5|ALT_INV_regs[8][1]~q\ <= NOT \inst5|regs[8][1]~q\;
\inst5|ALT_INV_Mux30~1_combout\ <= NOT \inst5|Mux30~1_combout\;
\inst5|ALT_INV_regs[6][1]~q\ <= NOT \inst5|regs[6][1]~q\;
\inst5|ALT_INV_regs[5][1]~q\ <= NOT \inst5|regs[5][1]~q\;
\inst5|ALT_INV_Mux30~0_combout\ <= NOT \inst5|Mux30~0_combout\;
\inst5|ALT_INV_regs[3][1]~q\ <= NOT \inst5|regs[3][1]~q\;
\inst5|ALT_INV_regs[2][1]~q\ <= NOT \inst5|regs[2][1]~q\;
\inst5|ALT_INV_regs[1][1]~q\ <= NOT \inst5|regs[1][1]~q\;
\inst5|ALT_INV_regs[0][1]~q\ <= NOT \inst5|regs[0][1]~q\;
\inst5|ALT_INV_Mux29~4_combout\ <= NOT \inst5|Mux29~4_combout\;
\inst5|ALT_INV_Mux29~3_combout\ <= NOT \inst5|Mux29~3_combout\;
\inst5|ALT_INV_regs[15][2]~q\ <= NOT \inst5|regs[15][2]~q\;
\inst5|ALT_INV_regs[11][2]~q\ <= NOT \inst5|regs[11][2]~q\;
\inst5|ALT_INV_regs[3][2]~q\ <= NOT \inst5|regs[3][2]~q\;
\inst5|ALT_INV_Mux29~2_combout\ <= NOT \inst5|Mux29~2_combout\;
\inst5|ALT_INV_regs[14][2]~q\ <= NOT \inst5|regs[14][2]~q\;
\inst5|ALT_INV_regs[10][2]~q\ <= NOT \inst5|regs[10][2]~q\;
\inst5|ALT_INV_regs[6][2]~q\ <= NOT \inst5|regs[6][2]~q\;
\inst5|ALT_INV_regs[2][2]~q\ <= NOT \inst5|regs[2][2]~q\;
\inst5|ALT_INV_Mux29~1_combout\ <= NOT \inst5|Mux29~1_combout\;
\inst5|ALT_INV_regs[13][2]~q\ <= NOT \inst5|regs[13][2]~q\;
\inst5|ALT_INV_regs[9][2]~q\ <= NOT \inst5|regs[9][2]~q\;
\inst5|ALT_INV_regs[5][2]~q\ <= NOT \inst5|regs[5][2]~q\;
\inst5|ALT_INV_regs[1][2]~q\ <= NOT \inst5|regs[1][2]~q\;
\inst5|ALT_INV_Mux29~0_combout\ <= NOT \inst5|Mux29~0_combout\;
\inst5|ALT_INV_regs[12][2]~q\ <= NOT \inst5|regs[12][2]~q\;
\inst5|ALT_INV_regs[8][2]~q\ <= NOT \inst5|regs[8][2]~q\;
\inst5|ALT_INV_regs[0][2]~q\ <= NOT \inst5|regs[0][2]~q\;
\inst5|ALT_INV_Mux28~4_combout\ <= NOT \inst5|Mux28~4_combout\;
\inst5|ALT_INV_Mux28~3_combout\ <= NOT \inst5|Mux28~3_combout\;
\inst5|ALT_INV_regs[15][3]~q\ <= NOT \inst5|regs[15][3]~q\;
\inst5|ALT_INV_regs[14][3]~q\ <= NOT \inst5|regs[14][3]~q\;
\inst5|ALT_INV_regs[13][3]~q\ <= NOT \inst5|regs[13][3]~q\;
\inst5|ALT_INV_regs[12][3]~q\ <= NOT \inst5|regs[12][3]~q\;
\inst5|ALT_INV_Mux28~2_combout\ <= NOT \inst5|Mux28~2_combout\;
\inst5|ALT_INV_regs[11][3]~q\ <= NOT \inst5|regs[11][3]~q\;
\inst5|ALT_INV_regs[10][3]~q\ <= NOT \inst5|regs[10][3]~q\;
\inst5|ALT_INV_regs[9][3]~q\ <= NOT \inst5|regs[9][3]~q\;
\inst5|ALT_INV_regs[8][3]~q\ <= NOT \inst5|regs[8][3]~q\;
\inst5|ALT_INV_Mux28~1_combout\ <= NOT \inst5|Mux28~1_combout\;
\inst5|ALT_INV_regs[6][3]~q\ <= NOT \inst5|regs[6][3]~q\;
\inst5|ALT_INV_regs[5][3]~q\ <= NOT \inst5|regs[5][3]~q\;
\inst5|ALT_INV_Mux28~0_combout\ <= NOT \inst5|Mux28~0_combout\;
\inst5|ALT_INV_regs[3][3]~q\ <= NOT \inst5|regs[3][3]~q\;
\inst5|ALT_INV_regs[2][3]~q\ <= NOT \inst5|regs[2][3]~q\;
\inst5|ALT_INV_regs[1][3]~q\ <= NOT \inst5|regs[1][3]~q\;
\inst5|ALT_INV_regs[0][3]~q\ <= NOT \inst5|regs[0][3]~q\;
\inst5|ALT_INV_Mux27~4_combout\ <= NOT \inst5|Mux27~4_combout\;
\inst5|ALT_INV_Mux27~3_combout\ <= NOT \inst5|Mux27~3_combout\;
\inst5|ALT_INV_regs[15][4]~q\ <= NOT \inst5|regs[15][4]~q\;
\inst5|ALT_INV_regs[11][4]~q\ <= NOT \inst5|regs[11][4]~q\;
\inst5|ALT_INV_regs[3][4]~q\ <= NOT \inst5|regs[3][4]~q\;
\inst5|ALT_INV_Mux27~2_combout\ <= NOT \inst5|Mux27~2_combout\;
\inst5|ALT_INV_regs[14][4]~q\ <= NOT \inst5|regs[14][4]~q\;
\inst5|ALT_INV_regs[10][4]~q\ <= NOT \inst5|regs[10][4]~q\;
\inst5|ALT_INV_regs[6][4]~q\ <= NOT \inst5|regs[6][4]~q\;
\inst5|ALT_INV_regs[2][4]~q\ <= NOT \inst5|regs[2][4]~q\;
\inst5|ALT_INV_Mux27~1_combout\ <= NOT \inst5|Mux27~1_combout\;
\inst5|ALT_INV_regs[13][4]~q\ <= NOT \inst5|regs[13][4]~q\;
\inst5|ALT_INV_regs[9][4]~q\ <= NOT \inst5|regs[9][4]~q\;
\inst5|ALT_INV_regs[5][4]~q\ <= NOT \inst5|regs[5][4]~q\;
\inst5|ALT_INV_regs[1][4]~q\ <= NOT \inst5|regs[1][4]~q\;
\inst5|ALT_INV_Mux27~0_combout\ <= NOT \inst5|Mux27~0_combout\;
\inst5|ALT_INV_regs[12][4]~q\ <= NOT \inst5|regs[12][4]~q\;
\inst5|ALT_INV_regs[8][4]~q\ <= NOT \inst5|regs[8][4]~q\;
\inst5|ALT_INV_regs[0][4]~q\ <= NOT \inst5|regs[0][4]~q\;
\inst5|ALT_INV_Mux26~4_combout\ <= NOT \inst5|Mux26~4_combout\;
\inst5|ALT_INV_Mux26~3_combout\ <= NOT \inst5|Mux26~3_combout\;
\inst5|ALT_INV_regs[15][5]~q\ <= NOT \inst5|regs[15][5]~q\;
\inst5|ALT_INV_regs[14][5]~q\ <= NOT \inst5|regs[14][5]~q\;
\inst5|ALT_INV_regs[13][5]~q\ <= NOT \inst5|regs[13][5]~q\;
\inst5|ALT_INV_regs[12][5]~q\ <= NOT \inst5|regs[12][5]~q\;
\inst5|ALT_INV_Mux26~2_combout\ <= NOT \inst5|Mux26~2_combout\;
\inst5|ALT_INV_regs[11][5]~q\ <= NOT \inst5|regs[11][5]~q\;
\inst5|ALT_INV_regs[10][5]~q\ <= NOT \inst5|regs[10][5]~q\;
\inst5|ALT_INV_regs[9][5]~q\ <= NOT \inst5|regs[9][5]~q\;
\inst5|ALT_INV_regs[8][5]~q\ <= NOT \inst5|regs[8][5]~q\;
\inst5|ALT_INV_Mux26~1_combout\ <= NOT \inst5|Mux26~1_combout\;
\inst5|ALT_INV_regs[6][5]~q\ <= NOT \inst5|regs[6][5]~q\;
\inst5|ALT_INV_regs[5][5]~q\ <= NOT \inst5|regs[5][5]~q\;
\inst5|ALT_INV_Mux26~0_combout\ <= NOT \inst5|Mux26~0_combout\;
\inst5|ALT_INV_regs[3][5]~q\ <= NOT \inst5|regs[3][5]~q\;
\inst5|ALT_INV_regs[2][5]~q\ <= NOT \inst5|regs[2][5]~q\;
\inst5|ALT_INV_regs[1][5]~q\ <= NOT \inst5|regs[1][5]~q\;
\inst5|ALT_INV_regs[0][5]~q\ <= NOT \inst5|regs[0][5]~q\;
\inst5|ALT_INV_Mux25~4_combout\ <= NOT \inst5|Mux25~4_combout\;
\inst5|ALT_INV_Mux25~3_combout\ <= NOT \inst5|Mux25~3_combout\;
\inst5|ALT_INV_regs[15][6]~q\ <= NOT \inst5|regs[15][6]~q\;
\inst3|ALT_INV_Mux0~2_combout\ <= NOT \inst3|Mux0~2_combout\;
\inst3|ALT_INV_Mux0~1_combout\ <= NOT \inst3|Mux0~1_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst1|ALT_INV_Selector3~1_combout\ <= NOT \inst1|Selector3~1_combout\;
\inst1|ALT_INV_Selector3~0_combout\ <= NOT \inst1|Selector3~0_combout\;
\inst1|ALT_INV_Selector4~1_combout\ <= NOT \inst1|Selector4~1_combout\;
\inst1|ALT_INV_Selector4~0_combout\ <= NOT \inst1|Selector4~0_combout\;
\inst1|ALT_INV_Equal8~0_combout\ <= NOT \inst1|Equal8~0_combout\;
\inst1|ALT_INV_Selector5~1_combout\ <= NOT \inst1|Selector5~1_combout\;
\inst1|ALT_INV_Mux14~0_combout\ <= NOT \inst1|Mux14~0_combout\;
\inst1|ALT_INV_Equal12~0_combout\ <= NOT \inst1|Equal12~0_combout\;
\inst1|ALT_INV_Selector5~0_combout\ <= NOT \inst1|Selector5~0_combout\;
\inst1|ALT_INV_Equal6~0_combout\ <= NOT \inst1|Equal6~0_combout\;
\inst2|ALT_INV_output_signal[0]~15_combout\ <= NOT \inst2|output_signal[0]~15_combout\;
\inst2|ALT_INV_output_signal[1]~14_combout\ <= NOT \inst2|output_signal[1]~14_combout\;
\inst2|ALT_INV_output_signal[2]~13_combout\ <= NOT \inst2|output_signal[2]~13_combout\;
\inst2|ALT_INV_output_signal[3]~12_combout\ <= NOT \inst2|output_signal[3]~12_combout\;
\inst2|ALT_INV_output_signal[4]~11_combout\ <= NOT \inst2|output_signal[4]~11_combout\;
\inst2|ALT_INV_output_signal[5]~10_combout\ <= NOT \inst2|output_signal[5]~10_combout\;
\inst2|ALT_INV_output_signal[6]~9_combout\ <= NOT \inst2|output_signal[6]~9_combout\;
\inst2|ALT_INV_output_signal[7]~8_combout\ <= NOT \inst2|output_signal[7]~8_combout\;
\inst2|ALT_INV_output_signal[8]~7_combout\ <= NOT \inst2|output_signal[8]~7_combout\;
\inst2|ALT_INV_output_signal[9]~6_combout\ <= NOT \inst2|output_signal[9]~6_combout\;
\inst2|ALT_INV_output_signal[10]~5_combout\ <= NOT \inst2|output_signal[10]~5_combout\;
\inst2|ALT_INV_output_signal[11]~4_combout\ <= NOT \inst2|output_signal[11]~4_combout\;
\inst2|ALT_INV_output_signal[12]~3_combout\ <= NOT \inst2|output_signal[12]~3_combout\;
\inst2|ALT_INV_output_signal[13]~2_combout\ <= NOT \inst2|output_signal[13]~2_combout\;
\inst2|ALT_INV_output_signal[14]~1_combout\ <= NOT \inst2|output_signal[14]~1_combout\;
\inst2|ALT_INV_output_signal[15]~0_combout\ <= NOT \inst2|output_signal[15]~0_combout\;
\inst5|ALT_INV_Mux47~4_combout\ <= NOT \inst5|Mux47~4_combout\;
\inst5|ALT_INV_Mux47~3_combout\ <= NOT \inst5|Mux47~3_combout\;
\inst5|ALT_INV_Mux47~2_combout\ <= NOT \inst5|Mux47~2_combout\;
\inst5|ALT_INV_Mux47~1_combout\ <= NOT \inst5|Mux47~1_combout\;
\inst5|ALT_INV_Mux47~0_combout\ <= NOT \inst5|Mux47~0_combout\;
\inst5|ALT_INV_Mux46~4_combout\ <= NOT \inst5|Mux46~4_combout\;
\inst5|ALT_INV_Mux46~3_combout\ <= NOT \inst5|Mux46~3_combout\;
\inst5|ALT_INV_Mux46~2_combout\ <= NOT \inst5|Mux46~2_combout\;
\inst5|ALT_INV_Mux46~1_combout\ <= NOT \inst5|Mux46~1_combout\;
\inst5|ALT_INV_Mux46~0_combout\ <= NOT \inst5|Mux46~0_combout\;
\inst5|ALT_INV_Mux45~4_combout\ <= NOT \inst5|Mux45~4_combout\;
\inst5|ALT_INV_Mux45~3_combout\ <= NOT \inst5|Mux45~3_combout\;
\inst5|ALT_INV_Mux45~2_combout\ <= NOT \inst5|Mux45~2_combout\;
\inst5|ALT_INV_Mux45~1_combout\ <= NOT \inst5|Mux45~1_combout\;
\inst5|ALT_INV_Mux45~0_combout\ <= NOT \inst5|Mux45~0_combout\;
\inst5|ALT_INV_Mux44~4_combout\ <= NOT \inst5|Mux44~4_combout\;
\inst5|ALT_INV_Mux44~3_combout\ <= NOT \inst5|Mux44~3_combout\;
\inst5|ALT_INV_Mux44~2_combout\ <= NOT \inst5|Mux44~2_combout\;
\inst5|ALT_INV_Mux44~1_combout\ <= NOT \inst5|Mux44~1_combout\;
\inst5|ALT_INV_Mux44~0_combout\ <= NOT \inst5|Mux44~0_combout\;
\inst5|ALT_INV_Mux43~4_combout\ <= NOT \inst5|Mux43~4_combout\;
\inst5|ALT_INV_Mux43~3_combout\ <= NOT \inst5|Mux43~3_combout\;
\inst5|ALT_INV_Mux43~2_combout\ <= NOT \inst5|Mux43~2_combout\;
\inst5|ALT_INV_Mux43~1_combout\ <= NOT \inst5|Mux43~1_combout\;
\inst5|ALT_INV_Mux43~0_combout\ <= NOT \inst5|Mux43~0_combout\;
\inst5|ALT_INV_Mux42~4_combout\ <= NOT \inst5|Mux42~4_combout\;
\inst5|ALT_INV_Mux42~3_combout\ <= NOT \inst5|Mux42~3_combout\;
\inst5|ALT_INV_Mux42~2_combout\ <= NOT \inst5|Mux42~2_combout\;
\inst5|ALT_INV_Mux42~1_combout\ <= NOT \inst5|Mux42~1_combout\;
\inst5|ALT_INV_Mux42~0_combout\ <= NOT \inst5|Mux42~0_combout\;
\inst5|ALT_INV_Mux41~4_combout\ <= NOT \inst5|Mux41~4_combout\;
\inst5|ALT_INV_Mux41~3_combout\ <= NOT \inst5|Mux41~3_combout\;
\inst5|ALT_INV_Mux41~2_combout\ <= NOT \inst5|Mux41~2_combout\;
\inst5|ALT_INV_Mux41~1_combout\ <= NOT \inst5|Mux41~1_combout\;
\inst5|ALT_INV_Mux41~0_combout\ <= NOT \inst5|Mux41~0_combout\;
\inst5|ALT_INV_Mux40~4_combout\ <= NOT \inst5|Mux40~4_combout\;
\inst5|ALT_INV_Mux40~3_combout\ <= NOT \inst5|Mux40~3_combout\;
\inst5|ALT_INV_Mux40~2_combout\ <= NOT \inst5|Mux40~2_combout\;
\inst5|ALT_INV_Mux40~1_combout\ <= NOT \inst5|Mux40~1_combout\;
\inst5|ALT_INV_Mux40~0_combout\ <= NOT \inst5|Mux40~0_combout\;
\inst5|ALT_INV_Mux39~4_combout\ <= NOT \inst5|Mux39~4_combout\;
\inst5|ALT_INV_Mux39~3_combout\ <= NOT \inst5|Mux39~3_combout\;
\inst5|ALT_INV_Mux39~2_combout\ <= NOT \inst5|Mux39~2_combout\;
\inst5|ALT_INV_Mux39~1_combout\ <= NOT \inst5|Mux39~1_combout\;
\inst5|ALT_INV_Mux39~0_combout\ <= NOT \inst5|Mux39~0_combout\;
\inst5|ALT_INV_Mux38~4_combout\ <= NOT \inst5|Mux38~4_combout\;
\inst5|ALT_INV_Mux38~3_combout\ <= NOT \inst5|Mux38~3_combout\;
\inst5|ALT_INV_Mux38~2_combout\ <= NOT \inst5|Mux38~2_combout\;
\inst5|ALT_INV_Mux38~1_combout\ <= NOT \inst5|Mux38~1_combout\;
\inst5|ALT_INV_Mux38~0_combout\ <= NOT \inst5|Mux38~0_combout\;
\inst5|ALT_INV_Mux37~4_combout\ <= NOT \inst5|Mux37~4_combout\;
\inst5|ALT_INV_Mux37~3_combout\ <= NOT \inst5|Mux37~3_combout\;
\inst5|ALT_INV_Mux37~2_combout\ <= NOT \inst5|Mux37~2_combout\;
\inst5|ALT_INV_Mux37~1_combout\ <= NOT \inst5|Mux37~1_combout\;
\inst5|ALT_INV_Mux37~0_combout\ <= NOT \inst5|Mux37~0_combout\;
\inst5|ALT_INV_Mux36~4_combout\ <= NOT \inst5|Mux36~4_combout\;
\inst5|ALT_INV_Mux36~3_combout\ <= NOT \inst5|Mux36~3_combout\;
\inst5|ALT_INV_Mux36~2_combout\ <= NOT \inst5|Mux36~2_combout\;
\inst5|ALT_INV_Mux36~1_combout\ <= NOT \inst5|Mux36~1_combout\;
\inst5|ALT_INV_Mux36~0_combout\ <= NOT \inst5|Mux36~0_combout\;
\inst5|ALT_INV_Mux35~4_combout\ <= NOT \inst5|Mux35~4_combout\;
\inst5|ALT_INV_Mux35~3_combout\ <= NOT \inst5|Mux35~3_combout\;
\inst5|ALT_INV_Mux35~2_combout\ <= NOT \inst5|Mux35~2_combout\;
\inst5|ALT_INV_Mux35~1_combout\ <= NOT \inst5|Mux35~1_combout\;
\inst5|ALT_INV_Mux35~0_combout\ <= NOT \inst5|Mux35~0_combout\;
\inst5|ALT_INV_Mux34~4_combout\ <= NOT \inst5|Mux34~4_combout\;
\inst5|ALT_INV_Mux34~3_combout\ <= NOT \inst5|Mux34~3_combout\;
\inst5|ALT_INV_Mux34~2_combout\ <= NOT \inst5|Mux34~2_combout\;
\inst5|ALT_INV_Mux34~1_combout\ <= NOT \inst5|Mux34~1_combout\;
\inst5|ALT_INV_Mux34~0_combout\ <= NOT \inst5|Mux34~0_combout\;
\inst5|ALT_INV_Mux33~4_combout\ <= NOT \inst5|Mux33~4_combout\;
\inst5|ALT_INV_Mux33~3_combout\ <= NOT \inst5|Mux33~3_combout\;
\inst5|ALT_INV_Mux33~2_combout\ <= NOT \inst5|Mux33~2_combout\;
\inst5|ALT_INV_Mux33~1_combout\ <= NOT \inst5|Mux33~1_combout\;
\inst5|ALT_INV_Mux33~0_combout\ <= NOT \inst5|Mux33~0_combout\;
\inst5|ALT_INV_Mux3~0_combout\ <= NOT \inst5|Mux3~0_combout\;
\inst9|ALT_INV_sip_r\(12) <= NOT \inst9|sip_r\(12);
\inst5|ALT_INV_Mux2~0_combout\ <= NOT \inst5|Mux2~0_combout\;
\inst9|ALT_INV_sip_r\(13) <= NOT \inst9|sip_r\(13);
\inst5|ALT_INV_Mux1~0_combout\ <= NOT \inst5|Mux1~0_combout\;
\inst9|ALT_INV_sip_r\(14) <= NOT \inst9|sip_r\(14);
\inst5|ALT_INV_Mux0~2_combout\ <= NOT \inst5|Mux0~2_combout\;
\inst5|ALT_INV_Mux0~1_combout\ <= NOT \inst5|Mux0~1_combout\;
\inst9|ALT_INV_sip_r\(15) <= NOT \inst9|sip_r\(15);
\inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst5|Mux0~0_combout\;
\inst1|ALT_INV_Mux9~1_combout\ <= NOT \inst1|Mux9~1_combout\;
\inst1|ALT_INV_Mux7~0_combout\ <= NOT \inst1|Mux7~0_combout\;
\inst5|ALT_INV_Mux9~0_combout\ <= NOT \inst5|Mux9~0_combout\;
\inst1|ALT_INV_Mux9~0_combout\ <= NOT \inst1|Mux9~0_combout\;
\inst1|ALT_INV_ld_r~2_combout\ <= NOT \inst1|ld_r~2_combout\;
\inst1|ALT_INV_Mux8~0_combout\ <= NOT \inst1|Mux8~0_combout\;
\inst1|ALT_INV_alu_op2_sel[1]~3_combout\ <= NOT \inst1|alu_op2_sel[1]~3_combout\;
\inst1|ALT_INV_alu_op2_sel[1]~2_combout\ <= NOT \inst1|alu_op2_sel[1]~2_combout\;
\inst1|ALT_INV_alu_op2_sel[1]~1_combout\ <= NOT \inst1|alu_op2_sel[1]~1_combout\;
\inst1|ALT_INV_Equal13~0_combout\ <= NOT \inst1|Equal13~0_combout\;
\inst1|ALT_INV_alu_op2_sel[0]~0_combout\ <= NOT \inst1|alu_op2_sel[0]~0_combout\;
\inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|Mux5~0_combout\;
\inst1|ALT_INV_alu_op1_sel[1]~2_combout\ <= NOT \inst1|alu_op1_sel[1]~2_combout\;
\inst1|ALT_INV_alu_op1_sel[1]~1_combout\ <= NOT \inst1|alu_op1_sel[1]~1_combout\;
\inst1|ALT_INV_alu_op1_sel[0]~0_combout\ <= NOT \inst1|alu_op1_sel[0]~0_combout\;
\inst1|ALT_INV_Mux3~0_combout\ <= NOT \inst1|Mux3~0_combout\;
\inst1|ALT_INV_Equal3~0_combout\ <= NOT \inst1|Equal3~0_combout\;
\inst3|ALT_INV_Mux13~4_combout\ <= NOT \inst3|Mux13~4_combout\;
\inst3|ALT_INV_Mux13~3_combout\ <= NOT \inst3|Mux13~3_combout\;
\inst3|ALT_INV_Mux13~2_combout\ <= NOT \inst3|Mux13~2_combout\;
\inst3|ALT_INV_Mux13~1_combout\ <= NOT \inst3|Mux13~1_combout\;
\inst3|ALT_INV_Mux13~0_combout\ <= NOT \inst3|Mux13~0_combout\;
\inst3|ALT_INV_Mux12~4_combout\ <= NOT \inst3|Mux12~4_combout\;
\inst3|ALT_INV_Mux12~3_combout\ <= NOT \inst3|Mux12~3_combout\;
\inst3|ALT_INV_Mux12~2_combout\ <= NOT \inst3|Mux12~2_combout\;
\inst3|ALT_INV_Mux12~1_combout\ <= NOT \inst3|Mux12~1_combout\;
\inst3|ALT_INV_Mux12~0_combout\ <= NOT \inst3|Mux12~0_combout\;
\inst3|ALT_INV_Mux11~4_combout\ <= NOT \inst3|Mux11~4_combout\;
\inst3|ALT_INV_Mux11~3_combout\ <= NOT \inst3|Mux11~3_combout\;
\inst3|ALT_INV_Mux11~2_combout\ <= NOT \inst3|Mux11~2_combout\;
\inst3|ALT_INV_Mux11~1_combout\ <= NOT \inst3|Mux11~1_combout\;
\inst3|ALT_INV_Mux11~0_combout\ <= NOT \inst3|Mux11~0_combout\;
\inst3|ALT_INV_Mux10~4_combout\ <= NOT \inst3|Mux10~4_combout\;
\inst3|ALT_INV_Mux10~3_combout\ <= NOT \inst3|Mux10~3_combout\;
\inst3|ALT_INV_Mux10~2_combout\ <= NOT \inst3|Mux10~2_combout\;
\inst3|ALT_INV_Mux10~1_combout\ <= NOT \inst3|Mux10~1_combout\;
\inst3|ALT_INV_Mux10~0_combout\ <= NOT \inst3|Mux10~0_combout\;
\inst3|ALT_INV_Mux9~4_combout\ <= NOT \inst3|Mux9~4_combout\;
\inst3|ALT_INV_Mux9~3_combout\ <= NOT \inst3|Mux9~3_combout\;
\inst3|ALT_INV_Mux9~2_combout\ <= NOT \inst3|Mux9~2_combout\;
\inst3|ALT_INV_Mux9~1_combout\ <= NOT \inst3|Mux9~1_combout\;
\inst3|ALT_INV_Mux9~0_combout\ <= NOT \inst3|Mux9~0_combout\;
\inst3|ALT_INV_Mux8~4_combout\ <= NOT \inst3|Mux8~4_combout\;
\inst3|ALT_INV_Mux8~3_combout\ <= NOT \inst3|Mux8~3_combout\;
\inst3|ALT_INV_Mux8~2_combout\ <= NOT \inst3|Mux8~2_combout\;
\inst3|ALT_INV_Mux8~1_combout\ <= NOT \inst3|Mux8~1_combout\;
\inst3|ALT_INV_Mux8~0_combout\ <= NOT \inst3|Mux8~0_combout\;
\inst3|ALT_INV_Mux7~4_combout\ <= NOT \inst3|Mux7~4_combout\;
\inst3|ALT_INV_Mux7~3_combout\ <= NOT \inst3|Mux7~3_combout\;
\inst3|ALT_INV_Mux7~2_combout\ <= NOT \inst3|Mux7~2_combout\;
\inst3|ALT_INV_Mux7~1_combout\ <= NOT \inst3|Mux7~1_combout\;
\inst3|ALT_INV_Mux7~0_combout\ <= NOT \inst3|Mux7~0_combout\;
\inst3|ALT_INV_Mux6~2_combout\ <= NOT \inst3|Mux6~2_combout\;
\inst3|ALT_INV_Mux6~1_combout\ <= NOT \inst3|Mux6~1_combout\;
\inst3|ALT_INV_Mux6~0_combout\ <= NOT \inst3|Mux6~0_combout\;
\inst3|ALT_INV_Mux5~2_combout\ <= NOT \inst3|Mux5~2_combout\;
\inst3|ALT_INV_Mux5~1_combout\ <= NOT \inst3|Mux5~1_combout\;
\inst3|ALT_INV_Mux5~0_combout\ <= NOT \inst3|Mux5~0_combout\;
\inst3|ALT_INV_Mux4~2_combout\ <= NOT \inst3|Mux4~2_combout\;
\inst3|ALT_INV_Mux4~1_combout\ <= NOT \inst3|Mux4~1_combout\;
\inst3|ALT_INV_Mux4~0_combout\ <= NOT \inst3|Mux4~0_combout\;
\inst3|ALT_INV_Mux3~2_combout\ <= NOT \inst3|Mux3~2_combout\;
\inst3|ALT_INV_Mux3~1_combout\ <= NOT \inst3|Mux3~1_combout\;
\inst3|ALT_INV_Mux3~0_combout\ <= NOT \inst3|Mux3~0_combout\;
\inst3|ALT_INV_Mux2~2_combout\ <= NOT \inst3|Mux2~2_combout\;
\inst3|ALT_INV_Mux2~1_combout\ <= NOT \inst3|Mux2~1_combout\;
\inst3|ALT_INV_Mux2~0_combout\ <= NOT \inst3|Mux2~0_combout\;
\inst3|ALT_INV_Mux1~2_combout\ <= NOT \inst3|Mux1~2_combout\;
\inst3|ALT_INV_Mux1~1_combout\ <= NOT \inst3|Mux1~1_combout\;
\inst3|ALT_INV_Mux1~0_combout\ <= NOT \inst3|Mux1~0_combout\;
\inst3|ALT_INV_Mux0~4_combout\ <= NOT \inst3|Mux0~4_combout\;
\inst3|ALT_INV_Mux0~3_combout\ <= NOT \inst3|Mux0~3_combout\;
\inst1|ALT_INV_Selector3~2_combout\ <= NOT \inst1|Selector3~2_combout\;
\inst1|ALT_INV_Selector5~2_combout\ <= NOT \inst1|Selector5~2_combout\;
\inst1|ALT_INV_Mux22~0_combout\ <= NOT \inst1|Mux22~0_combout\;
\inst1|ALT_INV_Mux11~0_combout\ <= NOT \inst1|Mux11~0_combout\;
\inst1|ALT_INV_Mux14~1_combout\ <= NOT \inst1|Mux14~1_combout\;
\inst5|ALT_INV_Mux15~0_combout\ <= NOT \inst5|Mux15~0_combout\;
\inst9|ALT_INV_sip_r\(0) <= NOT \inst9|sip_r\(0);
\inst5|ALT_INV_Mux14~0_combout\ <= NOT \inst5|Mux14~0_combout\;
\inst9|ALT_INV_sip_r\(1) <= NOT \inst9|sip_r\(1);
\inst5|ALT_INV_Mux13~0_combout\ <= NOT \inst5|Mux13~0_combout\;
\inst9|ALT_INV_sip_r\(2) <= NOT \inst9|sip_r\(2);
\inst5|ALT_INV_Mux12~0_combout\ <= NOT \inst5|Mux12~0_combout\;
\inst9|ALT_INV_sip_r\(3) <= NOT \inst9|sip_r\(3);
\inst5|ALT_INV_Mux11~0_combout\ <= NOT \inst5|Mux11~0_combout\;
\inst9|ALT_INV_sip_r\(4) <= NOT \inst9|sip_r\(4);
\inst5|ALT_INV_Mux10~0_combout\ <= NOT \inst5|Mux10~0_combout\;
\inst9|ALT_INV_sip_r\(5) <= NOT \inst9|sip_r\(5);
\inst5|ALT_INV_Mux9~1_combout\ <= NOT \inst5|Mux9~1_combout\;
\inst9|ALT_INV_sip_r\(6) <= NOT \inst9|sip_r\(6);
\inst5|ALT_INV_Mux8~0_combout\ <= NOT \inst5|Mux8~0_combout\;
\inst9|ALT_INV_sip_r\(7) <= NOT \inst9|sip_r\(7);
\inst5|ALT_INV_Mux7~0_combout\ <= NOT \inst5|Mux7~0_combout\;
\inst9|ALT_INV_sip_r\(8) <= NOT \inst9|sip_r\(8);
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\inst9|ALT_INV_sip_r\(9) <= NOT \inst9|sip_r\(9);
\inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst5|Mux5~0_combout\;
\inst9|ALT_INV_sip_r\(10) <= NOT \inst9|sip_r\(10);
\inst5|ALT_INV_Mux4~0_combout\ <= NOT \inst5|Mux4~0_combout\;
\inst9|ALT_INV_sip_r\(11) <= NOT \inst9|sip_r\(11);

\write_pc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \write_pc~output_o\);

\AM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Am\(1),
	devoe => ww_devoe,
	o => \AM[1]~output_o\);

\AM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Am\(0),
	devoe => ww_devoe,
	o => \AM[0]~output_o\);

\ir_wr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \ir_wr~output_o\);

\ir_reset~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_state.T0~q\,
	devoe => ww_devoe,
	o => \ir_reset~output_o\);

\ir_operand_set~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector0~1_combout\,
	devoe => ww_devoe,
	o => \ir_operand_set~output_o\);

\op2_wr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|op2_wr~3_combout\,
	devoe => ww_devoe,
	o => \op2_wr~output_o\);

\reset_pc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_state.T0~q\,
	devoe => ww_devoe,
	o => \reset_pc~output_o\);

\op1_wr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|op1_wr~5_combout\,
	devoe => ww_devoe,
	o => \op1_wr~output_o\);

\Operand[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(15),
	devoe => ww_devoe,
	o => \Operand[15]~output_o\);

\Operand[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(14),
	devoe => ww_devoe,
	o => \Operand[14]~output_o\);

\Operand[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(13),
	devoe => ww_devoe,
	o => \Operand[13]~output_o\);

\Operand[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(12),
	devoe => ww_devoe,
	o => \Operand[12]~output_o\);

\Operand[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(11),
	devoe => ww_devoe,
	o => \Operand[11]~output_o\);

\Operand[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(10),
	devoe => ww_devoe,
	o => \Operand[10]~output_o\);

\Operand[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(9),
	devoe => ww_devoe,
	o => \Operand[9]~output_o\);

\Operand[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(8),
	devoe => ww_devoe,
	o => \Operand[8]~output_o\);

\Operand[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(7),
	devoe => ww_devoe,
	o => \Operand[7]~output_o\);

\Operand[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(6),
	devoe => ww_devoe,
	o => \Operand[6]~output_o\);

\Operand[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(5),
	devoe => ww_devoe,
	o => \Operand[5]~output_o\);

\Operand[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(4),
	devoe => ww_devoe,
	o => \Operand[4]~output_o\);

\Operand[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(3),
	devoe => ww_devoe,
	o => \Operand[3]~output_o\);

\Operand[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(2),
	devoe => ww_devoe,
	o => \Operand[2]~output_o\);

\Operand[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(1),
	devoe => ww_devoe,
	o => \Operand[1]~output_o\);

\Operand[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Operand\(0),
	devoe => ww_devoe,
	o => \Operand[0]~output_o\);

\pc_mux_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \pc_mux_sel~output_o\);

\instAddr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|tempAddress\(15),
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
	i => \program_counter|tempAddress\(14),
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
	i => \program_counter|tempAddress\(13),
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
	i => \program_counter|tempAddress\(12),
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
	i => \program_counter|tempAddress\(11),
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
	i => \program_counter|tempAddress\(10),
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
	i => \program_counter|tempAddress\(9),
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
	i => \program_counter|tempAddress\(8),
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
	i => \program_counter|tempAddress\(7),
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
	i => \program_counter|tempAddress\(6),
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
	i => \program_counter|tempAddress\(5),
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
	i => \program_counter|tempAddress\(4),
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
	i => \program_counter|tempAddress\(3),
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
	i => \program_counter|tempAddress\(2),
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
	i => \program_counter|tempAddress\(1),
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
	i => \program_counter|tempIncr\(0),
	devoe => ww_devoe,
	o => \instAddr[0]~output_o\);

\OPCode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_OP\(5),
	devoe => ww_devoe,
	o => \OPCode[5]~output_o\);

\OPCode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_OP\(4),
	devoe => ww_devoe,
	o => \OPCode[4]~output_o\);

\OPCode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_OP\(3),
	devoe => ww_devoe,
	o => \OPCode[3]~output_o\);

\OPCode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_OP\(2),
	devoe => ww_devoe,
	o => \OPCode[2]~output_o\);

\OPCode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_OP\(1),
	devoe => ww_devoe,
	o => \OPCode[1]~output_o\);

\OPCode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_OP\(0),
	devoe => ww_devoe,
	o => \OPCode[0]~output_o\);

\load_reg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ld_r~1_combout\,
	devoe => ww_devoe,
	o => \load_reg~output_o\);

\alu_outputpin[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[15]~output_o\);

\alu_outputpin[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[14]~output_o\);

\alu_outputpin[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[13]~output_o\);

\alu_outputpin[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[12]~output_o\);

\alu_outputpin[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[11]~output_o\);

\alu_outputpin[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[10]~output_o\);

\alu_outputpin[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[9]~output_o\);

\alu_outputpin[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[8]~output_o\);

\alu_outputpin[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[7]~output_o\);

\alu_outputpin[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[6]~output_o\);

\alu_outputpin[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[5]~output_o\);

\alu_outputpin[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux11~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[4]~output_o\);

\alu_outputpin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[3]~output_o\);

\alu_outputpin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux13~4_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[2]~output_o\);

\alu_outputpin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[1]~output_o\);

\alu_outputpin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \alu_outputpin[0]~output_o\);

\currentState[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_currentSignal[2]~0_combout\,
	devoe => ww_devoe,
	o => \currentState[2]~output_o\);

\currentState[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|currentSignal[1]~1_combout\,
	devoe => ww_devoe,
	o => \currentState[1]~output_o\);

\currentState[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|currentSignal[0]~2_combout\,
	devoe => ww_devoe,
	o => \currentState[0]~output_o\);

\dpcr[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(31),
	devoe => ww_devoe,
	o => \dpcr[31]~output_o\);

\dpcr[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(30),
	devoe => ww_devoe,
	o => \dpcr[30]~output_o\);

\dpcr[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(29),
	devoe => ww_devoe,
	o => \dpcr[29]~output_o\);

\dpcr[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(28),
	devoe => ww_devoe,
	o => \dpcr[28]~output_o\);

\dpcr[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(27),
	devoe => ww_devoe,
	o => \dpcr[27]~output_o\);

\dpcr[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(26),
	devoe => ww_devoe,
	o => \dpcr[26]~output_o\);

\dpcr[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(25),
	devoe => ww_devoe,
	o => \dpcr[25]~output_o\);

\dpcr[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(24),
	devoe => ww_devoe,
	o => \dpcr[24]~output_o\);

\dpcr[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(23),
	devoe => ww_devoe,
	o => \dpcr[23]~output_o\);

\dpcr[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(22),
	devoe => ww_devoe,
	o => \dpcr[22]~output_o\);

\dpcr[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(21),
	devoe => ww_devoe,
	o => \dpcr[21]~output_o\);

\dpcr[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(20),
	devoe => ww_devoe,
	o => \dpcr[20]~output_o\);

\dpcr[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(19),
	devoe => ww_devoe,
	o => \dpcr[19]~output_o\);

\dpcr[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(18),
	devoe => ww_devoe,
	o => \dpcr[18]~output_o\);

\dpcr[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(17),
	devoe => ww_devoe,
	o => \dpcr[17]~output_o\);

\dpcr[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(16),
	devoe => ww_devoe,
	o => \dpcr[16]~output_o\);

\dpcr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(15),
	devoe => ww_devoe,
	o => \dpcr[15]~output_o\);

\dpcr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(14),
	devoe => ww_devoe,
	o => \dpcr[14]~output_o\);

\dpcr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(13),
	devoe => ww_devoe,
	o => \dpcr[13]~output_o\);

\dpcr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(12),
	devoe => ww_devoe,
	o => \dpcr[12]~output_o\);

\dpcr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(11),
	devoe => ww_devoe,
	o => \dpcr[11]~output_o\);

\dpcr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(10),
	devoe => ww_devoe,
	o => \dpcr[10]~output_o\);

\dpcr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(9),
	devoe => ww_devoe,
	o => \dpcr[9]~output_o\);

\dpcr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(8),
	devoe => ww_devoe,
	o => \dpcr[8]~output_o\);

\dpcr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(7),
	devoe => ww_devoe,
	o => \dpcr[7]~output_o\);

\dpcr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(6),
	devoe => ww_devoe,
	o => \dpcr[6]~output_o\);

\dpcr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(5),
	devoe => ww_devoe,
	o => \dpcr[5]~output_o\);

\dpcr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(4),
	devoe => ww_devoe,
	o => \dpcr[4]~output_o\);

\dpcr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(3),
	devoe => ww_devoe,
	o => \dpcr[3]~output_o\);

\dpcr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(2),
	devoe => ww_devoe,
	o => \dpcr[2]~output_o\);

\dpcr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(1),
	devoe => ww_devoe,
	o => \dpcr[1]~output_o\);

\dpcr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dpcr\(0),
	devoe => ww_devoe,
	o => \dpcr[0]~output_o\);

\incrAddr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|tempIncr\(15),
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
	i => \program_counter|tempIncr\(14),
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
	i => \program_counter|tempIncr\(13),
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
	i => \program_counter|tempIncr\(12),
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
	i => \program_counter|tempIncr\(11),
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
	i => \program_counter|tempIncr\(10),
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
	i => \program_counter|tempIncr\(9),
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
	i => \program_counter|tempIncr\(8),
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
	i => \program_counter|tempIncr\(7),
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
	i => \program_counter|tempIncr\(6),
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
	i => \program_counter|tempIncr\(5),
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
	i => \program_counter|tempIncr\(4),
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
	i => \program_counter|tempIncr\(3),
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
	i => \program_counter|tempIncr\(2),
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
	i => \program_counter|tempIncr\(1),
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
	i => \program_counter|ALT_INV_tempIncr\(0),
	devoe => ww_devoe,
	o => \incrAddr[0]~output_o\);

\instruction[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[15]~output_o\);

\instruction[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[14]~output_o\);

\instruction[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[13]~output_o\);

\instruction[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[12]~output_o\);

\instruction[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[11]~output_o\);

\instruction[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[10]~output_o\);

\instruction[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[9]~output_o\);

\instruction[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[8]~output_o\);

\instruction[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[7]~output_o\);

\instruction[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[6]~output_o\);

\instruction[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[5]~output_o\);

\instruction[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[4]~output_o\);

\instruction[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[3]~output_o\);

\instruction[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[2]~output_o\);

\instruction[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[1]~output_o\);

\instruction[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \instruction[0]~output_o\);

\op1OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(15),
	devoe => ww_devoe,
	o => \op1OUT[15]~output_o\);

\op1OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(14),
	devoe => ww_devoe,
	o => \op1OUT[14]~output_o\);

\op1OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(13),
	devoe => ww_devoe,
	o => \op1OUT[13]~output_o\);

\op1OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(12),
	devoe => ww_devoe,
	o => \op1OUT[12]~output_o\);

\op1OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(11),
	devoe => ww_devoe,
	o => \op1OUT[11]~output_o\);

\op1OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(10),
	devoe => ww_devoe,
	o => \op1OUT[10]~output_o\);

\op1OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(9),
	devoe => ww_devoe,
	o => \op1OUT[9]~output_o\);

\op1OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(8),
	devoe => ww_devoe,
	o => \op1OUT[8]~output_o\);

\op1OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(7),
	devoe => ww_devoe,
	o => \op1OUT[7]~output_o\);

\op1OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(6),
	devoe => ww_devoe,
	o => \op1OUT[6]~output_o\);

\op1OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(5),
	devoe => ww_devoe,
	o => \op1OUT[5]~output_o\);

\op1OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(4),
	devoe => ww_devoe,
	o => \op1OUT[4]~output_o\);

\op1OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(3),
	devoe => ww_devoe,
	o => \op1OUT[3]~output_o\);

\op1OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(2),
	devoe => ww_devoe,
	o => \op1OUT[2]~output_o\);

\op1OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(1),
	devoe => ww_devoe,
	o => \op1OUT[1]~output_o\);

\op1OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|reg_out\(0),
	devoe => ww_devoe,
	o => \op1OUT[0]~output_o\);

\op2OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(15),
	devoe => ww_devoe,
	o => \op2OUT[15]~output_o\);

\op2OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(14),
	devoe => ww_devoe,
	o => \op2OUT[14]~output_o\);

\op2OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(13),
	devoe => ww_devoe,
	o => \op2OUT[13]~output_o\);

\op2OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(12),
	devoe => ww_devoe,
	o => \op2OUT[12]~output_o\);

\op2OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(11),
	devoe => ww_devoe,
	o => \op2OUT[11]~output_o\);

\op2OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(10),
	devoe => ww_devoe,
	o => \op2OUT[10]~output_o\);

\op2OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(9),
	devoe => ww_devoe,
	o => \op2OUT[9]~output_o\);

\op2OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(8),
	devoe => ww_devoe,
	o => \op2OUT[8]~output_o\);

\op2OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(7),
	devoe => ww_devoe,
	o => \op2OUT[7]~output_o\);

\op2OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(6),
	devoe => ww_devoe,
	o => \op2OUT[6]~output_o\);

\op2OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(5),
	devoe => ww_devoe,
	o => \op2OUT[5]~output_o\);

\op2OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(4),
	devoe => ww_devoe,
	o => \op2OUT[4]~output_o\);

\op2OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(3),
	devoe => ww_devoe,
	o => \op2OUT[3]~output_o\);

\op2OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(2),
	devoe => ww_devoe,
	o => \op2OUT[2]~output_o\);

\op2OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(1),
	devoe => ww_devoe,
	o => \op2OUT[1]~output_o\);

\op2OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \op2|reg_out\(0),
	devoe => ww_devoe,
	o => \op2OUT[0]~output_o\);

\r7_outputData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][15]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[15]~output_o\);

\r7_outputData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][14]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[14]~output_o\);

\r7_outputData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][13]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[13]~output_o\);

\r7_outputData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][12]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[12]~output_o\);

\r7_outputData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][11]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[11]~output_o\);

\r7_outputData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][10]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[10]~output_o\);

\r7_outputData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][9]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[9]~output_o\);

\r7_outputData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][8]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[8]~output_o\);

\r7_outputData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][7]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[7]~output_o\);

\r7_outputData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][6]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[6]~output_o\);

\r7_outputData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][5]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[5]~output_o\);

\r7_outputData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][4]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[4]~output_o\);

\r7_outputData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][3]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[3]~output_o\);

\r7_outputData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][2]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[2]~output_o\);

\r7_outputData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][1]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[1]~output_o\);

\r7_outputData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[7][0]~q\,
	devoe => ww_devoe,
	o => \r7_outputData[0]~output_o\);

\reg4_output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][15]~q\,
	devoe => ww_devoe,
	o => \reg4_output[15]~output_o\);

\reg4_output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][14]~q\,
	devoe => ww_devoe,
	o => \reg4_output[14]~output_o\);

\reg4_output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][13]~q\,
	devoe => ww_devoe,
	o => \reg4_output[13]~output_o\);

\reg4_output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][12]~q\,
	devoe => ww_devoe,
	o => \reg4_output[12]~output_o\);

\reg4_output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][11]~q\,
	devoe => ww_devoe,
	o => \reg4_output[11]~output_o\);

\reg4_output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][10]~q\,
	devoe => ww_devoe,
	o => \reg4_output[10]~output_o\);

\reg4_output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][9]~q\,
	devoe => ww_devoe,
	o => \reg4_output[9]~output_o\);

\reg4_output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][8]~q\,
	devoe => ww_devoe,
	o => \reg4_output[8]~output_o\);

\reg4_output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][7]~q\,
	devoe => ww_devoe,
	o => \reg4_output[7]~output_o\);

\reg4_output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][6]~q\,
	devoe => ww_devoe,
	o => \reg4_output[6]~output_o\);

\reg4_output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][5]~q\,
	devoe => ww_devoe,
	o => \reg4_output[5]~output_o\);

\reg4_output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][4]~q\,
	devoe => ww_devoe,
	o => \reg4_output[4]~output_o\);

\reg4_output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][3]~q\,
	devoe => ww_devoe,
	o => \reg4_output[3]~output_o\);

\reg4_output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][2]~q\,
	devoe => ww_devoe,
	o => \reg4_output[2]~output_o\);

\reg4_output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][1]~q\,
	devoe => ww_devoe,
	o => \reg4_output[1]~output_o\);

\reg4_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|regs[4][0]~q\,
	devoe => ww_devoe,
	o => \reg4_output[0]~output_o\);

\Rx[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rx\(3),
	devoe => ww_devoe,
	o => \Rx[3]~output_o\);

\Rx[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rx\(2),
	devoe => ww_devoe,
	o => \Rx[2]~output_o\);

\Rx[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rx\(1),
	devoe => ww_devoe,
	o => \Rx[1]~output_o\);

\Rx[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rx\(0),
	devoe => ww_devoe,
	o => \Rx[0]~output_o\);

\rx_outputData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux16~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[15]~output_o\);

\rx_outputData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux17~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[14]~output_o\);

\rx_outputData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux18~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[13]~output_o\);

\rx_outputData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux19~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[12]~output_o\);

\rx_outputData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux20~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[11]~output_o\);

\rx_outputData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[10]~output_o\);

\rx_outputData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux22~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[9]~output_o\);

\rx_outputData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux23~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[8]~output_o\);

\rx_outputData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux24~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[7]~output_o\);

\rx_outputData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux25~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[6]~output_o\);

\rx_outputData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux26~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[5]~output_o\);

\rx_outputData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux27~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[4]~output_o\);

\rx_outputData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux28~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[3]~output_o\);

\rx_outputData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux29~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[2]~output_o\);

\rx_outputData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux30~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[1]~output_o\);

\rx_outputData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \rx_outputData[0]~output_o\);

\Rz[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rz\(3),
	devoe => ww_devoe,
	o => \Rz[3]~output_o\);

\Rz[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rz\(2),
	devoe => ww_devoe,
	o => \Rz[2]~output_o\);

\Rz[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rz\(1),
	devoe => ww_devoe,
	o => \Rz[1]~output_o\);

\Rz[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_r|t_Rz\(0),
	devoe => ww_devoe,
	o => \Rz[0]~output_o\);

\rz_outputData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux32~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[15]~output_o\);

\rz_outputData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux33~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[14]~output_o\);

\rz_outputData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux34~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[13]~output_o\);

\rz_outputData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux35~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[12]~output_o\);

\rz_outputData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux36~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[11]~output_o\);

\rz_outputData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux37~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[10]~output_o\);

\rz_outputData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux38~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[9]~output_o\);

\rz_outputData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux39~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[8]~output_o\);

\rz_outputData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux40~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[7]~output_o\);

\rz_outputData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux41~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[6]~output_o\);

\rz_outputData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux42~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[5]~output_o\);

\rz_outputData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux43~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[4]~output_o\);

\rz_outputData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux44~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[3]~output_o\);

\rz_outputData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux45~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[2]~output_o\);

\rz_outputData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux46~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[1]~output_o\);

\rz_outputData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux47~4_combout\,
	devoe => ww_devoe,
	o => \rz_outputData[0]~output_o\);

\sop_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(15),
	devoe => ww_devoe,
	o => \sop_out[15]~output_o\);

\sop_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(14),
	devoe => ww_devoe,
	o => \sop_out[14]~output_o\);

\sop_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(13),
	devoe => ww_devoe,
	o => \sop_out[13]~output_o\);

\sop_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(12),
	devoe => ww_devoe,
	o => \sop_out[12]~output_o\);

\sop_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(11),
	devoe => ww_devoe,
	o => \sop_out[11]~output_o\);

\sop_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(10),
	devoe => ww_devoe,
	o => \sop_out[10]~output_o\);

\sop_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(9),
	devoe => ww_devoe,
	o => \sop_out[9]~output_o\);

\sop_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(8),
	devoe => ww_devoe,
	o => \sop_out[8]~output_o\);

\sop_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(7),
	devoe => ww_devoe,
	o => \sop_out[7]~output_o\);

\sop_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(6),
	devoe => ww_devoe,
	o => \sop_out[6]~output_o\);

\sop_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(5),
	devoe => ww_devoe,
	o => \sop_out[5]~output_o\);

\sop_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(4),
	devoe => ww_devoe,
	o => \sop_out[4]~output_o\);

\sop_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(3),
	devoe => ww_devoe,
	o => \sop_out[3]~output_o\);

\sop_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(2),
	devoe => ww_devoe,
	o => \sop_out[2]~output_o\);

\sop_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(1),
	devoe => ww_devoe,
	o => \sop_out[1]~output_o\);

\sop_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sop\(0),
	devoe => ww_devoe,
	o => \sop_out[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_in,
	o => \reset_in~input_o\);

\inst1|state.T0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state.T0~0_combout\ = !\reset_in~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state.T0~0_combout\);

\inst1|state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state.T0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T0~q\);

\inst1|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~10_combout\ = (\inst1|state.T1A~q\ & !\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~10_combout\);

\inst1|state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T2~q\);

\inst1|state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~11_combout\ = (\inst1|state.T2~q\ & !\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T2~q\,
	datab => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~11_combout\);

\inst1|state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T3~q\);

\inst1|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~12_combout\ = (\inst1|state.T3~q\ & !\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~12_combout\);

\inst1|state.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T4~q\);

\inst1|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~9_combout\ = (!\reset_in~input_o\ & ((!\inst1|state.T0~q\) # (\inst1|state.T4~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T0~q\,
	datab => \inst1|ALT_INV_state.T4~q\,
	datac => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~9_combout\);

\inst1|state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T1~q\);

\inst1|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~8_combout\ = (\inst1|state.T1~q\ & !\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1~q\,
	datab => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~8_combout\);

\inst1|state.T1A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T1A~q\);

\inst1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = (\inst1|state.T1A~q\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_Am\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \instruction_r|ALT_INV_t_Am\(1),
	datac => \instruction_r|ALT_INV_t_Am\(0),
	combout => \inst1|Selector0~1_combout\);

\instruction_r|t_Operand[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(14));

\inst1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~0_combout\ = (\inst1|state.T4~q\) # (\inst1|state.T3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_state.T4~q\,
	combout => \inst1|WideOr1~0_combout\);

\instruction_r|t_Operand[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(8));

\instruction_r|t_Operand[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(13));

\instruction_r|t_Operand[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(9));

\instruction_r|t_Operand[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(12));

\instruction_r|t_Operand[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(7));

\inst5|regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][2]~q\);

\instruction_r|t_Operand[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(6));

\inst5|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][3]~q\);

\instruction_r|t_Operand[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(5));

\inst5|regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][4]~q\);

\inst5|regs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][4]~q\);

\instruction_r|t_Am[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|t_Am[0]~0_combout\ = (\inst1|state.T1~q\ & ((!\inst1|state.T1A~q\) # (!\instruction_r|t_Am\(1) $ (\instruction_r|t_Am\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101011000000001110101100000000111010110000000011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \instruction_r|ALT_INV_t_Am\(1),
	datac => \instruction_r|ALT_INV_t_Am\(0),
	datad => \inst1|ALT_INV_state.T1~q\,
	combout => \instruction_r|t_Am[0]~0_combout\);

\instruction_r|t_Rz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(0));

\inst5|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~12_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~12_combout\);

\inst5|regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][4]~q\);

\inst5|Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux43~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][4]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][4]~q\,
	datab => \inst5|ALT_INV_regs[4][4]~q\,
	datac => \inst5|ALT_INV_regs[8][4]~q\,
	datad => \inst5|ALT_INV_regs[12][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux43~0_combout\);

\inst5|regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][4]~q\);

\inst5|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~6_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~6_combout\);

\inst5|regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][4]~q\);

\inst5|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~9_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~9_combout\);

\inst5|regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][4]~q\);

\inst5|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~13_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~13_combout\);

\inst5|regs[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][4]~q\);

\inst5|Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux43~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][4]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][4]~q\,
	datab => \inst5|ALT_INV_regs[5][4]~q\,
	datac => \inst5|ALT_INV_regs[9][4]~q\,
	datad => \inst5|ALT_INV_regs[13][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux43~1_combout\);

\inst5|regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][4]~q\);

\inst5|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~7_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~7_combout\);

\inst5|regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][4]~q\);

\inst5|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~10_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~10_combout\);

\inst5|regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][4]~q\);

\inst5|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~14_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~14_combout\);

\inst5|regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][4]~q\);

\inst5|Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux43~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][4]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][4]~q\,
	datab => \inst5|ALT_INV_regs[6][4]~q\,
	datac => \inst5|ALT_INV_regs[10][4]~q\,
	datad => \inst5|ALT_INV_regs[14][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux43~2_combout\);

\inst5|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~5_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~5_combout\);

\inst5|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][4]~q\);

\inst5|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~0_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~0_combout\);

\inst5|regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][4]~q\);

\inst5|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~11_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~11_combout\);

\inst5|regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][4]~q\);

\inst5|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~15_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~15_combout\);

\inst5|regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][4]~q\);

\inst5|Mux43~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux43~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][4]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][4]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][4]~q\,
	datab => \inst5|ALT_INV_regs[7][4]~q\,
	datac => \inst5|ALT_INV_regs[11][4]~q\,
	datad => \inst5|ALT_INV_regs[15][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux43~3_combout\);

\inst5|Mux43~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux43~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux43~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux43~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux43~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux43~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux43~0_combout\,
	datab => \inst5|ALT_INV_Mux43~1_combout\,
	datac => \inst5|ALT_INV_Mux43~2_combout\,
	datad => \inst5|ALT_INV_Mux43~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux43~4_combout\);

\instruction_r|t_Operand[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(11));

\inst|memory_rtl_1|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "800281A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\instruction_r|t_Operand[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(10));

\inst|memory_rtl_1|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0002E200",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\inst1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal8~0_combout\ = (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(3),
	combout => \inst1|Equal8~0_combout\);

\inst1|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (!\instruction_r|t_Am\(1) & ((\inst1|state.T4~q\) # (\inst1|state.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_state.T4~q\,
	combout => \inst1|Selector4~0_combout\);

\inst1|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector4~1_combout\ = ( \inst1|state.T3~q\ & ( \inst1|Selector4~0_combout\ & ( (\instruction_r|t_Am\(0) & (\inst1|Equal8~0_combout\ & ((!\instruction_r|t_OP\(4)) # (\instruction_r|t_OP\(2))))) ) ) ) # ( !\inst1|state.T3~q\ & ( 
-- \inst1|Selector4~0_combout\ & ( (\instruction_r|t_Am\(0) & (\instruction_r|t_OP\(4) & (\instruction_r|t_OP\(2) & \inst1|Equal8~0_combout\))) ) ) ) # ( \inst1|state.T3~q\ & ( !\inst1|Selector4~0_combout\ & ( (\instruction_r|t_Am\(0) & 
-- (!\instruction_r|t_OP\(4) & \inst1|Equal8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \instruction_r|ALT_INV_t_OP\(4),
	datac => \instruction_r|ALT_INV_t_OP\(2),
	datad => \inst1|ALT_INV_Equal8~0_combout\,
	datae => \inst1|ALT_INV_state.T3~q\,
	dataf => \inst1|ALT_INV_Selector4~0_combout\,
	combout => \inst1|Selector4~1_combout\);

\inst1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & (!\instruction_r|t_OP\(5) $ (\instruction_r|t_OP\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000010000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Selector3~0_combout\);

\inst1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = ( !\instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux14~0_combout\);

\inst1|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = ( \inst1|state.T3~q\ & ( \inst1|state.T4~q\ & ( ((!\instruction_r|t_Am\(1) & ((\inst1|Mux14~0_combout\) # (\inst1|Equal6~0_combout\)))) # (\inst1|Selector3~0_combout\) ) ) ) # ( !\inst1|state.T3~q\ & ( \inst1|state.T4~q\ & ( 
-- (!\instruction_r|t_Am\(1) & \inst1|Equal6~0_combout\) ) ) ) # ( \inst1|state.T3~q\ & ( !\inst1|state.T4~q\ & ( ((!\instruction_r|t_Am\(1) & \inst1|Mux14~0_combout\)) # (\inst1|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111011101100001010000010100011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_Selector3~0_combout\,
	datac => \inst1|ALT_INV_Equal6~0_combout\,
	datad => \inst1|ALT_INV_Mux14~0_combout\,
	datae => \inst1|ALT_INV_state.T3~q\,
	dataf => \inst1|ALT_INV_state.T4~q\,
	combout => \inst1|Selector3~1_combout\);

\inst3|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & !\inst1|Selector4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux0~1_combout\);

\inst1|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal12~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal12~0_combout\);

\inst1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~1_combout\ = (\instruction_r|t_Am\(0) & (((!\instruction_r|t_Am\(1) & \inst1|Mux14~0_combout\)) # (\inst1|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011000000110010001100000011001000110000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal12~0_combout\,
	datad => \inst1|ALT_INV_Mux14~0_combout\,
	combout => \inst1|Mux14~1_combout\);

\inst5|regs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][10]~q\);

\inst5|regs[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][10]~q\);

\inst5|regs[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][10]~q\);

\inst5|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux37~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][10]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][10]~q\,
	datab => \inst5|ALT_INV_regs[4][10]~q\,
	datac => \inst5|ALT_INV_regs[8][10]~q\,
	datad => \inst5|ALT_INV_regs[12][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux37~0_combout\);

\inst5|regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][10]~q\);

\inst5|regs[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][10]~q\);

\inst5|regs[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][10]~q\);

\inst5|regs[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][10]~q\);

\inst5|Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux37~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][10]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][10]~q\,
	datab => \inst5|ALT_INV_regs[5][10]~q\,
	datac => \inst5|ALT_INV_regs[9][10]~q\,
	datad => \inst5|ALT_INV_regs[13][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux37~1_combout\);

\inst5|regs[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][10]~q\);

\inst5|regs[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][10]~q\);

\inst5|regs[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][10]~q\);

\inst5|regs[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][10]~q\);

\inst5|Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux37~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][10]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][10]~q\,
	datab => \inst5|ALT_INV_regs[6][10]~q\,
	datac => \inst5|ALT_INV_regs[10][10]~q\,
	datad => \inst5|ALT_INV_regs[14][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux37~2_combout\);

\inst5|regs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][10]~q\);

\inst5|regs[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][10]~q\);

\inst5|regs[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][10]~q\);

\inst5|regs[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][10]~q\);

\inst5|Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux37~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][10]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][10]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][10]~q\,
	datab => \inst5|ALT_INV_regs[7][10]~q\,
	datac => \inst5|ALT_INV_regs[11][10]~q\,
	datad => \inst5|ALT_INV_regs[15][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux37~3_combout\);

\inst5|Mux37~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux37~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux37~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux37~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux37~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux37~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux37~0_combout\,
	datab => \inst5|ALT_INV_Mux37~1_combout\,
	datac => \inst5|ALT_INV_Mux37~2_combout\,
	datad => \inst5|ALT_INV_Mux37~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux37~4_combout\);

\inst1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (!\instruction_r|t_Am\(0)) # (!\inst1|Equal16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	combout => \inst1|Mux11~0_combout\);

\program_counter|tempIncr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[0]~15_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(0));

\inst2|output_signal[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[0]~15_combout\ = ( \op1|reg_out\(0) & ( (!\program_counter|tempIncr\(0)) # ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) ) ) # ( !\op1|reg_out\(0) & ( (!\program_counter|tempIncr\(0) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111110000000111111110000000001111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(0),
	datae => \op1|ALT_INV_reg_out\(0),
	combout => \inst2|output_signal[0]~15_combout\);

\program_counter|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~57_sumout\ = SUM(( \inst2|output_signal[0]~15_combout\ ) + ( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(1))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & ((\op1|reg_out\(1)))) # 
-- (\inst1|Mux11~0_combout\ & (\program_counter|tempIncr\(1))))) ) + ( !VCC ))
-- \program_counter|Add0~58\ = CARRY(( \inst2|output_signal[0]~15_combout\ ) + ( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(1))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & ((\op1|reg_out\(1)))) # (\inst1|Mux11~0_combout\ & 
-- (\program_counter|tempIncr\(1))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \program_counter|ALT_INV_tempIncr\(1),
	datad => \inst2|ALT_INV_output_signal[0]~15_combout\,
	dataf => \op1|ALT_INV_reg_out\(1),
	cin => GND,
	sumout => \program_counter|Add0~57_sumout\,
	cout => \program_counter|Add0~58\);

\program_counter|tempIncr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~57_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(1));

\program_counter|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~53_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(2))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & ((\op1|reg_out\(2)))) # (\inst1|Mux11~0_combout\ & (\program_counter|tempIncr\(2))))) ) 
-- + ( GND ) + ( \program_counter|Add0~58\ ))
-- \program_counter|Add0~54\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(2))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & ((\op1|reg_out\(2)))) # (\inst1|Mux11~0_combout\ & (\program_counter|tempIncr\(2))))) ) + ( 
-- GND ) + ( \program_counter|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \program_counter|ALT_INV_tempIncr\(2),
	datad => \op1|ALT_INV_reg_out\(2),
	cin => \program_counter|Add0~58\,
	sumout => \program_counter|Add0~53_sumout\,
	cout => \program_counter|Add0~54\);

\program_counter|tempIncr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~53_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(2));

\program_counter|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~49_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(3))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(3))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(3)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~54\ ))
-- \program_counter|Add0~50\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(3))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(3))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(3)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(3),
	datad => \program_counter|ALT_INV_tempIncr\(3),
	cin => \program_counter|Add0~54\,
	sumout => \program_counter|Add0~49_sumout\,
	cout => \program_counter|Add0~50\);

\program_counter|tempIncr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~49_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(3));

\program_counter|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~45_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(4))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(4))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(4)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~50\ ))
-- \program_counter|Add0~46\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(4))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(4))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(4)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(4),
	datad => \program_counter|ALT_INV_tempIncr\(4),
	cin => \program_counter|Add0~50\,
	sumout => \program_counter|Add0~45_sumout\,
	cout => \program_counter|Add0~46\);

\program_counter|tempIncr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~45_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(4));

\program_counter|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~41_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(5))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(5))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(5)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~46\ ))
-- \program_counter|Add0~42\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(5))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(5))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(5)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(5),
	datad => \program_counter|ALT_INV_tempIncr\(5),
	cin => \program_counter|Add0~46\,
	sumout => \program_counter|Add0~41_sumout\,
	cout => \program_counter|Add0~42\);

\program_counter|tempIncr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~41_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(5));

\program_counter|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~37_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(6))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(6))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(6)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~42\ ))
-- \program_counter|Add0~38\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(6))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(6))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(6)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(6),
	datad => \program_counter|ALT_INV_tempIncr\(6),
	cin => \program_counter|Add0~42\,
	sumout => \program_counter|Add0~37_sumout\,
	cout => \program_counter|Add0~38\);

\program_counter|tempIncr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~37_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(6));

\program_counter|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~33_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(7))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(7))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(7)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~38\ ))
-- \program_counter|Add0~34\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(7))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(7))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(7)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(7),
	datad => \program_counter|ALT_INV_tempIncr\(7),
	cin => \program_counter|Add0~38\,
	sumout => \program_counter|Add0~33_sumout\,
	cout => \program_counter|Add0~34\);

\program_counter|tempIncr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~33_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(7));

\program_counter|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~29_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(8))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(8))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(8)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~34\ ))
-- \program_counter|Add0~30\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(8))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(8))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(8)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(8),
	datad => \program_counter|ALT_INV_tempIncr\(8),
	cin => \program_counter|Add0~34\,
	sumout => \program_counter|Add0~29_sumout\,
	cout => \program_counter|Add0~30\);

\program_counter|tempIncr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~29_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(8));

\program_counter|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~25_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(9))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(9))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(9)))))) ) 
-- + ( GND ) + ( \program_counter|Add0~30\ ))
-- \program_counter|Add0~26\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(9))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(9))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(9)))))) ) + ( 
-- GND ) + ( \program_counter|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(9),
	datad => \program_counter|ALT_INV_tempIncr\(9),
	cin => \program_counter|Add0~30\,
	sumout => \program_counter|Add0~25_sumout\,
	cout => \program_counter|Add0~26\);

\program_counter|tempIncr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~25_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(9));

\program_counter|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~21_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(10))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(10))) # (\inst1|Mux11~0_combout\ & 
-- ((\program_counter|tempIncr\(10)))))) ) + ( GND ) + ( \program_counter|Add0~26\ ))
-- \program_counter|Add0~22\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(10))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(10))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(10)))))) ) + 
-- ( GND ) + ( \program_counter|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(10),
	datad => \program_counter|ALT_INV_tempIncr\(10),
	cin => \program_counter|Add0~26\,
	sumout => \program_counter|Add0~21_sumout\,
	cout => \program_counter|Add0~22\);

\program_counter|tempIncr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~21_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(10));

\inst2|output_signal[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[10]~5_combout\ = ( \op1|reg_out\(10) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(10)) ) ) # ( !\op1|reg_out\(10) & ( (\program_counter|tempIncr\(10) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(10),
	datae => \op1|ALT_INV_reg_out\(10),
	combout => \inst2|output_signal[10]~5_combout\);

\inst1|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal15~0_combout\ = ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal15~0_combout\);

\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) $ (\instruction_r|t_OP\(4)))) # (\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100000010000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux5~0_combout\);

\inst1|alu_op2_sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[0]~0_combout\ = ( \inst1|Equal15~0_combout\ & ( \inst1|Mux5~0_combout\ & ( (\inst1|state.T2~q\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Equal15~0_combout\ & ( \inst1|Mux5~0_combout\ & ( 
-- (\inst1|state.T2~q\ & ((!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & \inst1|Equal14~0_combout\)))) ) ) ) # ( \inst1|Equal15~0_combout\ & ( !\inst1|Mux5~0_combout\ & ( 
-- (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & \inst1|state.T2~q\)) ) ) ) # ( !\inst1|Equal15~0_combout\ & ( !\inst1|Mux5~0_combout\ & ( (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & (\inst1|state.T2~q\ & \inst1|Equal14~0_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001000000010000000010000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T2~q\,
	datad => \inst1|ALT_INV_Equal14~0_combout\,
	datae => \inst1|ALT_INV_Equal15~0_combout\,
	dataf => \inst1|ALT_INV_Mux5~0_combout\,
	combout => \inst1|alu_op2_sel[0]~0_combout\);

\inst1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal2~0_combout\);

\inst1|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal13~0_combout\ = ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(4) & \instruction_r|t_OP\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(4),
	datad => \instruction_r|ALT_INV_t_OP\(3),
	datae => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal13~0_combout\);

\inst1|alu_op2_sel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[1]~1_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|alu_op2_sel[1]~1_combout\);

\inst1|alu_op2_sel[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[1]~2_combout\ = ( !\inst1|Equal12~0_combout\ & ( \inst1|alu_op2_sel[1]~1_combout\ & ( (\instruction_r|t_Am\(1) & (!\inst1|Equal15~0_combout\ & ((!\inst1|Equal13~0_combout\) # (\instruction_r|t_OP\(1))))) ) ) ) # ( 
-- \inst1|Equal12~0_combout\ & ( !\inst1|alu_op2_sel[1]~1_combout\ & ( (!\instruction_r|t_Am\(1) & !\inst1|Equal15~0_combout\) ) ) ) # ( !\inst1|Equal12~0_combout\ & ( !\inst1|alu_op2_sel[1]~1_combout\ & ( (!\inst1|Equal15~0_combout\ & 
-- ((!\instruction_r|t_Am\(1)) # ((!\inst1|Equal13~0_combout\) # (\instruction_r|t_OP\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110000101000001010000001010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_OP\(1),
	datac => \inst1|ALT_INV_Equal15~0_combout\,
	datad => \inst1|ALT_INV_Equal13~0_combout\,
	datae => \inst1|ALT_INV_Equal12~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~1_combout\,
	combout => \inst1|alu_op2_sel[1]~2_combout\);

\inst1|alu_op2_sel[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[1]~3_combout\ = ( \inst1|alu_op2_sel[1]~2_combout\ & ( (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & (\inst1|state.T2~q\ & \inst1|Equal2~0_combout\))) ) ) # ( !\inst1|alu_op2_sel[1]~2_combout\ & ( (\inst1|state.T2~q\ & 
-- (((\instruction_r|t_Am\(1) & \inst1|Equal2~0_combout\)) # (\instruction_r|t_Am\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000000000010000000011000001110000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T2~q\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \inst1|alu_op2_sel[1]~3_combout\);

\op2|reg_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~6_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[10]~5_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux37~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(10) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux21~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux21~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(10),
	datac => \inst5|ALT_INV_Mux37~4_combout\,
	datad => \inst2|ALT_INV_output_signal[10]~5_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~6_combout\);

\inst1|op2_wr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op2_wr~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(4)) # (\instruction_r|t_OP\(5))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & 
-- (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101000000010000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|op2_wr~0_combout\);

\inst1|op2_wr~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op2_wr~1_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( 
-- (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(0) & 
-- (!\instruction_r|t_OP\(5) $ (\instruction_r|t_OP\(4)))) # (\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(4))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(5) & 
-- (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000100100000010000010000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|op2_wr~1_combout\);

\inst1|op2_wr~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op2_wr~2_combout\ = ( \inst1|Equal2~0_combout\ & ( \inst1|op2_wr~1_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0)) # ((\inst1|op2_wr~0_combout\) # 
-- (\inst1|Equal15~0_combout\)))) ) ) ) # ( !\inst1|Equal2~0_combout\ & ( \inst1|op2_wr~1_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & (((\instruction_r|t_Am\(0) & \inst1|op2_wr~0_combout\)) # 
-- (\inst1|Equal15~0_combout\))) ) ) ) # ( \inst1|Equal2~0_combout\ & ( !\inst1|op2_wr~1_combout\ & ( (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0)) # ((\inst1|op2_wr~0_combout\) # (\inst1|Equal15~0_combout\)))) ) ) ) # ( !\inst1|Equal2~0_combout\ & 
-- ( !\inst1|op2_wr~1_combout\ & ( (\instruction_r|t_Am\(1) & (((\instruction_r|t_Am\(0) & \inst1|op2_wr~0_combout\)) # (\inst1|Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101010001010101010100100111001101110110011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal15~0_combout\,
	datad => \inst1|ALT_INV_op2_wr~0_combout\,
	datae => \inst1|ALT_INV_Equal2~0_combout\,
	dataf => \inst1|ALT_INV_op2_wr~1_combout\,
	combout => \inst1|op2_wr~2_combout\);

\op2|reg_out[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out[8]~1_combout\ = (!\inst1|state.T0~q\) # ((\inst1|state.T2~q\ & \inst1|op2_wr~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T0~q\,
	datab => \inst1|ALT_INV_state.T2~q\,
	datac => \inst1|ALT_INV_op2_wr~2_combout\,
	combout => \op2|reg_out[8]~1_combout\);

\op2|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~6_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(10));

\inst5|regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][9]~q\);

\inst5|regs[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][9]~q\);

\inst5|regs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][9]~q\);

\inst5|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux38~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][9]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[1][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][9]~q\,
	datab => \inst5|ALT_INV_regs[1][9]~q\,
	datac => \inst5|ALT_INV_regs[2][9]~q\,
	datad => \inst5|ALT_INV_regs[3][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux38~0_combout\);

\inst5|regs[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][9]~q\);

\inst5|regs[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][9]~q\);

\inst5|regs[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][9]~q\);

\inst5|regs[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][9]~q\);

\inst5|Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux38~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][9]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[5][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][9]~q\,
	datab => \inst5|ALT_INV_regs[5][9]~q\,
	datac => \inst5|ALT_INV_regs[6][9]~q\,
	datad => \inst5|ALT_INV_regs[7][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux38~1_combout\);

\inst5|regs[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][9]~q\);

\inst5|regs[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][9]~q\);

\inst5|regs[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][9]~q\);

\inst5|regs[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][9]~q\);

\inst5|Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux38~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][9]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][9]~q\,
	datab => \inst5|ALT_INV_regs[9][9]~q\,
	datac => \inst5|ALT_INV_regs[10][9]~q\,
	datad => \inst5|ALT_INV_regs[11][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux38~2_combout\);

\inst5|regs[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][9]~q\);

\inst5|regs[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][9]~q\);

\inst5|regs[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][9]~q\);

\inst5|regs[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][9]~q\);

\inst5|Mux38~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux38~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][9]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][9]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][9]~q\,
	datab => \inst5|ALT_INV_regs[13][9]~q\,
	datac => \inst5|ALT_INV_regs[14][9]~q\,
	datad => \inst5|ALT_INV_regs[15][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux38~3_combout\);

\inst5|Mux38~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux38~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux38~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux38~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux38~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux38~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux38~0_combout\,
	datab => \inst5|ALT_INV_Mux38~1_combout\,
	datac => \inst5|ALT_INV_Mux38~2_combout\,
	datad => \inst5|ALT_INV_Mux38~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux38~4_combout\);

\inst2|output_signal[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[9]~6_combout\ = ( \op1|reg_out\(9) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(9)) ) ) # ( !\op1|reg_out\(9) & ( (\program_counter|tempIncr\(9) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(9),
	datae => \op1|ALT_INV_reg_out\(9),
	combout => \inst2|output_signal[9]~6_combout\);

\op2|reg_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~7_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[9]~6_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux38~4_combout\ ) ) ) # ( 
-- \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(9) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux22~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux22~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(9),
	datac => \inst5|ALT_INV_Mux38~4_combout\,
	datad => \inst2|ALT_INV_output_signal[9]~6_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~7_combout\);

\op2|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~7_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(9));

\inst5|regs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][8]~q\);

\inst5|regs[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][8]~q\);

\inst5|regs[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][8]~q\);

\inst5|Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux39~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][8]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][8]~q\,
	datab => \inst5|ALT_INV_regs[4][8]~q\,
	datac => \inst5|ALT_INV_regs[8][8]~q\,
	datad => \inst5|ALT_INV_regs[12][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux39~0_combout\);

\inst5|regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][8]~q\);

\inst5|regs[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][8]~q\);

\inst5|regs[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][8]~q\);

\inst5|regs[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][8]~q\);

\inst5|Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux39~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][8]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][8]~q\,
	datab => \inst5|ALT_INV_regs[5][8]~q\,
	datac => \inst5|ALT_INV_regs[9][8]~q\,
	datad => \inst5|ALT_INV_regs[13][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux39~1_combout\);

\inst5|regs[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][8]~q\);

\inst5|regs[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][8]~q\);

\inst5|regs[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][8]~q\);

\inst5|regs[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][8]~q\);

\inst5|Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux39~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][8]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][8]~q\,
	datab => \inst5|ALT_INV_regs[6][8]~q\,
	datac => \inst5|ALT_INV_regs[10][8]~q\,
	datad => \inst5|ALT_INV_regs[14][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux39~2_combout\);

\inst5|regs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][8]~q\);

\inst5|regs[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][8]~q\);

\inst5|regs[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][8]~q\);

\inst5|regs[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][8]~q\);

\inst5|Mux39~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux39~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][8]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][8]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][8]~q\,
	datab => \inst5|ALT_INV_regs[7][8]~q\,
	datac => \inst5|ALT_INV_regs[11][8]~q\,
	datad => \inst5|ALT_INV_regs[15][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux39~3_combout\);

\inst5|Mux39~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux39~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux39~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux39~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux39~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux39~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux39~0_combout\,
	datab => \inst5|ALT_INV_Mux39~1_combout\,
	datac => \inst5|ALT_INV_Mux39~2_combout\,
	datad => \inst5|ALT_INV_Mux39~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux39~4_combout\);

\inst2|output_signal[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[8]~7_combout\ = ( \op1|reg_out\(8) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(8)) ) ) # ( !\op1|reg_out\(8) & ( (\program_counter|tempIncr\(8) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(8),
	datae => \op1|ALT_INV_reg_out\(8),
	combout => \inst2|output_signal[8]~7_combout\);

\op2|reg_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~8_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[8]~7_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux39~4_combout\ ) ) ) # ( 
-- \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(8) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux23~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux23~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(8),
	datac => \inst5|ALT_INV_Mux39~4_combout\,
	datad => \inst2|ALT_INV_output_signal[8]~7_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~8_combout\);

\op2|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~8_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(8));

\inst5|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][7]~q\);

\inst5|regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][7]~q\);

\inst5|regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][7]~q\);

\inst5|Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux40~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][7]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[1][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][7]~q\,
	datab => \inst5|ALT_INV_regs[1][7]~q\,
	datac => \inst5|ALT_INV_regs[2][7]~q\,
	datad => \inst5|ALT_INV_regs[3][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux40~0_combout\);

\inst5|regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][7]~q\);

\inst5|regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][7]~q\);

\inst5|regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][7]~q\);

\inst5|regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][7]~q\);

\inst5|Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux40~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][7]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[5][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][7]~q\,
	datab => \inst5|ALT_INV_regs[5][7]~q\,
	datac => \inst5|ALT_INV_regs[6][7]~q\,
	datad => \inst5|ALT_INV_regs[7][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux40~1_combout\);

\inst5|regs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][7]~q\);

\inst5|regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][7]~q\);

\inst5|regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][7]~q\);

\inst5|regs[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][7]~q\);

\inst5|Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux40~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][7]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][7]~q\,
	datab => \inst5|ALT_INV_regs[9][7]~q\,
	datac => \inst5|ALT_INV_regs[10][7]~q\,
	datad => \inst5|ALT_INV_regs[11][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux40~2_combout\);

\inst5|regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][7]~q\);

\inst5|regs[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][7]~q\);

\inst5|regs[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][7]~q\);

\inst5|regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][7]~q\);

\inst5|Mux40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux40~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][7]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][7]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][7]~q\,
	datab => \inst5|ALT_INV_regs[13][7]~q\,
	datac => \inst5|ALT_INV_regs[14][7]~q\,
	datad => \inst5|ALT_INV_regs[15][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux40~3_combout\);

\inst5|Mux40~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux40~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux40~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux40~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux40~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux40~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux40~0_combout\,
	datab => \inst5|ALT_INV_Mux40~1_combout\,
	datac => \inst5|ALT_INV_Mux40~2_combout\,
	datad => \inst5|ALT_INV_Mux40~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux40~4_combout\);

\inst2|output_signal[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[7]~8_combout\ = ( \op1|reg_out\(7) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(7)) ) ) # ( !\op1|reg_out\(7) & ( (\program_counter|tempIncr\(7) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(7),
	datae => \op1|ALT_INV_reg_out\(7),
	combout => \inst2|output_signal[7]~8_combout\);

\op2|reg_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~9_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[7]~8_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux40~4_combout\ ) ) ) # ( 
-- \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(7) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux24~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux24~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(7),
	datac => \inst5|ALT_INV_Mux40~4_combout\,
	datad => \inst2|ALT_INV_output_signal[7]~8_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~9_combout\);

\op2|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~9_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(7));

\inst5|regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][6]~q\);

\inst5|regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][6]~q\);

\inst5|regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][6]~q\);

\inst5|Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux41~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][6]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][6]~q\,
	datab => \inst5|ALT_INV_regs[4][6]~q\,
	datac => \inst5|ALT_INV_regs[8][6]~q\,
	datad => \inst5|ALT_INV_regs[12][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux41~0_combout\);

\inst5|regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][6]~q\);

\inst5|regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][6]~q\);

\inst5|regs[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][6]~q\);

\inst5|regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][6]~q\);

\inst5|Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux41~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][6]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][6]~q\,
	datab => \inst5|ALT_INV_regs[5][6]~q\,
	datac => \inst5|ALT_INV_regs[9][6]~q\,
	datad => \inst5|ALT_INV_regs[13][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux41~1_combout\);

\inst5|regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][6]~q\);

\inst5|regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][6]~q\);

\inst5|regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][6]~q\);

\inst5|regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][6]~q\);

\inst5|Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux41~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][6]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][6]~q\,
	datab => \inst5|ALT_INV_regs[6][6]~q\,
	datac => \inst5|ALT_INV_regs[10][6]~q\,
	datad => \inst5|ALT_INV_regs[14][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux41~2_combout\);

\inst5|regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][6]~q\);

\inst5|regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][6]~q\);

\inst5|regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][6]~q\);

\inst5|regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][6]~q\);

\inst5|Mux41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux41~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][6]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][6]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][6]~q\,
	datab => \inst5|ALT_INV_regs[7][6]~q\,
	datac => \inst5|ALT_INV_regs[11][6]~q\,
	datad => \inst5|ALT_INV_regs[15][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux41~3_combout\);

\inst5|Mux41~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux41~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux41~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux41~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux41~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux41~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux41~0_combout\,
	datab => \inst5|ALT_INV_Mux41~1_combout\,
	datac => \inst5|ALT_INV_Mux41~2_combout\,
	datad => \inst5|ALT_INV_Mux41~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux41~4_combout\);

\inst2|output_signal[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[6]~9_combout\ = ( \op1|reg_out\(6) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(6)) ) ) # ( !\op1|reg_out\(6) & ( (\program_counter|tempIncr\(6) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(6),
	datae => \op1|ALT_INV_reg_out\(6),
	combout => \inst2|output_signal[6]~9_combout\);

\op2|reg_out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~10_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[6]~9_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux41~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(6) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux25~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux25~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(6),
	datac => \inst5|ALT_INV_Mux41~4_combout\,
	datad => \inst2|ALT_INV_output_signal[6]~9_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~10_combout\);

\op2|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~10_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(6));

\inst5|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][5]~q\);

\inst5|regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][5]~q\);

\inst5|regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][5]~q\);

\inst5|Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux42~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][5]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[1][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][5]~q\,
	datab => \inst5|ALT_INV_regs[1][5]~q\,
	datac => \inst5|ALT_INV_regs[2][5]~q\,
	datad => \inst5|ALT_INV_regs[3][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux42~0_combout\);

\inst5|regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][5]~q\);

\inst5|regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][5]~q\);

\inst5|regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][5]~q\);

\inst5|regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][5]~q\);

\inst5|Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux42~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][5]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[5][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][5]~q\,
	datab => \inst5|ALT_INV_regs[5][5]~q\,
	datac => \inst5|ALT_INV_regs[6][5]~q\,
	datad => \inst5|ALT_INV_regs[7][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux42~1_combout\);

\inst5|regs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][5]~q\);

\inst5|regs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][5]~q\);

\inst5|regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][5]~q\);

\inst5|regs[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][5]~q\);

\inst5|Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux42~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][5]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][5]~q\,
	datab => \inst5|ALT_INV_regs[9][5]~q\,
	datac => \inst5|ALT_INV_regs[10][5]~q\,
	datad => \inst5|ALT_INV_regs[11][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux42~2_combout\);

\inst5|regs[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][5]~q\);

\inst5|regs[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][5]~q\);

\inst5|regs[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][5]~q\);

\inst5|regs[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][5]~q\);

\inst5|Mux42~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux42~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][5]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][5]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][5]~q\,
	datab => \inst5|ALT_INV_regs[13][5]~q\,
	datac => \inst5|ALT_INV_regs[14][5]~q\,
	datad => \inst5|ALT_INV_regs[15][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux42~3_combout\);

\inst5|Mux42~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux42~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux42~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux42~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux42~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux42~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux42~0_combout\,
	datab => \inst5|ALT_INV_Mux42~1_combout\,
	datac => \inst5|ALT_INV_Mux42~2_combout\,
	datad => \inst5|ALT_INV_Mux42~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux42~4_combout\);

\inst2|output_signal[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[5]~10_combout\ = ( \op1|reg_out\(5) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(5)) ) ) # ( !\op1|reg_out\(5) & ( (\program_counter|tempIncr\(5) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(5),
	datae => \op1|ALT_INV_reg_out\(5),
	combout => \inst2|output_signal[5]~10_combout\);

\op2|reg_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~11_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[5]~10_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux42~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(5) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux26~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux26~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(5),
	datac => \inst5|ALT_INV_Mux42~4_combout\,
	datad => \inst2|ALT_INV_output_signal[5]~10_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~11_combout\);

\op2|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~11_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(5));

\inst1|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux22~0_combout\ = (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & \inst1|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal6~0_combout\,
	combout => \inst1|Mux22~0_combout\);

\inst3|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~66_cout\ = CARRY(( (!\inst1|state.T3~q\ & (((\inst1|Mux22~0_combout\ & \inst1|state.T4~q\)))) # (\inst1|state.T3~q\ & (((\inst1|Mux22~0_combout\ & \inst1|state.T4~q\)) # (\inst1|Mux14~1_combout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \inst1|ALT_INV_Mux22~0_combout\,
	datad => \inst1|ALT_INV_state.T4~q\,
	cin => GND,
	cout => \inst3|Add0~66_cout\);

\inst3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~61_sumout\ = SUM(( !\op1|reg_out\(0) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(0) ) + ( \inst3|Add0~66_cout\ ))
-- \inst3|Add0~62\ = CARRY(( !\op1|reg_out\(0) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(0) ) + ( \inst3|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(0),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(0),
	cin => \inst3|Add0~66_cout\,
	sumout => \inst3|Add0~61_sumout\,
	cout => \inst3|Add0~62\);

\inst3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~57_sumout\ = SUM(( !\op1|reg_out\(1) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(1) ) + ( \inst3|Add0~62\ ))
-- \inst3|Add0~58\ = CARRY(( !\op1|reg_out\(1) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(1) ) + ( \inst3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(1),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(1),
	cin => \inst3|Add0~62\,
	sumout => \inst3|Add0~57_sumout\,
	cout => \inst3|Add0~58\);

\inst3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~53_sumout\ = SUM(( !\op1|reg_out\(2) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(2) ) + ( \inst3|Add0~58\ ))
-- \inst3|Add0~54\ = CARRY(( !\op1|reg_out\(2) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(2) ) + ( \inst3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(2),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(2),
	cin => \inst3|Add0~58\,
	sumout => \inst3|Add0~53_sumout\,
	cout => \inst3|Add0~54\);

\inst3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~49_sumout\ = SUM(( !\op1|reg_out\(3) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(3) ) + ( \inst3|Add0~54\ ))
-- \inst3|Add0~50\ = CARRY(( !\op1|reg_out\(3) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(3) ) + ( \inst3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(3),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(3),
	cin => \inst3|Add0~54\,
	sumout => \inst3|Add0~49_sumout\,
	cout => \inst3|Add0~50\);

\inst3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~45_sumout\ = SUM(( !\op1|reg_out\(4) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(4) ) + ( \inst3|Add0~50\ ))
-- \inst3|Add0~46\ = CARRY(( !\op1|reg_out\(4) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(4) ) + ( \inst3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(4),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(4),
	cin => \inst3|Add0~50\,
	sumout => \inst3|Add0~45_sumout\,
	cout => \inst3|Add0~46\);

\inst3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~41_sumout\ = SUM(( !\op1|reg_out\(5) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(5) ) + ( \inst3|Add0~46\ ))
-- \inst3|Add0~42\ = CARRY(( !\op1|reg_out\(5) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(5) ) + ( \inst3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(5),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(5),
	cin => \inst3|Add0~46\,
	sumout => \inst3|Add0~41_sumout\,
	cout => \inst3|Add0~42\);

\inst3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~37_sumout\ = SUM(( !\op1|reg_out\(6) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(6) ) + ( \inst3|Add0~42\ ))
-- \inst3|Add0~38\ = CARRY(( !\op1|reg_out\(6) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(6) ) + ( \inst3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \op1|ALT_INV_reg_out\(6),
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \op2|ALT_INV_reg_out\(6),
	cin => \inst3|Add0~42\,
	sumout => \inst3|Add0~37_sumout\,
	cout => \inst3|Add0~38\);

\inst3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~33_sumout\ = SUM(( !\op1|reg_out\(7) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(7) ) + ( \inst3|Add0~38\ ))
-- \inst3|Add0~34\ = CARRY(( !\op1|reg_out\(7) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(7) ) + ( \inst3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(7),
	dataf => \op2|ALT_INV_reg_out\(7),
	cin => \inst3|Add0~38\,
	sumout => \inst3|Add0~33_sumout\,
	cout => \inst3|Add0~34\);

\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( !\op1|reg_out\(8) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(8) ) + ( \inst3|Add0~34\ ))
-- \inst3|Add0~30\ = CARRY(( !\op1|reg_out\(8) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(8) ) + ( \inst3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(8),
	dataf => \op2|ALT_INV_reg_out\(8),
	cin => \inst3|Add0~34\,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( !\op1|reg_out\(9) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(9) ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( !\op1|reg_out\(9) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(9) ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(9),
	dataf => \op2|ALT_INV_reg_out\(9),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( !\op1|reg_out\(10) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(10) ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( !\op1|reg_out\(10) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(10) ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(10),
	dataf => \op2|ALT_INV_reg_out\(10),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

\inst1|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector5~1_combout\ = ( \inst1|state.T3~q\ & ( (\instruction_r|t_Am\(0) & (((!\instruction_r|t_Am\(1) & \inst1|Mux14~0_combout\)) # (\inst1|Equal12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110010001100000000000000000000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal12~0_combout\,
	datad => \inst1|ALT_INV_Mux14~0_combout\,
	datae => \inst1|ALT_INV_state.T3~q\,
	combout => \inst1|Selector5~1_combout\);

\inst3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(10) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(10),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux5~0_combout\);

\inst1|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector5~2_combout\ = (\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_Selector5~1_combout\,
	combout => \inst1|Selector5~2_combout\);

\inst1|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~2_combout\ = (!\instruction_r|t_Am\(0)) # (!\inst1|Selector3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst1|Selector3~2_combout\);

\inst3|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(10) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(10) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(10),
	datab => \op2|ALT_INV_reg_out\(10),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux5~1_combout\);

\inst3|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~2_combout\ = ( \inst3|Mux5~0_combout\ & ( \inst3|Mux5~1_combout\ ) ) # ( !\inst3|Mux5~0_combout\ & ( \inst3|Mux5~1_combout\ ) ) # ( \inst3|Mux5~0_combout\ & ( !\inst3|Mux5~1_combout\ ) ) # ( !\inst3|Mux5~0_combout\ & ( !\inst3|Mux5~1_combout\ 
-- & ( (!\inst3|Mux5~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~21_sumout\)))) # (\inst3|Mux5~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~21_sumout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux5~2_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Mux0~1_combout\,
	datad => \inst3|ALT_INV_Add0~21_sumout\,
	datae => \inst3|ALT_INV_Mux5~0_combout\,
	dataf => \inst3|ALT_INV_Mux5~1_combout\,
	combout => \inst3|Mux5~2_combout\);

\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( \inst1|ld_r~2_combout\ & ( \inst1|ld_r~0_combout\ & ( (!\instruction_r|t_Am\(0) & ((!\instruction_r|t_Am\(1)) # (!\inst1|Equal14~0_combout\))) ) ) ) # ( !\inst1|ld_r~2_combout\ & ( \inst1|ld_r~0_combout\ & ( 
-- (!\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0) & (!\inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(0) & ((!\inst1|Selector3~0_combout\))))) ) ) ) # ( \inst1|ld_r~2_combout\ & ( 
-- !\inst1|ld_r~0_combout\ & ( (!\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0)) # (!\inst1|Equal14~0_combout\))) # (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & !\inst1|Equal14~0_combout\)) ) ) ) # ( !\inst1|ld_r~2_combout\ & ( 
-- !\inst1|ld_r~0_combout\ & ( (!\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal14~0_combout\)))) # (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0) & (!\inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(0) & 
-- ((!\inst1|Selector3~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111101000111010001110100011011001110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal14~0_combout\,
	datad => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_ld_r~2_combout\,
	dataf => \inst1|ALT_INV_ld_r~0_combout\,
	combout => \inst1|Mux9~0_combout\);

\sip[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(10),
	o => \sip[10]~input_o\);

\inst9|sip_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[10]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(10));

\inst5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = ( \inst9|sip_r\(10) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux5~2_combout\) ) ) # ( !\inst9|sip_r\(10) & ( (\inst3|Mux5~2_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux5~2_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(10),
	combout => \inst5|Mux5~0_combout\);

\inst5|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ & ( \inst5|Mux5~0_combout\ & ( (((\instruction_r|t_Operand\(10) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ & ( \inst5|Mux5~0_combout\ & ( ((\instruction_r|t_Operand\(10) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ & 
-- ( !\inst5|Mux5~0_combout\ & ( ((\instruction_r|t_Operand\(10) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ & ( !\inst5|Mux5~0_combout\ & ( (\instruction_r|t_Operand\(10) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(10),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a10~portbdataout\,
	dataf => \inst5|ALT_INV_Mux5~0_combout\,
	combout => \inst5|Mux5~1_combout\);

\inst5|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~2_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~2_combout\);

\inst5|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][10]~q\);

\instruction_r|t_Rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(2));

\instruction_r|t_Rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(3));

\inst5|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux21~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][10]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][10]~q\,
	datab => \inst5|ALT_INV_regs[4][10]~q\,
	datac => \inst5|ALT_INV_regs[8][10]~q\,
	datad => \inst5|ALT_INV_regs[12][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux21~0_combout\);

\inst5|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux21~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][10]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][10]~q\,
	datab => \inst5|ALT_INV_regs[5][10]~q\,
	datac => \inst5|ALT_INV_regs[9][10]~q\,
	datad => \inst5|ALT_INV_regs[13][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux21~1_combout\);

\inst5|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux21~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][10]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][10]~q\,
	datab => \inst5|ALT_INV_regs[6][10]~q\,
	datac => \inst5|ALT_INV_regs[10][10]~q\,
	datad => \inst5|ALT_INV_regs[14][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux21~2_combout\);

\inst5|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux21~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][10]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][10]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][10]~q\,
	datab => \inst5|ALT_INV_regs[7][10]~q\,
	datac => \inst5|ALT_INV_regs[11][10]~q\,
	datad => \inst5|ALT_INV_regs[15][10]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux21~3_combout\);

\instruction_r|t_Rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(0));

\instruction_r|t_Rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(1));

\inst5|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux21~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux21~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux21~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux21~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux21~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux21~0_combout\,
	datab => \inst5|ALT_INV_Mux21~1_combout\,
	datac => \inst5|ALT_INV_Mux21~2_combout\,
	datad => \inst5|ALT_INV_Mux21~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux21~4_combout\);

\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1))) ) ) ) # ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & 
-- (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(4) & ((!\instruction_r|t_OP\(0)) # (\instruction_r|t_OP\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000000000001000000010000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux3~0_combout\);

\inst1|alu_op1_sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op1_sel[0]~0_combout\ = ( \inst1|Mux3~0_combout\ & ( (\inst1|state.T2~q\ & ((!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & \inst1|Equal2~0_combout\)))) ) ) # ( 
-- !\inst1|Mux3~0_combout\ & ( (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & (\inst1|state.T2~q\ & \inst1|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000100000011000000000000001000000001000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T2~q\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \inst1|ALT_INV_Mux3~0_combout\,
	combout => \inst1|alu_op1_sel[0]~0_combout\);

\inst1|alu_op1_sel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op1_sel[1]~1_combout\ = ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|alu_op1_sel[1]~1_combout\);

\inst1|alu_op1_sel[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op1_sel[1]~2_combout\ = ( \inst1|alu_op1_sel[1]~1_combout\ & ( (\instruction_r|t_Am\(1) & (\inst1|state.T2~q\ & ((\inst1|Equal2~0_combout\) # (\instruction_r|t_Am\(0))))) ) ) # ( !\inst1|alu_op1_sel[1]~1_combout\ & ( (\instruction_r|t_Am\(1) & 
-- (!\instruction_r|t_Am\(0) & (\inst1|state.T2~q\ & \inst1|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000010000010100000000000001000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T2~q\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[1]~1_combout\,
	combout => \inst1|alu_op1_sel[1]~2_combout\);

\op1|reg_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~6_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[10]~5_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux37~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(10) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux21~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux21~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(10),
	datac => \inst5|ALT_INV_Mux37~4_combout\,
	datad => \inst2|ALT_INV_output_signal[10]~5_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~6_combout\);

\inst1|op1_wr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op1_wr~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1))) ) ) ) # ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & 
-- (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) $ (\instruction_r|t_OP\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000100000000000010000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|op1_wr~0_combout\);

\inst1|op1_wr~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op1_wr~1_combout\ = ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) $ (\instruction_r|t_OP\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|op1_wr~1_combout\);

\inst1|op1_wr~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op1_wr~2_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(5)) # (\instruction_r|t_OP\(4))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & 
-- (!\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100000001010000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|op1_wr~2_combout\);

\inst1|op1_wr~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op1_wr~3_combout\ = ( \inst1|op1_wr~2_combout\ & ( \instruction_r|t_Am\(0) ) ) # ( !\inst1|op1_wr~2_combout\ & ( (\instruction_r|t_Am\(0) & ((!\instruction_r|t_Am\(1) & (\inst1|op1_wr~0_combout\)) # (\instruction_r|t_Am\(1) & 
-- ((\inst1|op1_wr~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011001100110011001100000010000100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_op1_wr~0_combout\,
	datad => \inst1|ALT_INV_op1_wr~1_combout\,
	datae => \inst1|ALT_INV_op1_wr~2_combout\,
	combout => \inst1|op1_wr~3_combout\);

\inst1|op1_wr~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op1_wr~4_combout\ = (!\inst1|Equal15~0_combout\ & (((!\inst1|Equal14~0_combout\ & !\inst1|Equal2~0_combout\)) # (\instruction_r|t_Am\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000110100000101000011010000010100001101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal14~0_combout\,
	datac => \inst1|ALT_INV_Equal15~0_combout\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	combout => \inst1|op1_wr~4_combout\);

\op1|reg_out[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out[15]~1_combout\ = ( \inst1|op1_wr~4_combout\ & ( (!\inst1|state.T0~q\) # ((\inst1|state.T2~q\ & \inst1|op1_wr~3_combout\)) ) ) # ( !\inst1|op1_wr~4_combout\ & ( (!\inst1|state.T0~q\) # ((\inst1|state.T2~q\ & ((\inst1|op1_wr~3_combout\) # 
-- (\instruction_r|t_Am\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001111110011001100111111001101110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_state.T0~q\,
	datac => \inst1|ALT_INV_state.T2~q\,
	datad => \inst1|ALT_INV_op1_wr~3_combout\,
	datae => \inst1|ALT_INV_op1_wr~4_combout\,
	combout => \op1|reg_out[15]~1_combout\);

\op1|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~6_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(10));

\inst2|output_signal[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[1]~14_combout\ = ( \op1|reg_out\(1) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(1)) ) ) # ( !\op1|reg_out\(1) & ( (\program_counter|tempIncr\(1) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(1),
	datae => \op1|ALT_INV_reg_out\(1),
	combout => \inst2|output_signal[1]~14_combout\);

\program_counter|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[1]~14_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(1));

\inst2|output_signal[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[2]~13_combout\ = ( \op1|reg_out\(2) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(2)) ) ) # ( !\op1|reg_out\(2) & ( (\program_counter|tempIncr\(2) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(2),
	datae => \op1|ALT_INV_reg_out\(2),
	combout => \inst2|output_signal[2]~13_combout\);

\program_counter|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[2]~13_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(2));

\inst2|output_signal[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[3]~12_combout\ = ( \op1|reg_out\(3) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(3)) ) ) # ( !\op1|reg_out\(3) & ( (\program_counter|tempIncr\(3) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(3),
	datae => \op1|ALT_INV_reg_out\(3),
	combout => \inst2|output_signal[3]~12_combout\);

\program_counter|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[3]~12_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(3));

\program_counter|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[4]~11_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(4));

\inst|memory_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0002E200",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\instruction_r|t_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(2));

\inst1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal6~0_combout\ = ( !\instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal6~0_combout\);

\inst1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & (\inst1|Equal6~0_combout\ & \inst1|state.T4~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal6~0_combout\,
	datad => \inst1|ALT_INV_state.T4~q\,
	combout => \inst1|Selector5~0_combout\);

\inst3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (!\inst1|Selector5~0_combout\ & (!\inst1|Selector5~1_combout\ & !\inst1|Selector4~1_combout\))) ) ) # ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- (!\inst1|Selector5~1_combout\ & !\inst1|Selector4~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000011000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Selector5~0_combout\,
	datac => \inst1|ALT_INV_Selector5~1_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux0~0_combout\);

\inst5|regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][11]~q\);

\inst5|regs[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][11]~q\);

\inst5|regs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][11]~q\);

\inst5|Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux36~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][11]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[1][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][11]~q\,
	datab => \inst5|ALT_INV_regs[1][11]~q\,
	datac => \inst5|ALT_INV_regs[2][11]~q\,
	datad => \inst5|ALT_INV_regs[3][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux36~0_combout\);

\inst5|regs[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][11]~q\);

\inst5|regs[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][11]~q\);

\inst5|regs[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][11]~q\);

\inst5|regs[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][11]~q\);

\inst5|Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux36~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][11]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[5][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][11]~q\,
	datab => \inst5|ALT_INV_regs[5][11]~q\,
	datac => \inst5|ALT_INV_regs[6][11]~q\,
	datad => \inst5|ALT_INV_regs[7][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux36~1_combout\);

\inst5|regs[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][11]~q\);

\inst5|regs[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][11]~q\);

\inst5|regs[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][11]~q\);

\inst5|regs[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][11]~q\);

\inst5|Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux36~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][11]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][11]~q\,
	datab => \inst5|ALT_INV_regs[9][11]~q\,
	datac => \inst5|ALT_INV_regs[10][11]~q\,
	datad => \inst5|ALT_INV_regs[11][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux36~2_combout\);

\inst5|regs[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][11]~q\);

\inst5|regs[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][11]~q\);

\inst5|regs[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][11]~q\);

\inst5|regs[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][11]~q\);

\inst5|Mux36~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux36~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][11]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][11]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][11]~q\,
	datab => \inst5|ALT_INV_regs[13][11]~q\,
	datac => \inst5|ALT_INV_regs[14][11]~q\,
	datad => \inst5|ALT_INV_regs[15][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux36~3_combout\);

\inst5|Mux36~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux36~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux36~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux36~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux36~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux36~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux36~0_combout\,
	datab => \inst5|ALT_INV_Mux36~1_combout\,
	datac => \inst5|ALT_INV_Mux36~2_combout\,
	datad => \inst5|ALT_INV_Mux36~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux36~4_combout\);

\program_counter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~17_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(11))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(11))) # (\inst1|Mux11~0_combout\ & 
-- ((\program_counter|tempIncr\(11)))))) ) + ( GND ) + ( \program_counter|Add0~22\ ))
-- \program_counter|Add0~18\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(11))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(11))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(11)))))) ) + 
-- ( GND ) + ( \program_counter|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(11),
	datad => \program_counter|ALT_INV_tempIncr\(11),
	cin => \program_counter|Add0~22\,
	sumout => \program_counter|Add0~17_sumout\,
	cout => \program_counter|Add0~18\);

\program_counter|tempIncr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~17_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(11));

\inst2|output_signal[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[11]~4_combout\ = ( \op1|reg_out\(11) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(11)) ) ) # ( !\op1|reg_out\(11) & ( (\program_counter|tempIncr\(11) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(11),
	datae => \op1|ALT_INV_reg_out\(11),
	combout => \inst2|output_signal[11]~4_combout\);

\op2|reg_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~5_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[11]~4_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux36~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(11) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux20~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux20~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(11),
	datac => \inst5|ALT_INV_Mux36~4_combout\,
	datad => \inst2|ALT_INV_output_signal[11]~4_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~5_combout\);

\op2|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~5_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(11));

\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( !\op1|reg_out\(11) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(11) ) + ( \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( !\op1|reg_out\(11) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(11) ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(11),
	dataf => \op2|ALT_INV_reg_out\(11),
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

\inst3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(11) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(11),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux4~0_combout\);

\inst3|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(11) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(11) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(11),
	datab => \op2|ALT_INV_reg_out\(11),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux4~1_combout\);

\inst3|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~2_combout\ = ( \inst3|Mux4~0_combout\ & ( \inst3|Mux4~1_combout\ ) ) # ( !\inst3|Mux4~0_combout\ & ( \inst3|Mux4~1_combout\ ) ) # ( \inst3|Mux4~0_combout\ & ( !\inst3|Mux4~1_combout\ ) ) # ( !\inst3|Mux4~0_combout\ & ( !\inst3|Mux4~1_combout\ 
-- & ( (!\inst3|Mux4~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~17_sumout\)))) # (\inst3|Mux4~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~17_sumout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux4~2_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Mux0~1_combout\,
	datad => \inst3|ALT_INV_Add0~17_sumout\,
	datae => \inst3|ALT_INV_Mux4~0_combout\,
	dataf => \inst3|ALT_INV_Mux4~1_combout\,
	combout => \inst3|Mux4~2_combout\);

\sip[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(11),
	o => \sip[11]~input_o\);

\inst9|sip_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[11]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(11));

\inst5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = ( \inst9|sip_r\(11) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux4~2_combout\) ) ) # ( !\inst9|sip_r\(11) & ( (\inst3|Mux4~2_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux4~2_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(11),
	combout => \inst5|Mux4~0_combout\);

\inst5|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ & ( \inst5|Mux4~0_combout\ & ( (((\instruction_r|t_Operand\(11) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ & ( \inst5|Mux4~0_combout\ & ( ((\instruction_r|t_Operand\(11) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ & 
-- ( !\inst5|Mux4~0_combout\ & ( ((\instruction_r|t_Operand\(11) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ & ( !\inst5|Mux4~0_combout\ & ( (\instruction_r|t_Operand\(11) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(11),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a11~portbdataout\,
	dataf => \inst5|ALT_INV_Mux4~0_combout\,
	combout => \inst5|Mux4~1_combout\);

\inst5|regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][11]~q\);

\inst5|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux20~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][11]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[1][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][11]~q\,
	datab => \inst5|ALT_INV_regs[1][11]~q\,
	datac => \inst5|ALT_INV_regs[2][11]~q\,
	datad => \inst5|ALT_INV_regs[3][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux20~0_combout\);

\inst5|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux20~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][11]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[5][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][11]~q\,
	datab => \inst5|ALT_INV_regs[5][11]~q\,
	datac => \inst5|ALT_INV_regs[6][11]~q\,
	datad => \inst5|ALT_INV_regs[7][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux20~1_combout\);

\inst5|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux20~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][11]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][11]~q\,
	datab => \inst5|ALT_INV_regs[9][11]~q\,
	datac => \inst5|ALT_INV_regs[10][11]~q\,
	datad => \inst5|ALT_INV_regs[11][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux20~2_combout\);

\inst5|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux20~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][11]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][11]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][11]~q\,
	datab => \inst5|ALT_INV_regs[13][11]~q\,
	datac => \inst5|ALT_INV_regs[14][11]~q\,
	datad => \inst5|ALT_INV_regs[15][11]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux20~3_combout\);

\inst5|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux20~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux20~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux20~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux20~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux20~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux20~0_combout\,
	datab => \inst5|ALT_INV_Mux20~1_combout\,
	datac => \inst5|ALT_INV_Mux20~2_combout\,
	datad => \inst5|ALT_INV_Mux20~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux20~4_combout\);

\op1|reg_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~5_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[11]~4_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux36~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(11) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux20~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux20~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(11),
	datac => \inst5|ALT_INV_Mux36~4_combout\,
	datad => \inst2|ALT_INV_output_signal[11]~4_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~5_combout\);

\op1|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~5_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(11));

\inst|memory_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "800281A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\instruction_r|t_OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(3));

\inst1|Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal16~0_combout\ = ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal16~0_combout\);

\inst2|output_signal[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[4]~11_combout\ = ( \op1|reg_out\(4) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(4)) ) ) # ( !\op1|reg_out\(4) & ( (\program_counter|tempIncr\(4) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(4),
	datae => \op1|ALT_INV_reg_out\(4),
	combout => \inst2|output_signal[4]~11_combout\);

\op1|reg_out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~12_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[4]~11_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux43~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(4) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux27~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux27~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(4),
	datac => \inst5|ALT_INV_Mux43~4_combout\,
	datad => \inst2|ALT_INV_output_signal[4]~11_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~12_combout\);

\op1|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~12_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(4));

\inst|memory_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00142217",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\instruction_r|t_Operand[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(4));

\inst|memory_rtl_1|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00142217",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\inst3|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux11~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux11~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux11~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux11~0_combout\);

\inst3|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(4) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(4),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux11~1_combout\);

\inst3|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(4) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(4),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux11~2_combout\);

\inst3|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(4) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(4)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(4) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(4),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux11~3_combout\);

\inst3|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~4_combout\ = ( \inst3|Mux11~2_combout\ & ( \inst3|Mux11~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~45_sumout\)) # (\inst3|Mux11~1_combout\)) # (\inst3|Mux11~0_combout\) ) ) ) # ( !\inst3|Mux11~2_combout\ & ( 
-- \inst3|Mux11~3_combout\ ) ) # ( \inst3|Mux11~2_combout\ & ( !\inst3|Mux11~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~45_sumout\)) # (\inst3|Mux11~1_combout\)) # (\inst3|Mux11~0_combout\) ) ) ) # ( !\inst3|Mux11~2_combout\ & ( 
-- !\inst3|Mux11~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~45_sumout\)) # (\inst3|Mux11~1_combout\)) # (\inst3|Mux11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux11~0_combout\,
	datac => \inst3|ALT_INV_Add0~45_sumout\,
	datad => \inst3|ALT_INV_Mux11~1_combout\,
	datae => \inst3|ALT_INV_Mux11~2_combout\,
	dataf => \inst3|ALT_INV_Mux11~3_combout\,
	combout => \inst3|Mux11~4_combout\);

\sip[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(4),
	o => \sip[4]~input_o\);

\inst9|sip_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[4]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(4));

\inst5|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = ( \inst9|sip_r\(4) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux11~4_combout\) ) ) # ( !\inst9|sip_r\(4) & ( (\inst3|Mux11~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux11~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(4),
	combout => \inst5|Mux11~0_combout\);

\inst5|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux11~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ( \inst5|Mux11~0_combout\ & ( (((\instruction_r|t_Operand\(4) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ( \inst5|Mux11~0_combout\ & ( ((\instruction_r|t_Operand\(4) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ( 
-- !\inst5|Mux11~0_combout\ & ( ((\instruction_r|t_Operand\(4) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ( !\inst5|Mux11~0_combout\ & ( (\instruction_r|t_Operand\(4) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(4),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	dataf => \inst5|ALT_INV_Mux11~0_combout\,
	combout => \inst5|Mux11~1_combout\);

\inst5|regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][4]~q\);

\inst5|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux27~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][4]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][4]~q\,
	datab => \inst5|ALT_INV_regs[4][4]~q\,
	datac => \inst5|ALT_INV_regs[8][4]~q\,
	datad => \inst5|ALT_INV_regs[12][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux27~0_combout\);

\inst5|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux27~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][4]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][4]~q\,
	datab => \inst5|ALT_INV_regs[5][4]~q\,
	datac => \inst5|ALT_INV_regs[9][4]~q\,
	datad => \inst5|ALT_INV_regs[13][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux27~1_combout\);

\inst5|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux27~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][4]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][4]~q\,
	datab => \inst5|ALT_INV_regs[6][4]~q\,
	datac => \inst5|ALT_INV_regs[10][4]~q\,
	datad => \inst5|ALT_INV_regs[14][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux27~2_combout\);

\inst5|Mux27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux27~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][4]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][4]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][4]~q\,
	datab => \inst5|ALT_INV_regs[7][4]~q\,
	datac => \inst5|ALT_INV_regs[11][4]~q\,
	datad => \inst5|ALT_INV_regs[15][4]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux27~3_combout\);

\inst5|Mux27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux27~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux27~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux27~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux27~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux27~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux27~0_combout\,
	datab => \inst5|ALT_INV_Mux27~1_combout\,
	datac => \inst5|ALT_INV_Mux27~2_combout\,
	datad => \inst5|ALT_INV_Mux27~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux27~4_combout\);

\op2|reg_out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~12_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[4]~11_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux43~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(4) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux27~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux27~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(4),
	datac => \inst5|ALT_INV_Mux43~4_combout\,
	datad => \inst2|ALT_INV_output_signal[4]~11_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~12_combout\);

\op2|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~12_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(4));

\inst|memory_rtl_1|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000029A5",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\inst3|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux10~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux10~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux10~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux10~0_combout\);

\inst3|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(5) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(5),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux10~1_combout\);

\inst3|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(5) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(5),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux10~2_combout\);

\inst3|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(5) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(5)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(5) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(5),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux10~3_combout\);

\inst3|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~4_combout\ = ( \inst3|Mux10~2_combout\ & ( \inst3|Mux10~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~41_sumout\)) # (\inst3|Mux10~1_combout\)) # (\inst3|Mux10~0_combout\) ) ) ) # ( !\inst3|Mux10~2_combout\ & ( 
-- \inst3|Mux10~3_combout\ ) ) # ( \inst3|Mux10~2_combout\ & ( !\inst3|Mux10~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~41_sumout\)) # (\inst3|Mux10~1_combout\)) # (\inst3|Mux10~0_combout\) ) ) ) # ( !\inst3|Mux10~2_combout\ & ( 
-- !\inst3|Mux10~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~41_sumout\)) # (\inst3|Mux10~1_combout\)) # (\inst3|Mux10~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux10~0_combout\,
	datac => \inst3|ALT_INV_Add0~41_sumout\,
	datad => \inst3|ALT_INV_Mux10~1_combout\,
	datae => \inst3|ALT_INV_Mux10~2_combout\,
	dataf => \inst3|ALT_INV_Mux10~3_combout\,
	combout => \inst3|Mux10~4_combout\);

\sip[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(5),
	o => \sip[5]~input_o\);

\inst9|sip_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[5]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(5));

\inst5|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = ( \inst9|sip_r\(5) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux10~4_combout\) ) ) # ( !\inst9|sip_r\(5) & ( (\inst3|Mux10~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux10~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(5),
	combout => \inst5|Mux10~0_combout\);

\inst5|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux10~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ & ( \inst5|Mux10~0_combout\ & ( (((\instruction_r|t_Operand\(5) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ & ( \inst5|Mux10~0_combout\ & ( ((\instruction_r|t_Operand\(5) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ & ( 
-- !\inst5|Mux10~0_combout\ & ( ((\instruction_r|t_Operand\(5) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ & ( !\inst5|Mux10~0_combout\ & ( (\instruction_r|t_Operand\(5) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(5),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	dataf => \inst5|ALT_INV_Mux10~0_combout\,
	combout => \inst5|Mux10~1_combout\);

\inst5|regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][5]~q\);

\inst5|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux26~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][5]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[1][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][5]~q\,
	datab => \inst5|ALT_INV_regs[1][5]~q\,
	datac => \inst5|ALT_INV_regs[2][5]~q\,
	datad => \inst5|ALT_INV_regs[3][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux26~0_combout\);

\inst5|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux26~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][5]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[5][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][5]~q\,
	datab => \inst5|ALT_INV_regs[5][5]~q\,
	datac => \inst5|ALT_INV_regs[6][5]~q\,
	datad => \inst5|ALT_INV_regs[7][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux26~1_combout\);

\inst5|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux26~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][5]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][5]~q\,
	datab => \inst5|ALT_INV_regs[9][5]~q\,
	datac => \inst5|ALT_INV_regs[10][5]~q\,
	datad => \inst5|ALT_INV_regs[11][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux26~2_combout\);

\inst5|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux26~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][5]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][5]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][5]~q\,
	datab => \inst5|ALT_INV_regs[13][5]~q\,
	datac => \inst5|ALT_INV_regs[14][5]~q\,
	datad => \inst5|ALT_INV_regs[15][5]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux26~3_combout\);

\inst5|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux26~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux26~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux26~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux26~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux26~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux26~0_combout\,
	datab => \inst5|ALT_INV_Mux26~1_combout\,
	datac => \inst5|ALT_INV_Mux26~2_combout\,
	datad => \inst5|ALT_INV_Mux26~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux26~4_combout\);

\op1|reg_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~11_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[5]~10_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux42~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(5) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux26~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux26~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(5),
	datac => \inst5|ALT_INV_Mux42~4_combout\,
	datad => \inst2|ALT_INV_output_signal[5]~10_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~11_combout\);

\op1|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~11_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(5));

\inst|memory_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000029A5",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\instruction_r|t_Rz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(1));

\inst5|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~4_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & \instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~4_combout\);

\inst5|regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][3]~q\);

\inst5|regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][3]~q\);

\inst5|Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux44~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][3]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[1][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][3]~q\,
	datab => \inst5|ALT_INV_regs[1][3]~q\,
	datac => \inst5|ALT_INV_regs[2][3]~q\,
	datad => \inst5|ALT_INV_regs[3][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux44~0_combout\);

\inst5|regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][3]~q\);

\inst5|regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][3]~q\);

\inst5|regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][3]~q\);

\inst5|regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][3]~q\);

\inst5|Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux44~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][3]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[5][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][3]~q\,
	datab => \inst5|ALT_INV_regs[5][3]~q\,
	datac => \inst5|ALT_INV_regs[6][3]~q\,
	datad => \inst5|ALT_INV_regs[7][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux44~1_combout\);

\inst5|regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][3]~q\);

\inst5|regs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][3]~q\);

\inst5|regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][3]~q\);

\inst5|regs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][3]~q\);

\inst5|Mux44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux44~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][3]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][3]~q\,
	datab => \inst5|ALT_INV_regs[9][3]~q\,
	datac => \inst5|ALT_INV_regs[10][3]~q\,
	datad => \inst5|ALT_INV_regs[11][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux44~2_combout\);

\inst5|regs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][3]~q\);

\inst5|regs[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][3]~q\);

\inst5|regs[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][3]~q\);

\inst5|regs[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][3]~q\);

\inst5|Mux44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux44~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][3]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][3]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][3]~q\,
	datab => \inst5|ALT_INV_regs[13][3]~q\,
	datac => \inst5|ALT_INV_regs[14][3]~q\,
	datad => \inst5|ALT_INV_regs[15][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux44~3_combout\);

\inst5|Mux44~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux44~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux44~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux44~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux44~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux44~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux44~0_combout\,
	datab => \inst5|ALT_INV_Mux44~1_combout\,
	datac => \inst5|ALT_INV_Mux44~2_combout\,
	datad => \inst5|ALT_INV_Mux44~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux44~4_combout\);

\op1|reg_out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~13_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[3]~12_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux44~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(3) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux28~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux28~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(3),
	datac => \inst5|ALT_INV_Mux44~4_combout\,
	datad => \inst2|ALT_INV_output_signal[3]~12_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~13_combout\);

\op1|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~13_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(3));

\inst|memory_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80009E12",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\instruction_r|t_Operand[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(3));

\inst|memory_rtl_1|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80009E12",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\inst3|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux12~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux12~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux12~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux12~0_combout\);

\inst3|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(3) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(3),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux12~1_combout\);

\inst3|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(3) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(3),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux12~2_combout\);

\inst3|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(3) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(3)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(3) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(3),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux12~3_combout\);

\inst3|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~4_combout\ = ( \inst3|Mux12~2_combout\ & ( \inst3|Mux12~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~49_sumout\)) # (\inst3|Mux12~1_combout\)) # (\inst3|Mux12~0_combout\) ) ) ) # ( !\inst3|Mux12~2_combout\ & ( 
-- \inst3|Mux12~3_combout\ ) ) # ( \inst3|Mux12~2_combout\ & ( !\inst3|Mux12~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~49_sumout\)) # (\inst3|Mux12~1_combout\)) # (\inst3|Mux12~0_combout\) ) ) ) # ( !\inst3|Mux12~2_combout\ & ( 
-- !\inst3|Mux12~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~49_sumout\)) # (\inst3|Mux12~1_combout\)) # (\inst3|Mux12~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux12~0_combout\,
	datac => \inst3|ALT_INV_Add0~49_sumout\,
	datad => \inst3|ALT_INV_Mux12~1_combout\,
	datae => \inst3|ALT_INV_Mux12~2_combout\,
	dataf => \inst3|ALT_INV_Mux12~3_combout\,
	combout => \inst3|Mux12~4_combout\);

\sip[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(3),
	o => \sip[3]~input_o\);

\inst9|sip_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[3]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(3));

\inst5|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux12~0_combout\ = ( \inst9|sip_r\(3) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux12~4_combout\) ) ) # ( !\inst9|sip_r\(3) & ( (\inst3|Mux12~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux12~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(3),
	combout => \inst5|Mux12~0_combout\);

\inst5|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux12~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ & ( \inst5|Mux12~0_combout\ & ( (((\instruction_r|t_Operand\(3) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ & ( \inst5|Mux12~0_combout\ & ( ((\instruction_r|t_Operand\(3) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ & ( 
-- !\inst5|Mux12~0_combout\ & ( ((\instruction_r|t_Operand\(3) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ & ( !\inst5|Mux12~0_combout\ & ( (\instruction_r|t_Operand\(3) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(3),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	dataf => \inst5|ALT_INV_Mux12~0_combout\,
	combout => \inst5|Mux12~1_combout\);

\inst5|regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][3]~q\);

\inst5|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux28~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][3]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[1][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][3]~q\,
	datab => \inst5|ALT_INV_regs[1][3]~q\,
	datac => \inst5|ALT_INV_regs[2][3]~q\,
	datad => \inst5|ALT_INV_regs[3][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux28~0_combout\);

\inst5|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux28~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][3]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[5][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][3]~q\,
	datab => \inst5|ALT_INV_regs[5][3]~q\,
	datac => \inst5|ALT_INV_regs[6][3]~q\,
	datad => \inst5|ALT_INV_regs[7][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux28~1_combout\);

\inst5|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux28~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][3]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][3]~q\,
	datab => \inst5|ALT_INV_regs[9][3]~q\,
	datac => \inst5|ALT_INV_regs[10][3]~q\,
	datad => \inst5|ALT_INV_regs[11][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux28~2_combout\);

\inst5|Mux28~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux28~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][3]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][3]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][3]~q\,
	datab => \inst5|ALT_INV_regs[13][3]~q\,
	datac => \inst5|ALT_INV_regs[14][3]~q\,
	datad => \inst5|ALT_INV_regs[15][3]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux28~3_combout\);

\inst5|Mux28~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux28~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux28~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux28~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux28~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux28~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux28~0_combout\,
	datab => \inst5|ALT_INV_Mux28~1_combout\,
	datac => \inst5|ALT_INV_Mux28~2_combout\,
	datad => \inst5|ALT_INV_Mux28~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux28~4_combout\);

\op2|reg_out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~13_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[3]~12_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux44~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(3) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux28~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux28~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(3),
	datac => \inst5|ALT_INV_Mux44~4_combout\,
	datad => \inst2|ALT_INV_output_signal[3]~12_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~13_combout\);

\op2|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~13_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(3));

\inst|memory_rtl_1|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "8000C805",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\inst3|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux9~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux9~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux9~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux9~0_combout\);

\inst3|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(6) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(6),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux9~1_combout\);

\inst3|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(6) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(6),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux9~2_combout\);

\inst3|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(6) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(6)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(6) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(6),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux9~3_combout\);

\inst3|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~4_combout\ = ( \inst3|Mux9~2_combout\ & ( \inst3|Mux9~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~37_sumout\)) # (\inst3|Mux9~1_combout\)) # (\inst3|Mux9~0_combout\) ) ) ) # ( !\inst3|Mux9~2_combout\ & ( \inst3|Mux9~3_combout\ ) ) # 
-- ( \inst3|Mux9~2_combout\ & ( !\inst3|Mux9~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~37_sumout\)) # (\inst3|Mux9~1_combout\)) # (\inst3|Mux9~0_combout\) ) ) ) # ( !\inst3|Mux9~2_combout\ & ( !\inst3|Mux9~3_combout\ & ( 
-- (((\inst3|Mux0~1_combout\ & \inst3|Add0~37_sumout\)) # (\inst3|Mux9~1_combout\)) # (\inst3|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux9~0_combout\,
	datac => \inst3|ALT_INV_Add0~37_sumout\,
	datad => \inst3|ALT_INV_Mux9~1_combout\,
	datae => \inst3|ALT_INV_Mux9~2_combout\,
	dataf => \inst3|ALT_INV_Mux9~3_combout\,
	combout => \inst3|Mux9~4_combout\);

\sip[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(6),
	o => \sip[6]~input_o\);

\inst9|sip_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[6]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(6));

\inst5|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux9~1_combout\ = ( \inst9|sip_r\(6) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux9~4_combout\) ) ) # ( !\inst9|sip_r\(6) & ( (\inst3|Mux9~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux9~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(6),
	combout => \inst5|Mux9~1_combout\);

\inst5|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux9~2_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ( \inst5|Mux9~1_combout\ & ( (((\instruction_r|t_Operand\(6) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ( \inst5|Mux9~1_combout\ & ( ((\instruction_r|t_Operand\(6) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ( 
-- !\inst5|Mux9~1_combout\ & ( ((\instruction_r|t_Operand\(6) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ( !\inst5|Mux9~1_combout\ & ( (\instruction_r|t_Operand\(6) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(6),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	dataf => \inst5|ALT_INV_Mux9~1_combout\,
	combout => \inst5|Mux9~2_combout\);

\inst5|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][6]~q\);

\inst5|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux25~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][6]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][6]~q\,
	datab => \inst5|ALT_INV_regs[4][6]~q\,
	datac => \inst5|ALT_INV_regs[8][6]~q\,
	datad => \inst5|ALT_INV_regs[12][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux25~0_combout\);

\inst5|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux25~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][6]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][6]~q\,
	datab => \inst5|ALT_INV_regs[5][6]~q\,
	datac => \inst5|ALT_INV_regs[9][6]~q\,
	datad => \inst5|ALT_INV_regs[13][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux25~1_combout\);

\inst5|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux25~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][6]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][6]~q\,
	datab => \inst5|ALT_INV_regs[6][6]~q\,
	datac => \inst5|ALT_INV_regs[10][6]~q\,
	datad => \inst5|ALT_INV_regs[14][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux25~2_combout\);

\inst5|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux25~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][6]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][6]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][6]~q\,
	datab => \inst5|ALT_INV_regs[7][6]~q\,
	datac => \inst5|ALT_INV_regs[11][6]~q\,
	datad => \inst5|ALT_INV_regs[15][6]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux25~3_combout\);

\inst5|Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux25~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux25~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux25~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux25~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux25~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux25~0_combout\,
	datab => \inst5|ALT_INV_Mux25~1_combout\,
	datac => \inst5|ALT_INV_Mux25~2_combout\,
	datad => \inst5|ALT_INV_Mux25~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux25~4_combout\);

\op1|reg_out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~10_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[6]~9_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux41~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(6) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux25~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux25~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(6),
	datac => \inst5|ALT_INV_Mux41~4_combout\,
	datad => \inst2|ALT_INV_output_signal[6]~9_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~10_combout\);

\op1|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~10_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(6));

\inst|memory_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "8000C805",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\instruction_r|t_Rz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(2));

\inst5|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~8_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~8_combout\);

\inst5|regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][2]~q\);

\inst5|regs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][2]~q\);

\inst5|Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux45~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][2]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][2]~q\,
	datab => \inst5|ALT_INV_regs[4][2]~q\,
	datac => \inst5|ALT_INV_regs[8][2]~q\,
	datad => \inst5|ALT_INV_regs[12][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux45~0_combout\);

\inst5|regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][2]~q\);

\inst5|regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][2]~q\);

\inst5|regs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][2]~q\);

\inst5|regs[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][2]~q\);

\inst5|Mux45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux45~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][2]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][2]~q\,
	datab => \inst5|ALT_INV_regs[5][2]~q\,
	datac => \inst5|ALT_INV_regs[9][2]~q\,
	datad => \inst5|ALT_INV_regs[13][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux45~1_combout\);

\inst5|regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][2]~q\);

\inst5|regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][2]~q\);

\inst5|regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][2]~q\);

\inst5|regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][2]~q\);

\inst5|Mux45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux45~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][2]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][2]~q\,
	datab => \inst5|ALT_INV_regs[6][2]~q\,
	datac => \inst5|ALT_INV_regs[10][2]~q\,
	datad => \inst5|ALT_INV_regs[14][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux45~2_combout\);

\inst5|regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][2]~q\);

\inst5|regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][2]~q\);

\inst5|regs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][2]~q\);

\inst5|regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][2]~q\);

\inst5|Mux45~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux45~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][2]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][2]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][2]~q\,
	datab => \inst5|ALT_INV_regs[7][2]~q\,
	datac => \inst5|ALT_INV_regs[11][2]~q\,
	datad => \inst5|ALT_INV_regs[15][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux45~3_combout\);

\inst5|Mux45~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux45~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux45~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux45~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux45~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux45~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux45~0_combout\,
	datab => \inst5|ALT_INV_Mux45~1_combout\,
	datac => \inst5|ALT_INV_Mux45~2_combout\,
	datad => \inst5|ALT_INV_Mux45~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux45~4_combout\);

\op1|reg_out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~14_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[2]~13_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux45~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(2) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux29~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux29~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(2),
	datac => \inst5|ALT_INV_Mux45~4_combout\,
	datad => \inst2|ALT_INV_output_signal[2]~13_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~14_combout\);

\op1|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~14_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(2));

\inst|memory_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "8014C812",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\instruction_r|t_Operand[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(2));

\inst|memory_rtl_1|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "8014C812",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\inst3|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux13~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux13~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux13~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux13~0_combout\);

\inst3|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(2) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(2),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux13~1_combout\);

\inst3|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(2) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(2),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux13~2_combout\);

\inst3|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(2) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(2)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(2) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(2),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux13~3_combout\);

\inst3|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~4_combout\ = ( \inst3|Mux13~2_combout\ & ( \inst3|Mux13~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~53_sumout\)) # (\inst3|Mux13~1_combout\)) # (\inst3|Mux13~0_combout\) ) ) ) # ( !\inst3|Mux13~2_combout\ & ( 
-- \inst3|Mux13~3_combout\ ) ) # ( \inst3|Mux13~2_combout\ & ( !\inst3|Mux13~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~53_sumout\)) # (\inst3|Mux13~1_combout\)) # (\inst3|Mux13~0_combout\) ) ) ) # ( !\inst3|Mux13~2_combout\ & ( 
-- !\inst3|Mux13~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~53_sumout\)) # (\inst3|Mux13~1_combout\)) # (\inst3|Mux13~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux13~0_combout\,
	datac => \inst3|ALT_INV_Add0~53_sumout\,
	datad => \inst3|ALT_INV_Mux13~1_combout\,
	datae => \inst3|ALT_INV_Mux13~2_combout\,
	dataf => \inst3|ALT_INV_Mux13~3_combout\,
	combout => \inst3|Mux13~4_combout\);

\sip[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(2),
	o => \sip[2]~input_o\);

\inst9|sip_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[2]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(2));

\inst5|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux13~0_combout\ = ( \inst9|sip_r\(2) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux13~4_combout\) ) ) # ( !\inst9|sip_r\(2) & ( (\inst3|Mux13~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux13~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(2),
	combout => \inst5|Mux13~0_combout\);

\inst5|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux13~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ( \inst5|Mux13~0_combout\ & ( (((\instruction_r|t_Operand\(2) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ( \inst5|Mux13~0_combout\ & ( ((\instruction_r|t_Operand\(2) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ( 
-- !\inst5|Mux13~0_combout\ & ( ((\instruction_r|t_Operand\(2) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ( !\inst5|Mux13~0_combout\ & ( (\instruction_r|t_Operand\(2) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(2),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	dataf => \inst5|ALT_INV_Mux13~0_combout\,
	combout => \inst5|Mux13~1_combout\);

\inst5|regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][2]~q\);

\inst5|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux29~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][2]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][2]~q\,
	datab => \inst5|ALT_INV_regs[4][2]~q\,
	datac => \inst5|ALT_INV_regs[8][2]~q\,
	datad => \inst5|ALT_INV_regs[12][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux29~0_combout\);

\inst5|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux29~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][2]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][2]~q\,
	datab => \inst5|ALT_INV_regs[5][2]~q\,
	datac => \inst5|ALT_INV_regs[9][2]~q\,
	datad => \inst5|ALT_INV_regs[13][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux29~1_combout\);

\inst5|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux29~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][2]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][2]~q\,
	datab => \inst5|ALT_INV_regs[6][2]~q\,
	datac => \inst5|ALT_INV_regs[10][2]~q\,
	datad => \inst5|ALT_INV_regs[14][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux29~2_combout\);

\inst5|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux29~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][2]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][2]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][2]~q\,
	datab => \inst5|ALT_INV_regs[7][2]~q\,
	datac => \inst5|ALT_INV_regs[11][2]~q\,
	datad => \inst5|ALT_INV_regs[15][2]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux29~3_combout\);

\inst5|Mux29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux29~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux29~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux29~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux29~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux29~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux29~0_combout\,
	datab => \inst5|ALT_INV_Mux29~1_combout\,
	datac => \inst5|ALT_INV_Mux29~2_combout\,
	datad => \inst5|ALT_INV_Mux29~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux29~4_combout\);

\op2|reg_out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~14_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[2]~13_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux45~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(2) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux29~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux29~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(2),
	datac => \inst5|ALT_INV_Mux45~4_combout\,
	datad => \inst2|ALT_INV_output_signal[2]~13_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~14_combout\);

\op2|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~14_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(2));

\inst|memory_rtl_1|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80008805",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\inst3|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux8~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux8~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux8~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux8~0_combout\);

\inst3|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(7) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(7),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux8~1_combout\);

\inst3|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(7) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(7),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux8~2_combout\);

\inst3|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(7) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(7)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(7) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(7),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux8~3_combout\);

\inst3|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~4_combout\ = ( \inst3|Mux8~2_combout\ & ( \inst3|Mux8~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~33_sumout\)) # (\inst3|Mux8~1_combout\)) # (\inst3|Mux8~0_combout\) ) ) ) # ( !\inst3|Mux8~2_combout\ & ( \inst3|Mux8~3_combout\ ) ) # 
-- ( \inst3|Mux8~2_combout\ & ( !\inst3|Mux8~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~33_sumout\)) # (\inst3|Mux8~1_combout\)) # (\inst3|Mux8~0_combout\) ) ) ) # ( !\inst3|Mux8~2_combout\ & ( !\inst3|Mux8~3_combout\ & ( 
-- (((\inst3|Mux0~1_combout\ & \inst3|Add0~33_sumout\)) # (\inst3|Mux8~1_combout\)) # (\inst3|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux8~0_combout\,
	datac => \inst3|ALT_INV_Add0~33_sumout\,
	datad => \inst3|ALT_INV_Mux8~1_combout\,
	datae => \inst3|ALT_INV_Mux8~2_combout\,
	dataf => \inst3|ALT_INV_Mux8~3_combout\,
	combout => \inst3|Mux8~4_combout\);

\sip[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(7),
	o => \sip[7]~input_o\);

\inst9|sip_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[7]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(7));

\inst5|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = ( \inst9|sip_r\(7) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux8~4_combout\) ) ) # ( !\inst9|sip_r\(7) & ( (\inst3|Mux8~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux8~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(7),
	combout => \inst5|Mux8~0_combout\);

\inst5|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ & ( \inst5|Mux8~0_combout\ & ( (((\instruction_r|t_Operand\(7) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ & ( \inst5|Mux8~0_combout\ & ( ((\instruction_r|t_Operand\(7) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ & ( 
-- !\inst5|Mux8~0_combout\ & ( ((\instruction_r|t_Operand\(7) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ & ( !\inst5|Mux8~0_combout\ & ( (\instruction_r|t_Operand\(7) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(7),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	dataf => \inst5|ALT_INV_Mux8~0_combout\,
	combout => \inst5|Mux8~1_combout\);

\inst5|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][7]~q\);

\inst5|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux24~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][7]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[1][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][7]~q\,
	datab => \inst5|ALT_INV_regs[1][7]~q\,
	datac => \inst5|ALT_INV_regs[2][7]~q\,
	datad => \inst5|ALT_INV_regs[3][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux24~0_combout\);

\inst5|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux24~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][7]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[5][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][7]~q\,
	datab => \inst5|ALT_INV_regs[5][7]~q\,
	datac => \inst5|ALT_INV_regs[6][7]~q\,
	datad => \inst5|ALT_INV_regs[7][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux24~1_combout\);

\inst5|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux24~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][7]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][7]~q\,
	datab => \inst5|ALT_INV_regs[9][7]~q\,
	datac => \inst5|ALT_INV_regs[10][7]~q\,
	datad => \inst5|ALT_INV_regs[11][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux24~2_combout\);

\inst5|Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux24~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][7]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][7]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][7]~q\,
	datab => \inst5|ALT_INV_regs[13][7]~q\,
	datac => \inst5|ALT_INV_regs[14][7]~q\,
	datad => \inst5|ALT_INV_regs[15][7]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux24~3_combout\);

\inst5|Mux24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux24~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux24~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux24~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux24~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux24~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux24~0_combout\,
	datab => \inst5|ALT_INV_Mux24~1_combout\,
	datac => \inst5|ALT_INV_Mux24~2_combout\,
	datad => \inst5|ALT_INV_Mux24~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux24~4_combout\);

\op1|reg_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~9_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[7]~8_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux40~4_combout\ ) ) ) # ( 
-- \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(7) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux24~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux24~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(7),
	datac => \inst5|ALT_INV_Mux40~4_combout\,
	datad => \inst2|ALT_INV_output_signal[7]~8_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~9_combout\);

\op1|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~9_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(7));

\inst|memory_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80008805",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\instruction_r|t_Rz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(3));

\inst5|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~3_combout\ = ( \instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~3_combout\);

\inst5|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][1]~q\);

\inst5|regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][1]~q\);

\inst5|regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][1]~q\);

\inst5|Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux46~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][1]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[1][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][1]~q\,
	datab => \inst5|ALT_INV_regs[1][1]~q\,
	datac => \inst5|ALT_INV_regs[2][1]~q\,
	datad => \inst5|ALT_INV_regs[3][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux46~0_combout\);

\inst5|regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][1]~q\);

\inst5|regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][1]~q\);

\inst5|regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][1]~q\);

\inst5|regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][1]~q\);

\inst5|Mux46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux46~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][1]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) 
-- & ( \inst5|regs[5][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][1]~q\,
	datab => \inst5|ALT_INV_regs[5][1]~q\,
	datac => \inst5|ALT_INV_regs[6][1]~q\,
	datad => \inst5|ALT_INV_regs[7][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux46~1_combout\);

\inst5|regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][1]~q\);

\inst5|regs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][1]~q\);

\inst5|regs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][1]~q\);

\inst5|regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][1]~q\);

\inst5|Mux46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux46~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][1]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][1]~q\,
	datab => \inst5|ALT_INV_regs[9][1]~q\,
	datac => \inst5|ALT_INV_regs[10][1]~q\,
	datad => \inst5|ALT_INV_regs[11][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux46~2_combout\);

\inst5|regs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][1]~q\);

\inst5|regs[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][1]~q\);

\inst5|regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][1]~q\);

\inst5|regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][1]~q\);

\inst5|Mux46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux46~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][1]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][1]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][1]~q\,
	datab => \inst5|ALT_INV_regs[13][1]~q\,
	datac => \inst5|ALT_INV_regs[14][1]~q\,
	datad => \inst5|ALT_INV_regs[15][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux46~3_combout\);

\inst5|Mux46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux46~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux46~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux46~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux46~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux46~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux46~0_combout\,
	datab => \inst5|ALT_INV_Mux46~1_combout\,
	datac => \inst5|ALT_INV_Mux46~2_combout\,
	datad => \inst5|ALT_INV_Mux46~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux46~4_combout\);

\op1|reg_out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~15_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[1]~14_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux46~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(1) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux30~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux30~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(1),
	datac => \inst5|ALT_INV_Mux46~4_combout\,
	datad => \inst2|ALT_INV_output_signal[1]~14_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~15_combout\);

\op1|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~15_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(1));

\inst|memory_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00002D9A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\instruction_r|t_Operand[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(1));

\inst|memory_rtl_1|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00002D9A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\inst3|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux14~0_combout\ = ( !\inst1|Selector3~2_combout\ & ( (!\inst1|Selector4~1_combout\ & (((\inst3|Add0~57_sumout\)))) # (\inst1|Selector4~1_combout\ & ((!\op2|reg_out\(1) & (((\inst1|Selector5~2_combout\ & \op1|reg_out\(1))))) # (\op2|reg_out\(1) & 
-- (((\op1|reg_out\(1)) # (\inst1|Selector5~2_combout\)))))) ) ) # ( \inst1|Selector3~2_combout\ & ( (!\inst1|Selector5~2_combout\ & ((!\inst1|Selector4~1_combout\ & (((\inst3|Mux14~0_combout\)))) # (\inst1|Selector4~1_combout\ & (\op2|reg_out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000011101000111010000000000011101001111110001110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op2|ALT_INV_reg_out\(1),
	datab => \inst1|ALT_INV_Selector4~1_combout\,
	datac => \inst3|ALT_INV_Mux14~0_combout\,
	datad => \inst1|ALT_INV_Selector5~2_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	dataf => \op1|ALT_INV_reg_out\(1),
	datag => \inst3|ALT_INV_Add0~57_sumout\,
	combout => \inst3|Mux14~0_combout\);

\sip[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(1),
	o => \sip[1]~input_o\);

\inst9|sip_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[1]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(1));

\inst5|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux14~0_combout\ = ( \inst9|sip_r\(1) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux14~0_combout\) ) ) # ( !\inst9|sip_r\(1) & ( (\inst3|Mux14~0_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux14~0_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(1),
	combout => \inst5|Mux14~0_combout\);

\inst5|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux14~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ & ( \inst5|Mux14~0_combout\ & ( (((\instruction_r|t_Operand\(1) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ & ( \inst5|Mux14~0_combout\ & ( ((\instruction_r|t_Operand\(1) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ & ( 
-- !\inst5|Mux14~0_combout\ & ( ((\instruction_r|t_Operand\(1) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ & ( !\inst5|Mux14~0_combout\ & ( (\instruction_r|t_Operand\(1) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(1),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	dataf => \inst5|ALT_INV_Mux14~0_combout\,
	combout => \inst5|Mux14~1_combout\);

\inst5|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][1]~q\);

\inst5|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux30~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][1]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[1][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][1]~q\,
	datab => \inst5|ALT_INV_regs[1][1]~q\,
	datac => \inst5|ALT_INV_regs[2][1]~q\,
	datad => \inst5|ALT_INV_regs[3][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux30~0_combout\);

\inst5|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux30~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][1]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[5][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][1]~q\,
	datab => \inst5|ALT_INV_regs[5][1]~q\,
	datac => \inst5|ALT_INV_regs[6][1]~q\,
	datad => \inst5|ALT_INV_regs[7][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux30~1_combout\);

\inst5|Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux30~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][1]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][1]~q\,
	datab => \inst5|ALT_INV_regs[9][1]~q\,
	datac => \inst5|ALT_INV_regs[10][1]~q\,
	datad => \inst5|ALT_INV_regs[11][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux30~2_combout\);

\inst5|Mux30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux30~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][1]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][1]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][1]~q\,
	datab => \inst5|ALT_INV_regs[13][1]~q\,
	datac => \inst5|ALT_INV_regs[14][1]~q\,
	datad => \inst5|ALT_INV_regs[15][1]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux30~3_combout\);

\inst5|Mux30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux30~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux30~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux30~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux30~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux30~0_combout\,
	datab => \inst5|ALT_INV_Mux30~1_combout\,
	datac => \inst5|ALT_INV_Mux30~2_combout\,
	datad => \inst5|ALT_INV_Mux30~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux30~4_combout\);

\op2|reg_out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~15_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[1]~14_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux46~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(1) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux30~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux30~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(1),
	datac => \inst5|ALT_INV_Mux46~4_combout\,
	datad => \inst2|ALT_INV_output_signal[1]~14_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~15_combout\);

\op2|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~15_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(1));

\inst|memory_rtl_1|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0002E1A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\inst5|regs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][12]~q\);

\inst5|regs[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][12]~q\);

\inst5|regs[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][12]~q\);

\inst5|Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux35~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][12]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][12]~q\,
	datab => \inst5|ALT_INV_regs[4][12]~q\,
	datac => \inst5|ALT_INV_regs[8][12]~q\,
	datad => \inst5|ALT_INV_regs[12][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux35~0_combout\);

\inst5|regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][12]~q\);

\inst5|regs[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][12]~q\);

\inst5|regs[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][12]~q\);

\inst5|regs[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][12]~q\);

\inst5|Mux35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux35~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][12]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][12]~q\,
	datab => \inst5|ALT_INV_regs[5][12]~q\,
	datac => \inst5|ALT_INV_regs[9][12]~q\,
	datad => \inst5|ALT_INV_regs[13][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux35~1_combout\);

\inst5|regs[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][12]~q\);

\inst5|regs[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][12]~q\);

\inst5|regs[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][12]~q\);

\inst5|regs[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][12]~q\);

\inst5|Mux35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux35~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][12]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][12]~q\,
	datab => \inst5|ALT_INV_regs[6][12]~q\,
	datac => \inst5|ALT_INV_regs[10][12]~q\,
	datad => \inst5|ALT_INV_regs[14][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux35~2_combout\);

\inst5|regs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][12]~q\);

\inst5|regs[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][12]~q\);

\inst5|regs[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][12]~q\);

\inst5|regs[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][12]~q\);

\inst5|Mux35~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux35~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][12]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][12]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][12]~q\,
	datab => \inst5|ALT_INV_regs[7][12]~q\,
	datac => \inst5|ALT_INV_regs[11][12]~q\,
	datad => \inst5|ALT_INV_regs[15][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux35~3_combout\);

\inst5|Mux35~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux35~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux35~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux35~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux35~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux35~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux35~0_combout\,
	datab => \inst5|ALT_INV_Mux35~1_combout\,
	datac => \inst5|ALT_INV_Mux35~2_combout\,
	datad => \inst5|ALT_INV_Mux35~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux35~4_combout\);

\program_counter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~13_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(12))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(12))) # (\inst1|Mux11~0_combout\ & 
-- ((\program_counter|tempIncr\(12)))))) ) + ( GND ) + ( \program_counter|Add0~18\ ))
-- \program_counter|Add0~14\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(12))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(12))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(12)))))) ) + 
-- ( GND ) + ( \program_counter|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(12),
	datad => \program_counter|ALT_INV_tempIncr\(12),
	cin => \program_counter|Add0~18\,
	sumout => \program_counter|Add0~13_sumout\,
	cout => \program_counter|Add0~14\);

\program_counter|tempIncr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~13_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(12));

\inst2|output_signal[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[12]~3_combout\ = ( \op1|reg_out\(12) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(12)) ) ) # ( !\op1|reg_out\(12) & ( (\program_counter|tempIncr\(12) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(12),
	datae => \op1|ALT_INV_reg_out\(12),
	combout => \inst2|output_signal[12]~3_combout\);

\op2|reg_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~4_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[12]~3_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux35~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(12) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux19~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux19~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(12),
	datac => \inst5|ALT_INV_Mux35~4_combout\,
	datad => \inst2|ALT_INV_output_signal[12]~3_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~4_combout\);

\op2|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~4_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(12));

\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( !\op1|reg_out\(12) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(12) ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( !\op1|reg_out\(12) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(12) ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(12),
	dataf => \op2|ALT_INV_reg_out\(12),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

\inst3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(12) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(12),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux3~0_combout\);

\inst3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(12) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(12) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(12),
	datab => \op2|ALT_INV_reg_out\(12),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux3~1_combout\);

\inst3|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~2_combout\ = ( \inst3|Mux3~0_combout\ & ( \inst3|Mux3~1_combout\ ) ) # ( !\inst3|Mux3~0_combout\ & ( \inst3|Mux3~1_combout\ ) ) # ( \inst3|Mux3~0_combout\ & ( !\inst3|Mux3~1_combout\ ) ) # ( !\inst3|Mux3~0_combout\ & ( !\inst3|Mux3~1_combout\ 
-- & ( (!\inst3|Mux3~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~13_sumout\)))) # (\inst3|Mux3~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~13_sumout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux3~2_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Mux0~1_combout\,
	datad => \inst3|ALT_INV_Add0~13_sumout\,
	datae => \inst3|ALT_INV_Mux3~0_combout\,
	dataf => \inst3|ALT_INV_Mux3~1_combout\,
	combout => \inst3|Mux3~2_combout\);

\sip[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(12),
	o => \sip[12]~input_o\);

\inst9|sip_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[12]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(12));

\inst5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = ( \inst9|sip_r\(12) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux3~2_combout\) ) ) # ( !\inst9|sip_r\(12) & ( (\inst3|Mux3~2_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux3~2_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(12),
	combout => \inst5|Mux3~0_combout\);

\inst5|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux3~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ & ( \inst5|Mux3~0_combout\ & ( (((\instruction_r|t_Operand\(12) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ & ( \inst5|Mux3~0_combout\ & ( ((\instruction_r|t_Operand\(12) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ & 
-- ( !\inst5|Mux3~0_combout\ & ( ((\instruction_r|t_Operand\(12) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ & ( !\inst5|Mux3~0_combout\ & ( (\instruction_r|t_Operand\(12) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(12),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a12~portbdataout\,
	dataf => \inst5|ALT_INV_Mux3~0_combout\,
	combout => \inst5|Mux3~1_combout\);

\inst5|regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][12]~q\);

\inst5|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux19~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][12]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][12]~q\,
	datab => \inst5|ALT_INV_regs[4][12]~q\,
	datac => \inst5|ALT_INV_regs[8][12]~q\,
	datad => \inst5|ALT_INV_regs[12][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux19~0_combout\);

\inst5|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux19~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][12]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][12]~q\,
	datab => \inst5|ALT_INV_regs[5][12]~q\,
	datac => \inst5|ALT_INV_regs[9][12]~q\,
	datad => \inst5|ALT_INV_regs[13][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux19~1_combout\);

\inst5|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux19~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][12]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][12]~q\,
	datab => \inst5|ALT_INV_regs[6][12]~q\,
	datac => \inst5|ALT_INV_regs[10][12]~q\,
	datad => \inst5|ALT_INV_regs[14][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux19~2_combout\);

\inst5|Mux19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux19~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][12]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][12]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][12]~q\,
	datab => \inst5|ALT_INV_regs[7][12]~q\,
	datac => \inst5|ALT_INV_regs[11][12]~q\,
	datad => \inst5|ALT_INV_regs[15][12]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux19~3_combout\);

\inst5|Mux19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux19~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux19~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux19~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux19~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux19~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux19~0_combout\,
	datab => \inst5|ALT_INV_Mux19~1_combout\,
	datac => \inst5|ALT_INV_Mux19~2_combout\,
	datad => \inst5|ALT_INV_Mux19~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux19~4_combout\);

\op1|reg_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~4_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[12]~3_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux35~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(12) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux19~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux19~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(12),
	datac => \inst5|ALT_INV_Mux35~4_combout\,
	datad => \inst2|ALT_INV_output_signal[12]~3_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~4_combout\);

\op1|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~4_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(12));

\inst|memory_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0002E1A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\instruction_r|t_OP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(4));

\inst1|ld_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ld_r~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & (!\instruction_r|t_OP\(5) $ (\instruction_r|t_OP\(4))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(0) & 
-- (!\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000100000000010000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|ld_r~0_combout\);

\inst1|ld_r~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ld_r~1_combout\ = ( \inst1|Mux18~0_combout\ & ( \inst1|ld_r~0_combout\ & ( (\inst1|state.T4~q\ & (((\instruction_r|t_Am\(1) & \inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Mux18~0_combout\ & ( \inst1|ld_r~0_combout\ & 
-- ( (\inst1|state.T4~q\ & ((!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0) & \inst1|Equal14~0_combout\)))) ) ) ) # ( \inst1|Mux18~0_combout\ & ( !\inst1|ld_r~0_combout\ & ( (\inst1|state.T4~q\ & 
-- ((!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & \inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(1) & ((\inst1|Equal14~0_combout\) # (\instruction_r|t_Am\(0)))))) ) ) ) # ( !\inst1|Mux18~0_combout\ & ( !\inst1|ld_r~0_combout\ & ( 
-- (\inst1|Equal14~0_combout\ & (\inst1|state.T4~q\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_Am\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000001011100000000001001100000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal14~0_combout\,
	datad => \inst1|ALT_INV_state.T4~q\,
	datae => \inst1|ALT_INV_Mux18~0_combout\,
	dataf => \inst1|ALT_INV_ld_r~0_combout\,
	combout => \inst1|ld_r~1_combout\);

\inst5|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~1_combout\ = ( !\instruction_r|t_Rz\(0) & ( (\inst1|ld_r~1_combout\ & (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & !\instruction_r|t_Rz\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ld_r~1_combout\,
	datab => \instruction_r|ALT_INV_t_Rz\(3),
	datac => \instruction_r|ALT_INV_t_Rz\(2),
	datad => \instruction_r|ALT_INV_t_Rz\(1),
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	combout => \inst5|Decoder0~1_combout\);

\inst5|regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][0]~q\);

\inst5|regs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][0]~q\);

\inst5|regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][0]~q\);

\inst5|Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux47~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][0]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][0]~q\,
	datab => \inst5|ALT_INV_regs[4][0]~q\,
	datac => \inst5|ALT_INV_regs[8][0]~q\,
	datad => \inst5|ALT_INV_regs[12][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux47~0_combout\);

\inst5|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][0]~q\);

\inst5|regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][0]~q\);

\inst5|regs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][0]~q\);

\inst5|regs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][0]~q\);

\inst5|Mux47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux47~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][0]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][0]~q\,
	datab => \inst5|ALT_INV_regs[5][0]~q\,
	datac => \inst5|ALT_INV_regs[9][0]~q\,
	datad => \inst5|ALT_INV_regs[13][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux47~1_combout\);

\inst5|regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][0]~q\);

\inst5|regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][0]~q\);

\inst5|regs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][0]~q\);

\inst5|regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][0]~q\);

\inst5|Mux47~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux47~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][0]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][0]~q\,
	datab => \inst5|ALT_INV_regs[6][0]~q\,
	datac => \inst5|ALT_INV_regs[10][0]~q\,
	datad => \inst5|ALT_INV_regs[14][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux47~2_combout\);

\inst5|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][0]~q\);

\inst5|regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][0]~q\);

\inst5|regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][0]~q\);

\inst5|regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][0]~q\);

\inst5|Mux47~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux47~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][0]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][0]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][0]~q\,
	datab => \inst5|ALT_INV_regs[7][0]~q\,
	datac => \inst5|ALT_INV_regs[11][0]~q\,
	datad => \inst5|ALT_INV_regs[15][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux47~3_combout\);

\inst5|Mux47~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux47~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux47~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux47~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux47~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux47~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux47~0_combout\,
	datab => \inst5|ALT_INV_Mux47~1_combout\,
	datac => \inst5|ALT_INV_Mux47~2_combout\,
	datad => \inst5|ALT_INV_Mux47~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux47~4_combout\);

\op1|reg_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~16_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[0]~15_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux47~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(0) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux31~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux31~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(0),
	datac => \inst5|ALT_INV_Mux47~4_combout\,
	datad => \inst2|ALT_INV_output_signal[0]~15_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~16_combout\);

\op1|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~16_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80152032",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\instruction_r|t_Operand[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80152032",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\inst3|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux15~0_combout\ = ( !\inst1|Selector3~2_combout\ & ( (!\inst1|Selector4~1_combout\ & (((\inst3|Add0~61_sumout\)))) # (\inst1|Selector4~1_combout\ & ((!\op2|reg_out\(0) & (((\inst1|Selector5~2_combout\ & \op1|reg_out\(0))))) # (\op2|reg_out\(0) & 
-- (((\op1|reg_out\(0)) # (\inst1|Selector5~2_combout\)))))) ) ) # ( \inst1|Selector3~2_combout\ & ( (!\inst1|Selector5~2_combout\ & ((!\inst1|Selector4~1_combout\ & (((\inst3|Mux15~0_combout\)))) # (\inst1|Selector4~1_combout\ & (\op2|reg_out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000011101000111010000000000011101001111110001110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op2|ALT_INV_reg_out\(0),
	datab => \inst1|ALT_INV_Selector4~1_combout\,
	datac => \inst3|ALT_INV_Mux15~0_combout\,
	datad => \inst1|ALT_INV_Selector5~2_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	dataf => \op1|ALT_INV_reg_out\(0),
	datag => \inst3|ALT_INV_Add0~61_sumout\,
	combout => \inst3|Mux15~0_combout\);

\sip[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(0),
	o => \sip[0]~input_o\);

\inst9|sip_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[0]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(0));

\inst5|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux15~0_combout\ = ( \inst9|sip_r\(0) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux15~0_combout\) ) ) # ( !\inst9|sip_r\(0) & ( (\inst3|Mux15~0_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux15~0_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(0),
	combout => \inst5|Mux15~0_combout\);

\inst5|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux15~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ( \inst5|Mux15~0_combout\ & ( (((\instruction_r|t_Operand\(0) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ( \inst5|Mux15~0_combout\ & ( ((\instruction_r|t_Operand\(0) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ( 
-- !\inst5|Mux15~0_combout\ & ( ((\instruction_r|t_Operand\(0) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ( !\inst5|Mux15~0_combout\ & ( (\instruction_r|t_Operand\(0) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(0),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	dataf => \inst5|ALT_INV_Mux15~0_combout\,
	combout => \inst5|Mux15~1_combout\);

\inst5|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][0]~q\);

\inst5|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux31~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][0]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][0]~q\,
	datab => \inst5|ALT_INV_regs[4][0]~q\,
	datac => \inst5|ALT_INV_regs[8][0]~q\,
	datad => \inst5|ALT_INV_regs[12][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux31~0_combout\);

\inst5|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux31~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][0]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][0]~q\,
	datab => \inst5|ALT_INV_regs[5][0]~q\,
	datac => \inst5|ALT_INV_regs[9][0]~q\,
	datad => \inst5|ALT_INV_regs[13][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux31~1_combout\);

\inst5|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux31~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][0]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][0]~q\,
	datab => \inst5|ALT_INV_regs[6][0]~q\,
	datac => \inst5|ALT_INV_regs[10][0]~q\,
	datad => \inst5|ALT_INV_regs[14][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux31~2_combout\);

\inst5|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux31~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][0]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][0]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][0]~q\,
	datab => \inst5|ALT_INV_regs[7][0]~q\,
	datac => \inst5|ALT_INV_regs[11][0]~q\,
	datad => \inst5|ALT_INV_regs[15][0]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux31~3_combout\);

\inst5|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux31~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux31~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux31~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux31~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux31~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux31~0_combout\,
	datab => \inst5|ALT_INV_Mux31~1_combout\,
	datac => \inst5|ALT_INV_Mux31~2_combout\,
	datad => \inst5|ALT_INV_Mux31~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux31~4_combout\);

\op2|reg_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~16_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[0]~15_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux47~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(0) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux31~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux31~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(0),
	datac => \inst5|ALT_INV_Mux47~4_combout\,
	datad => \inst2|ALT_INV_output_signal[0]~15_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~16_combout\);

\op2|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~16_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "8000E004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\inst3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(9) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(9),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux6~0_combout\);

\inst3|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(9) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(9) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(9),
	datab => \op2|ALT_INV_reg_out\(9),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux6~1_combout\);

\inst3|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~2_combout\ = ( \inst3|Mux6~0_combout\ & ( \inst3|Mux6~1_combout\ ) ) # ( !\inst3|Mux6~0_combout\ & ( \inst3|Mux6~1_combout\ ) ) # ( \inst3|Mux6~0_combout\ & ( !\inst3|Mux6~1_combout\ ) ) # ( !\inst3|Mux6~0_combout\ & ( !\inst3|Mux6~1_combout\ 
-- & ( (!\inst3|Mux6~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~25_sumout\)))) # (\inst3|Mux6~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~25_sumout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux6~2_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Mux0~1_combout\,
	datad => \inst3|ALT_INV_Add0~25_sumout\,
	datae => \inst3|ALT_INV_Mux6~0_combout\,
	dataf => \inst3|ALT_INV_Mux6~1_combout\,
	combout => \inst3|Mux6~2_combout\);

\sip[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(9),
	o => \sip[9]~input_o\);

\inst9|sip_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[9]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(9));

\inst5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = ( \inst9|sip_r\(9) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux6~2_combout\) ) ) # ( !\inst9|sip_r\(9) & ( (\inst3|Mux6~2_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux6~2_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(9),
	combout => \inst5|Mux6~0_combout\);

\inst5|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ & ( \inst5|Mux6~0_combout\ & ( (((\instruction_r|t_Operand\(9) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ & ( \inst5|Mux6~0_combout\ & ( ((\instruction_r|t_Operand\(9) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ & ( 
-- !\inst5|Mux6~0_combout\ & ( ((\instruction_r|t_Operand\(9) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ & ( !\inst5|Mux6~0_combout\ & ( (\instruction_r|t_Operand\(9) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(9),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a9~portbdataout\,
	dataf => \inst5|ALT_INV_Mux6~0_combout\,
	combout => \inst5|Mux6~1_combout\);

\inst5|regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][9]~q\);

\inst5|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux22~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][9]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[1][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][9]~q\,
	datab => \inst5|ALT_INV_regs[1][9]~q\,
	datac => \inst5|ALT_INV_regs[2][9]~q\,
	datad => \inst5|ALT_INV_regs[3][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux22~0_combout\);

\inst5|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux22~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][9]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) 
-- & ( \inst5|regs[5][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][9]~q\,
	datab => \inst5|ALT_INV_regs[5][9]~q\,
	datac => \inst5|ALT_INV_regs[6][9]~q\,
	datad => \inst5|ALT_INV_regs[7][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux22~1_combout\);

\inst5|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux22~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][9]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][9]~q\,
	datab => \inst5|ALT_INV_regs[9][9]~q\,
	datac => \inst5|ALT_INV_regs[10][9]~q\,
	datad => \inst5|ALT_INV_regs[11][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux22~2_combout\);

\inst5|Mux22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux22~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][9]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][9]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][9]~q\,
	datab => \inst5|ALT_INV_regs[13][9]~q\,
	datac => \inst5|ALT_INV_regs[14][9]~q\,
	datad => \inst5|ALT_INV_regs[15][9]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux22~3_combout\);

\inst5|Mux22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux22~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux22~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux22~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux22~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux22~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux22~0_combout\,
	datab => \inst5|ALT_INV_Mux22~1_combout\,
	datac => \inst5|ALT_INV_Mux22~2_combout\,
	datad => \inst5|ALT_INV_Mux22~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux22~4_combout\);

\op1|reg_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~7_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[9]~6_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux38~4_combout\ ) ) ) # ( 
-- \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(9) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux22~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux22~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(9),
	datac => \inst5|ALT_INV_Mux38~4_combout\,
	datad => \inst2|ALT_INV_output_signal[9]~6_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~7_combout\);

\op1|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~7_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(9));

\inst|memory_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "8000E004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\instruction_r|t_OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(1));

\inst1|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux18~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & 
-- (!\instruction_r|t_OP\(1) & (!\instruction_r|t_OP\(5) $ (\instruction_r|t_OP\(4))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & 
-- !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000010000000000000000000011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux18~0_combout\);

\inst1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = ( \inst1|ld_r~0_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0) & (\inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(0) & ((\inst1|Mux18~0_combout\))))) 
-- ) ) # ( !\inst1|ld_r~0_combout\ & ( (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0) & (\inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(0) & ((\inst1|Mux18~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal14~0_combout\,
	datad => \inst1|ALT_INV_Mux18~0_combout\,
	datae => \inst1|ALT_INV_ld_r~0_combout\,
	combout => \inst1|Mux9~1_combout\);

\inst5|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux8~0_combout\ & ((\inst1|Mux9~1_combout\))) # (\inst1|Mux8~0_combout\ & (!\inst1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010100000100000101010000010000010101000001000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux8~0_combout\,
	datac => \inst1|ALT_INV_Mux7~0_combout\,
	datad => \inst1|ALT_INV_Mux9~1_combout\,
	combout => \inst5|Mux0~2_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "800061A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\inst5|regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][13]~q\);

\inst5|regs[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][13]~q\);

\inst5|regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][13]~q\);

\inst5|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux34~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][13]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[1][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][13]~q\,
	datab => \inst5|ALT_INV_regs[1][13]~q\,
	datac => \inst5|ALT_INV_regs[2][13]~q\,
	datad => \inst5|ALT_INV_regs[3][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux34~0_combout\);

\inst5|regs[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][13]~q\);

\inst5|regs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][13]~q\);

\inst5|regs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][13]~q\);

\inst5|regs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][13]~q\);

\inst5|Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux34~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][13]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[5][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][13]~q\,
	datab => \inst5|ALT_INV_regs[5][13]~q\,
	datac => \inst5|ALT_INV_regs[6][13]~q\,
	datad => \inst5|ALT_INV_regs[7][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux34~1_combout\);

\inst5|regs[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][13]~q\);

\inst5|regs[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][13]~q\);

\inst5|regs[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][13]~q\);

\inst5|regs[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][13]~q\);

\inst5|Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux34~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][13]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][13]~q\,
	datab => \inst5|ALT_INV_regs[9][13]~q\,
	datac => \inst5|ALT_INV_regs[10][13]~q\,
	datad => \inst5|ALT_INV_regs[11][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux34~2_combout\);

\inst5|regs[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][13]~q\);

\inst5|regs[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][13]~q\);

\inst5|regs[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][13]~q\);

\inst5|regs[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][13]~q\);

\inst5|Mux34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux34~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][13]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][13]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][13]~q\,
	datab => \inst5|ALT_INV_regs[13][13]~q\,
	datac => \inst5|ALT_INV_regs[14][13]~q\,
	datad => \inst5|ALT_INV_regs[15][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux34~3_combout\);

\inst5|Mux34~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux34~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux34~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux34~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux34~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux34~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux34~0_combout\,
	datab => \inst5|ALT_INV_Mux34~1_combout\,
	datac => \inst5|ALT_INV_Mux34~2_combout\,
	datad => \inst5|ALT_INV_Mux34~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux34~4_combout\);

\program_counter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~9_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(13))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(13))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(13)))))) 
-- ) + ( GND ) + ( \program_counter|Add0~14\ ))
-- \program_counter|Add0~10\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(13))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(13))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(13)))))) ) + 
-- ( GND ) + ( \program_counter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(13),
	datad => \program_counter|ALT_INV_tempIncr\(13),
	cin => \program_counter|Add0~14\,
	sumout => \program_counter|Add0~9_sumout\,
	cout => \program_counter|Add0~10\);

\program_counter|tempIncr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~9_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(13));

\inst2|output_signal[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[13]~2_combout\ = ( \op1|reg_out\(13) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(13)) ) ) # ( !\op1|reg_out\(13) & ( (\program_counter|tempIncr\(13) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(13),
	datae => \op1|ALT_INV_reg_out\(13),
	combout => \inst2|output_signal[13]~2_combout\);

\op2|reg_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~3_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[13]~2_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux34~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(13) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux18~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux18~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(13),
	datac => \inst5|ALT_INV_Mux34~4_combout\,
	datad => \inst2|ALT_INV_output_signal[13]~2_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~3_combout\);

\op2|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~3_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(13));

\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( !\op1|reg_out\(13) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(13) ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( !\op1|reg_out\(13) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(13) ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(13),
	dataf => \op2|ALT_INV_reg_out\(13),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

\inst3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(13) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(13),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux2~0_combout\);

\inst3|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(13) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(13) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(13))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(13),
	datab => \op2|ALT_INV_reg_out\(13),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux2~1_combout\);

\inst3|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~2_combout\ = ( \inst3|Mux2~0_combout\ & ( \inst3|Mux2~1_combout\ ) ) # ( !\inst3|Mux2~0_combout\ & ( \inst3|Mux2~1_combout\ ) ) # ( \inst3|Mux2~0_combout\ & ( !\inst3|Mux2~1_combout\ ) ) # ( !\inst3|Mux2~0_combout\ & ( !\inst3|Mux2~1_combout\ 
-- & ( (!\inst3|Mux2~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~9_sumout\)))) # (\inst3|Mux2~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~9_sumout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux2~2_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Mux0~1_combout\,
	datad => \inst3|ALT_INV_Add0~9_sumout\,
	datae => \inst3|ALT_INV_Mux2~0_combout\,
	dataf => \inst3|ALT_INV_Mux2~1_combout\,
	combout => \inst3|Mux2~2_combout\);

\sip[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(13),
	o => \sip[13]~input_o\);

\inst9|sip_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[13]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(13));

\inst5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = ( \inst9|sip_r\(13) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux2~2_combout\) ) ) # ( !\inst9|sip_r\(13) & ( (\inst3|Mux2~2_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux2~2_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(13),
	combout => \inst5|Mux2~0_combout\);

\inst5|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ & ( \inst5|Mux2~0_combout\ & ( (((\instruction_r|t_Operand\(13) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ & ( \inst5|Mux2~0_combout\ & ( ((\instruction_r|t_Operand\(13) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ & 
-- ( !\inst5|Mux2~0_combout\ & ( ((\instruction_r|t_Operand\(13) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ & ( !\inst5|Mux2~0_combout\ & ( (\instruction_r|t_Operand\(13) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(13),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a13~portbdataout\,
	dataf => \inst5|ALT_INV_Mux2~0_combout\,
	combout => \inst5|Mux2~1_combout\);

\inst5|regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][13]~q\);

\inst5|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux18~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][13]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[1][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][13]~q\,
	datab => \inst5|ALT_INV_regs[1][13]~q\,
	datac => \inst5|ALT_INV_regs[2][13]~q\,
	datad => \inst5|ALT_INV_regs[3][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux18~0_combout\);

\inst5|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux18~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][13]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[5][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][13]~q\,
	datab => \inst5|ALT_INV_regs[5][13]~q\,
	datac => \inst5|ALT_INV_regs[6][13]~q\,
	datad => \inst5|ALT_INV_regs[7][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux18~1_combout\);

\inst5|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux18~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][13]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][13]~q\,
	datab => \inst5|ALT_INV_regs[9][13]~q\,
	datac => \inst5|ALT_INV_regs[10][13]~q\,
	datad => \inst5|ALT_INV_regs[11][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux18~2_combout\);

\inst5|Mux18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux18~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][13]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][13]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][13]~q\,
	datab => \inst5|ALT_INV_regs[13][13]~q\,
	datac => \inst5|ALT_INV_regs[14][13]~q\,
	datad => \inst5|ALT_INV_regs[15][13]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux18~3_combout\);

\inst5|Mux18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux18~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux18~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux18~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux18~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux18~0_combout\,
	datab => \inst5|ALT_INV_Mux18~1_combout\,
	datac => \inst5|ALT_INV_Mux18~2_combout\,
	datad => \inst5|ALT_INV_Mux18~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux18~4_combout\);

\op1|reg_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~3_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[13]~2_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux34~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(13) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux18~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux18~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(13),
	datac => \inst5|ALT_INV_Mux34~4_combout\,
	datad => \inst2|ALT_INV_output_signal[13]~2_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~3_combout\);

\op1|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~3_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(13));

\inst|memory_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "800061A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\instruction_r|t_OP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(5));

\inst1|ld_r~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ld_r~2_combout\ = ( !\instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & (\instruction_r|t_OP\(1) & \instruction_r|t_OP\(4)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) 
-- & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|ld_r~2_combout\);

\inst1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & (\inst1|Equal14~0_combout\))) # (\instruction_r|t_Am\(1) & ((!\instruction_r|t_Am\(0) & (\inst1|Equal14~0_combout\)) # (\instruction_r|t_Am\(0) & ((\inst1|ld_r~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000010111000001100001011100000110000101110000011000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal14~0_combout\,
	datad => \inst1|ALT_INV_ld_r~2_combout\,
	combout => \inst1|Mux7~0_combout\);

\inst5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst1|WideOr1~0_combout\ & (\inst1|Mux8~0_combout\ & \inst1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux8~0_combout\,
	datac => \inst1|ALT_INV_Mux7~0_combout\,
	combout => \inst5|Mux0~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80024000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\inst3|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = ( !\inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (!\instruction_r|t_Am\(0) & (\inst3|Mux7~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- !\inst1|Selector3~1_combout\ & ( (\inst3|Mux7~4_combout\ & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst3|ALT_INV_Mux7~4_combout\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux7~0_combout\);

\inst3|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(8) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(8),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux7~1_combout\);

\inst3|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (!\op1|reg_out\(8) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( ((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (!\inst1|Selector5~0_combout\ & 
-- !\inst1|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(8),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux7~2_combout\);

\inst3|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~3_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\op2|reg_out\(8) & (((!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\inst1|Selector4~1_combout\ & ( 
-- \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & \op2|reg_out\(8)) ) ) ) # ( \inst1|Selector4~1_combout\ & ( !\inst1|Selector3~1_combout\ & ( (\op2|reg_out\(8) & (!\inst1|Selector5~0_combout\ & !\inst1|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000010001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op2|ALT_INV_reg_out\(8),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux7~3_combout\);

\inst3|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~4_combout\ = ( \inst3|Mux7~2_combout\ & ( \inst3|Mux7~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~29_sumout\)) # (\inst3|Mux7~1_combout\)) # (\inst3|Mux7~0_combout\) ) ) ) # ( !\inst3|Mux7~2_combout\ & ( \inst3|Mux7~3_combout\ ) ) # 
-- ( \inst3|Mux7~2_combout\ & ( !\inst3|Mux7~3_combout\ & ( (((\inst3|Mux0~1_combout\ & \inst3|Add0~29_sumout\)) # (\inst3|Mux7~1_combout\)) # (\inst3|Mux7~0_combout\) ) ) ) # ( !\inst3|Mux7~2_combout\ & ( !\inst3|Mux7~3_combout\ & ( 
-- (((\inst3|Mux0~1_combout\ & \inst3|Add0~29_sumout\)) # (\inst3|Mux7~1_combout\)) # (\inst3|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~1_combout\,
	datab => \inst3|ALT_INV_Mux7~0_combout\,
	datac => \inst3|ALT_INV_Add0~29_sumout\,
	datad => \inst3|ALT_INV_Mux7~1_combout\,
	datae => \inst3|ALT_INV_Mux7~2_combout\,
	dataf => \inst3|ALT_INV_Mux7~3_combout\,
	combout => \inst3|Mux7~4_combout\);

\sip[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(8),
	o => \sip[8]~input_o\);

\inst9|sip_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[8]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(8));

\inst5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = ( \inst9|sip_r\(8) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux7~4_combout\) ) ) # ( !\inst9|sip_r\(8) & ( (\inst3|Mux7~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux7~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(8),
	combout => \inst5|Mux7~0_combout\);

\inst5|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux7~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ( \inst5|Mux7~0_combout\ & ( (((\instruction_r|t_Operand\(8) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ( \inst5|Mux7~0_combout\ & ( ((\instruction_r|t_Operand\(8) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ( 
-- !\inst5|Mux7~0_combout\ & ( ((\instruction_r|t_Operand\(8) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ( !\inst5|Mux7~0_combout\ & ( (\instruction_r|t_Operand\(8) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(8),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a8~portbdataout\,
	dataf => \inst5|ALT_INV_Mux7~0_combout\,
	combout => \inst5|Mux7~1_combout\);

\inst5|regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][8]~q\);

\inst5|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux23~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][8]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][8]~q\,
	datab => \inst5|ALT_INV_regs[4][8]~q\,
	datac => \inst5|ALT_INV_regs[8][8]~q\,
	datad => \inst5|ALT_INV_regs[12][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux23~0_combout\);

\inst5|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux23~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][8]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][8]~q\,
	datab => \inst5|ALT_INV_regs[5][8]~q\,
	datac => \inst5|ALT_INV_regs[9][8]~q\,
	datad => \inst5|ALT_INV_regs[13][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux23~1_combout\);

\inst5|Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux23~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][8]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][8]~q\,
	datab => \inst5|ALT_INV_regs[6][8]~q\,
	datac => \inst5|ALT_INV_regs[10][8]~q\,
	datad => \inst5|ALT_INV_regs[14][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux23~2_combout\);

\inst5|Mux23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux23~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][8]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][8]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][8]~q\,
	datab => \inst5|ALT_INV_regs[7][8]~q\,
	datac => \inst5|ALT_INV_regs[11][8]~q\,
	datad => \inst5|ALT_INV_regs[15][8]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux23~3_combout\);

\inst5|Mux23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux23~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux23~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux23~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux23~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux23~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux23~0_combout\,
	datab => \inst5|ALT_INV_Mux23~1_combout\,
	datac => \inst5|ALT_INV_Mux23~2_combout\,
	datad => \inst5|ALT_INV_Mux23~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux23~4_combout\);

\op1|reg_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~8_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[8]~7_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux39~4_combout\ ) ) ) # ( 
-- \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(8) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux23~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux23~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(8),
	datac => \inst5|ALT_INV_Mux39~4_combout\,
	datad => \inst2|ALT_INV_output_signal[8]~7_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~8_combout\);

\op1|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~8_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(8));

\inst|memory_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "80024000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\instruction_r|t_OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(0));

\inst1|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal14~0_combout\ = ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal14~0_combout\);

\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( \inst1|ld_r~0_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & (((\instruction_r|t_Am\(0) & \inst1|Selector3~0_combout\)) # (\inst1|Equal14~0_combout\))) ) ) # ( 
-- !\inst1|ld_r~0_combout\ & ( (\instruction_r|t_Am\(1) & (((\instruction_r|t_Am\(0) & \inst1|Selector3~0_combout\)) # (\inst1|Equal14~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101001001110011011100000101000101010010011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal14~0_combout\,
	datad => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_ld_r~0_combout\,
	combout => \inst1|Mux8~0_combout\);

\inst5|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux8~0_combout\,
	datac => \inst1|ALT_INV_Mux9~0_combout\,
	combout => \inst5|Mux9~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000EFB5",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\inst5|regs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][14]~q\);

\inst5|regs[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][14]~q\);

\inst5|regs[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][14]~q\);

\inst5|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux33~0_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[12][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[8][14]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[4][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][14]~q\,
	datab => \inst5|ALT_INV_regs[4][14]~q\,
	datac => \inst5|ALT_INV_regs[8][14]~q\,
	datad => \inst5|ALT_INV_regs[12][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux33~0_combout\);

\inst5|regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][14]~q\);

\inst5|regs[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][14]~q\);

\inst5|regs[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][14]~q\);

\inst5|regs[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][14]~q\);

\inst5|Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux33~1_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[13][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[9][14]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[5][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[1][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][14]~q\,
	datab => \inst5|ALT_INV_regs[5][14]~q\,
	datac => \inst5|ALT_INV_regs[9][14]~q\,
	datad => \inst5|ALT_INV_regs[13][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux33~1_combout\);

\inst5|regs[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][14]~q\);

\inst5|regs[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][14]~q\);

\inst5|regs[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][14]~q\);

\inst5|regs[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][14]~q\);

\inst5|Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux33~2_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[14][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[10][14]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[6][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[2][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][14]~q\,
	datab => \inst5|ALT_INV_regs[6][14]~q\,
	datac => \inst5|ALT_INV_regs[10][14]~q\,
	datad => \inst5|ALT_INV_regs[14][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux33~2_combout\);

\inst5|regs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][14]~q\);

\inst5|regs[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][14]~q\);

\inst5|regs[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][14]~q\);

\inst5|regs[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][14]~q\);

\inst5|Mux33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux33~3_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[15][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|regs[11][14]~q\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|regs[7][14]~q\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|regs[3][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][14]~q\,
	datab => \inst5|ALT_INV_regs[7][14]~q\,
	datac => \inst5|ALT_INV_regs[11][14]~q\,
	datad => \inst5|ALT_INV_regs[15][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux33~3_combout\);

\inst5|Mux33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux33~4_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux33~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|Mux33~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|Mux33~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|Mux33~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux33~0_combout\,
	datab => \inst5|ALT_INV_Mux33~1_combout\,
	datac => \inst5|ALT_INV_Mux33~2_combout\,
	datad => \inst5|ALT_INV_Mux33~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux33~4_combout\);

\program_counter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~5_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(14))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(14))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(14)))))) 
-- ) + ( GND ) + ( \program_counter|Add0~10\ ))
-- \program_counter|Add0~6\ = CARRY(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(14))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(14))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(14)))))) ) + 
-- ( GND ) + ( \program_counter|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(14),
	datad => \program_counter|ALT_INV_tempIncr\(14),
	cin => \program_counter|Add0~10\,
	sumout => \program_counter|Add0~5_sumout\,
	cout => \program_counter|Add0~6\);

\program_counter|tempIncr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~5_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(14));

\inst2|output_signal[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[14]~1_combout\ = ( \op1|reg_out\(14) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(14)) ) ) # ( !\op1|reg_out\(14) & ( (\program_counter|tempIncr\(14) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(14),
	datae => \op1|ALT_INV_reg_out\(14),
	combout => \inst2|output_signal[14]~1_combout\);

\op2|reg_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~2_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[14]~1_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux33~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(14) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux17~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux17~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(14),
	datac => \inst5|ALT_INV_Mux33~4_combout\,
	datad => \inst2|ALT_INV_output_signal[14]~1_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~2_combout\);

\op2|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~2_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(14));

\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( !\op1|reg_out\(14) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(14) ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( !\op1|reg_out\(14) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(14) ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(14),
	dataf => \op2|ALT_INV_reg_out\(14),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

\inst3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(14) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(14),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux1~0_combout\);

\inst3|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(14) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(14) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(14),
	datab => \op2|ALT_INV_reg_out\(14),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux1~1_combout\);

\inst3|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~2_combout\ = ( \inst3|Mux1~0_combout\ & ( \inst3|Mux1~1_combout\ ) ) # ( !\inst3|Mux1~0_combout\ & ( \inst3|Mux1~1_combout\ ) ) # ( \inst3|Mux1~0_combout\ & ( !\inst3|Mux1~1_combout\ ) ) # ( !\inst3|Mux1~0_combout\ & ( !\inst3|Mux1~1_combout\ 
-- & ( (!\inst3|Mux1~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~5_sumout\)))) # (\inst3|Mux1~2_combout\ & (((\inst3|Mux0~1_combout\ & \inst3|Add0~5_sumout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux1~2_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Mux0~1_combout\,
	datad => \inst3|ALT_INV_Add0~5_sumout\,
	datae => \inst3|ALT_INV_Mux1~0_combout\,
	dataf => \inst3|ALT_INV_Mux1~1_combout\,
	combout => \inst3|Mux1~2_combout\);

\sip[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(14),
	o => \sip[14]~input_o\);

\inst9|sip_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[14]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(14));

\inst5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = ( \inst9|sip_r\(14) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux1~2_combout\) ) ) # ( !\inst9|sip_r\(14) & ( (\inst3|Mux1~2_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux1~2_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(14),
	combout => \inst5|Mux1~0_combout\);

\inst5|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = ( \inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ & ( \inst5|Mux1~0_combout\ & ( (((\instruction_r|t_Operand\(14) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( 
-- !\inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ & ( \inst5|Mux1~0_combout\ & ( ((\instruction_r|t_Operand\(14) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~2_combout\) ) ) ) # ( \inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ & 
-- ( !\inst5|Mux1~0_combout\ & ( ((\instruction_r|t_Operand\(14) & !\inst5|Mux9~0_combout\)) # (\inst5|Mux0~0_combout\) ) ) ) # ( !\inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ & ( !\inst5|Mux1~0_combout\ & ( (\instruction_r|t_Operand\(14) & 
-- !\inst5|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011110100111101000100111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(14),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst5|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux0~2_combout\,
	datae => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a14~portbdataout\,
	dataf => \inst5|ALT_INV_Mux1~0_combout\,
	combout => \inst5|Mux1~1_combout\);

\inst5|regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][14]~q\);

\inst5|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux17~0_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[12][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[8][14]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[4][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][14]~q\,
	datab => \inst5|ALT_INV_regs[4][14]~q\,
	datac => \inst5|ALT_INV_regs[8][14]~q\,
	datad => \inst5|ALT_INV_regs[12][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux17~0_combout\);

\inst5|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux17~1_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[13][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[9][14]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[5][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[1][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[1][14]~q\,
	datab => \inst5|ALT_INV_regs[5][14]~q\,
	datac => \inst5|ALT_INV_regs[9][14]~q\,
	datad => \inst5|ALT_INV_regs[13][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux17~1_combout\);

\inst5|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux17~2_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[14][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[10][14]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[6][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[2][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[2][14]~q\,
	datab => \inst5|ALT_INV_regs[6][14]~q\,
	datac => \inst5|ALT_INV_regs[10][14]~q\,
	datad => \inst5|ALT_INV_regs[14][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux17~2_combout\);

\inst5|Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux17~3_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[15][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|regs[11][14]~q\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|regs[7][14]~q\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|regs[3][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[3][14]~q\,
	datab => \inst5|ALT_INV_regs[7][14]~q\,
	datac => \inst5|ALT_INV_regs[11][14]~q\,
	datad => \inst5|ALT_INV_regs[15][14]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux17~3_combout\);

\inst5|Mux17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux17~4_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux17~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|Mux17~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|Mux17~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|Mux17~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux17~0_combout\,
	datab => \inst5|ALT_INV_Mux17~1_combout\,
	datac => \inst5|ALT_INV_Mux17~2_combout\,
	datad => \inst5|ALT_INV_Mux17~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux17~4_combout\);

\op1|reg_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~2_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[14]~1_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux33~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(14) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux17~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux17~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(14),
	datac => \inst5|ALT_INV_Mux33~4_combout\,
	datad => \inst2|ALT_INV_output_signal[14]~1_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~2_combout\);

\op1|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~2_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(14));

\inst|memory_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000EFB5",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\instruction_r|t_Am[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Am\(0));

\inst1|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = ( \inst1|WideOr1~0_combout\ & ( (!\instruction_r|t_Am\(0) & (\instruction_r|t_Am\(1) & ((\inst1|Equal2~0_combout\) # (\inst1|Equal15~0_combout\)))) # (\instruction_r|t_Am\(0) & (((\inst1|Equal15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110100011100000000000000000000011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal15~0_combout\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \inst1|ALT_INV_WideOr1~0_combout\,
	combout => \inst1|Selector7~0_combout\);

\instruction_r|t_Operand[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(15));

\inst|memory_rtl_1|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "800A6190",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\inst5|regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][15]~q\);

\inst5|regs[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][15]~q\);

\inst5|regs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][15]~q\);

\inst5|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux32~0_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[3][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[2][15]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[1][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][15]~q\,
	datab => \inst5|ALT_INV_regs[1][15]~q\,
	datac => \inst5|ALT_INV_regs[2][15]~q\,
	datad => \inst5|ALT_INV_regs[3][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux32~0_combout\);

\inst5|regs[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][15]~q\);

\inst5|regs[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][15]~q\);

\inst5|regs[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][15]~q\);

\inst5|regs[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][15]~q\);

\inst5|Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux32~1_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[7][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[6][15]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[5][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][15]~q\,
	datab => \inst5|ALT_INV_regs[5][15]~q\,
	datac => \inst5|ALT_INV_regs[6][15]~q\,
	datad => \inst5|ALT_INV_regs[7][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux32~1_combout\);

\inst5|regs[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][15]~q\);

\inst5|regs[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][15]~q\);

\inst5|regs[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][15]~q\);

\inst5|regs[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][15]~q\);

\inst5|Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux32~2_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[11][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[10][15]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[9][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[8][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][15]~q\,
	datab => \inst5|ALT_INV_regs[9][15]~q\,
	datac => \inst5|ALT_INV_regs[10][15]~q\,
	datad => \inst5|ALT_INV_regs[11][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux32~2_combout\);

\inst5|regs[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][15]~q\);

\inst5|regs[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][15]~q\);

\inst5|regs[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][15]~q\);

\inst5|regs[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[15][15]~q\);

\inst5|Mux32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux32~3_combout\ = ( \instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[15][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( \instruction_r|t_Rz\(1) & ( \inst5|regs[14][15]~q\ ) ) ) # ( \instruction_r|t_Rz\(0) & ( 
-- !\instruction_r|t_Rz\(1) & ( \inst5|regs[13][15]~q\ ) ) ) # ( !\instruction_r|t_Rz\(0) & ( !\instruction_r|t_Rz\(1) & ( \inst5|regs[12][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][15]~q\,
	datab => \inst5|ALT_INV_regs[13][15]~q\,
	datac => \inst5|ALT_INV_regs[14][15]~q\,
	datad => \inst5|ALT_INV_regs[15][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rz\(0),
	dataf => \instruction_r|ALT_INV_t_Rz\(1),
	combout => \inst5|Mux32~3_combout\);

\inst5|Mux32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux32~4_combout\ = ( \instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux32~3_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( \instruction_r|t_Rz\(3) & ( \inst5|Mux32~2_combout\ ) ) ) # ( \instruction_r|t_Rz\(2) & ( 
-- !\instruction_r|t_Rz\(3) & ( \inst5|Mux32~1_combout\ ) ) ) # ( !\instruction_r|t_Rz\(2) & ( !\instruction_r|t_Rz\(3) & ( \inst5|Mux32~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux32~0_combout\,
	datab => \inst5|ALT_INV_Mux32~1_combout\,
	datac => \inst5|ALT_INV_Mux32~2_combout\,
	datad => \inst5|ALT_INV_Mux32~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rz\(2),
	dataf => \instruction_r|ALT_INV_t_Rz\(3),
	combout => \inst5|Mux32~4_combout\);

\program_counter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~1_sumout\ = SUM(( (!\inst1|WideOr1~0_combout\ & (((\program_counter|tempIncr\(15))))) # (\inst1|WideOr1~0_combout\ & ((!\inst1|Mux11~0_combout\ & (\op1|reg_out\(15))) # (\inst1|Mux11~0_combout\ & ((\program_counter|tempIncr\(15)))))) 
-- ) + ( GND ) + ( \program_counter|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst1|ALT_INV_Mux11~0_combout\,
	datac => \op1|ALT_INV_reg_out\(15),
	datad => \program_counter|ALT_INV_tempIncr\(15),
	cin => \program_counter|Add0~6\,
	sumout => \program_counter|Add0~1_sumout\);

\program_counter|tempIncr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~1_sumout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr\(15));

\inst2|output_signal[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[15]~0_combout\ = ( \op1|reg_out\(15) & ( ((\instruction_r|t_Am\(0) & (\inst1|Equal16~0_combout\ & \inst1|WideOr1~0_combout\))) # (\program_counter|tempIncr\(15)) ) ) # ( !\op1|reg_out\(15) & ( (\program_counter|tempIncr\(15) & 
-- ((!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000011111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr\(15),
	datae => \op1|ALT_INV_reg_out\(15),
	combout => \inst2|output_signal[15]~0_combout\);

\op2|reg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~0_combout\ = ( \inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst2|output_signal[15]~0_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( \inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux32~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \instruction_r|t_Operand\(15) ) ) ) # ( !\inst1|alu_op2_sel[0]~0_combout\ & ( !\inst1|alu_op2_sel[1]~3_combout\ & ( \inst5|Mux16~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux16~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(15),
	datac => \inst5|ALT_INV_Mux32~4_combout\,
	datad => \inst2|ALT_INV_output_signal[15]~0_combout\,
	datae => \inst1|ALT_INV_alu_op2_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~3_combout\,
	combout => \op2|reg_out~0_combout\);

\op2|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~0_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(15));

\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( !\op1|reg_out\(15) $ (((!\inst1|Selector5~0_combout\ & ((!\inst1|state.T3~q\) # (!\inst1|Mux14~1_combout\))))) ) + ( \op2|reg_out\(15) ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux14~1_combout\,
	datad => \op1|ALT_INV_reg_out\(15),
	dataf => \op2|ALT_INV_reg_out\(15),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

\inst3|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~2_combout\ = ( \inst1|Selector4~1_combout\ & ( \inst1|Selector3~1_combout\ & ( (\instruction_r|t_Am\(0) & (\op1|reg_out\(15) & ((\inst1|Selector5~1_combout\) # (\inst1|Selector5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \op1|ALT_INV_reg_out\(15),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_Selector5~1_combout\,
	datae => \inst1|ALT_INV_Selector4~1_combout\,
	dataf => \inst1|ALT_INV_Selector3~1_combout\,
	combout => \inst3|Mux0~2_combout\);

\inst3|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~3_combout\ = ( \inst1|Selector3~2_combout\ & ( (\op2|reg_out\(15) & (!\inst1|Selector5~2_combout\ & \inst1|Selector4~1_combout\)) ) ) # ( !\inst1|Selector3~2_combout\ & ( (\op2|reg_out\(15) & (\inst1|Selector4~1_combout\ & 
-- ((\inst1|Selector5~2_combout\) # (\op1|reg_out\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011000000000000000100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(15),
	datab => \op2|ALT_INV_reg_out\(15),
	datac => \inst1|ALT_INV_Selector5~2_combout\,
	datad => \inst1|ALT_INV_Selector4~1_combout\,
	datae => \inst1|ALT_INV_Selector3~2_combout\,
	combout => \inst3|Mux0~3_combout\);

\inst3|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~4_combout\ = ( \inst3|Mux0~2_combout\ & ( \inst3|Mux0~3_combout\ ) ) # ( !\inst3|Mux0~2_combout\ & ( \inst3|Mux0~3_combout\ ) ) # ( \inst3|Mux0~2_combout\ & ( !\inst3|Mux0~3_combout\ ) ) # ( !\inst3|Mux0~2_combout\ & ( !\inst3|Mux0~3_combout\ 
-- & ( (!\inst3|Mux0~4_combout\ & (((\inst3|Add0~1_sumout\ & \inst3|Mux0~1_combout\)))) # (\inst3|Mux0~4_combout\ & (((\inst3|Add0~1_sumout\ & \inst3|Mux0~1_combout\)) # (\inst3|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux0~4_combout\,
	datab => \inst3|ALT_INV_Mux0~0_combout\,
	datac => \inst3|ALT_INV_Add0~1_sumout\,
	datad => \inst3|ALT_INV_Mux0~1_combout\,
	datae => \inst3|ALT_INV_Mux0~2_combout\,
	dataf => \inst3|ALT_INV_Mux0~3_combout\,
	combout => \inst3|Mux0~4_combout\);

\sip[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(15),
	o => \sip[15]~input_o\);

\inst9|sip_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sip[15]~input_o\,
	clrn => \inst1|state.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sip_r\(15));

\inst5|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = ( \inst9|sip_r\(15) & ( ((\inst1|WideOr1~0_combout\ & (!\inst1|Mux8~0_combout\ & !\inst1|Mux9~0_combout\))) # (\inst3|Mux0~4_combout\) ) ) # ( !\inst9|sip_r\(15) & ( (\inst3|Mux0~4_combout\ & ((!\inst1|WideOr1~0_combout\) # 
-- ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011011100110011001100100011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr1~0_combout\,
	datab => \inst3|ALT_INV_Mux0~4_combout\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst9|ALT_INV_sip_r\(15),
	combout => \inst5|Mux0~1_combout\);

\inst5|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~3_combout\ = ( \inst5|Mux0~1_combout\ & ( \inst5|Mux0~2_combout\ ) ) # ( !\inst5|Mux0~1_combout\ & ( \inst5|Mux0~2_combout\ & ( (!\instruction_r|t_Operand\(15) & (((\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & 
-- \inst5|Mux0~0_combout\)))) # (\instruction_r|t_Operand\(15) & ((!\inst5|Mux9~0_combout\) # ((\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & \inst5|Mux0~0_combout\)))) ) ) ) # ( \inst5|Mux0~1_combout\ & ( !\inst5|Mux0~2_combout\ & ( 
-- (!\instruction_r|t_Operand\(15) & (((\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & \inst5|Mux0~0_combout\)))) # (\instruction_r|t_Operand\(15) & ((!\inst5|Mux9~0_combout\) # ((\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ 
-- & \inst5|Mux0~0_combout\)))) ) ) ) # ( !\inst5|Mux0~1_combout\ & ( !\inst5|Mux0~2_combout\ & ( (!\instruction_r|t_Operand\(15) & (((\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & \inst5|Mux0~0_combout\)))) # (\instruction_r|t_Operand\(15) 
-- & ((!\inst5|Mux9~0_combout\) # ((\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & \inst5|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111010001000100111101000100010011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(15),
	datab => \inst5|ALT_INV_Mux9~0_combout\,
	datac => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a15~portbdataout\,
	datad => \inst5|ALT_INV_Mux0~0_combout\,
	datae => \inst5|ALT_INV_Mux0~1_combout\,
	dataf => \inst5|ALT_INV_Mux0~2_combout\,
	combout => \inst5|Mux0~3_combout\);

\inst5|regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[0][15]~q\);

\inst5|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux16~0_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[3][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[2][15]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[1][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[0][15]~q\,
	datab => \inst5|ALT_INV_regs[1][15]~q\,
	datac => \inst5|ALT_INV_regs[2][15]~q\,
	datad => \inst5|ALT_INV_regs[3][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux16~0_combout\);

\inst5|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux16~1_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[7][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[6][15]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[5][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[4][15]~q\,
	datab => \inst5|ALT_INV_regs[5][15]~q\,
	datac => \inst5|ALT_INV_regs[6][15]~q\,
	datad => \inst5|ALT_INV_regs[7][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux16~1_combout\);

\inst5|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux16~2_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[11][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[10][15]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[9][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[8][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[8][15]~q\,
	datab => \inst5|ALT_INV_regs[9][15]~q\,
	datac => \inst5|ALT_INV_regs[10][15]~q\,
	datad => \inst5|ALT_INV_regs[11][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux16~2_combout\);

\inst5|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux16~3_combout\ = ( \instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[15][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( \instruction_r|t_Rx\(1) & ( \inst5|regs[14][15]~q\ ) ) ) # ( \instruction_r|t_Rx\(0) & ( 
-- !\instruction_r|t_Rx\(1) & ( \inst5|regs[13][15]~q\ ) ) ) # ( !\instruction_r|t_Rx\(0) & ( !\instruction_r|t_Rx\(1) & ( \inst5|regs[12][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_regs[12][15]~q\,
	datab => \inst5|ALT_INV_regs[13][15]~q\,
	datac => \inst5|ALT_INV_regs[14][15]~q\,
	datad => \inst5|ALT_INV_regs[15][15]~q\,
	datae => \instruction_r|ALT_INV_t_Rx\(0),
	dataf => \instruction_r|ALT_INV_t_Rx\(1),
	combout => \inst5|Mux16~3_combout\);

\inst5|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux16~4_combout\ = ( \instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux16~3_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( \instruction_r|t_Rx\(3) & ( \inst5|Mux16~2_combout\ ) ) ) # ( \instruction_r|t_Rx\(2) & ( 
-- !\instruction_r|t_Rx\(3) & ( \inst5|Mux16~1_combout\ ) ) ) # ( !\instruction_r|t_Rx\(2) & ( !\instruction_r|t_Rx\(3) & ( \inst5|Mux16~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux16~0_combout\,
	datab => \inst5|ALT_INV_Mux16~1_combout\,
	datac => \inst5|ALT_INV_Mux16~2_combout\,
	datad => \inst5|ALT_INV_Mux16~3_combout\,
	datae => \instruction_r|ALT_INV_t_Rx\(2),
	dataf => \instruction_r|ALT_INV_t_Rx\(3),
	combout => \inst5|Mux16~4_combout\);

\op1|reg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out~0_combout\ = ( \inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst2|output_signal[15]~0_combout\ ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( \inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux32~4_combout\ ) ) ) # 
-- ( \inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(15) ) ) ) # ( !\inst1|alu_op1_sel[0]~0_combout\ & ( !\inst1|alu_op1_sel[1]~2_combout\ & ( \inst5|Mux16~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux16~4_combout\,
	datab => \instruction_r|ALT_INV_t_Operand\(15),
	datac => \inst5|ALT_INV_Mux32~4_combout\,
	datad => \inst2|ALT_INV_output_signal[15]~0_combout\,
	datae => \inst1|ALT_INV_alu_op1_sel[0]~0_combout\,
	dataf => \inst1|ALT_INV_alu_op1_sel[1]~2_combout\,
	combout => \op1|reg_out~0_combout\);

\op1|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op1|reg_out~0_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op1|reg_out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(15));

\inst|memory_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "800A6190",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_ssr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|Selector7~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\instruction_r|t_Am[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	ena => \instruction_r|t_Am[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Am\(1));

\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ((\inst1|state.T1A~q\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_Am\(0))))) # (\inst1|state.T1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010011111111000101001111111100010100111111110001010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \instruction_r|ALT_INV_t_Am\(1),
	datac => \instruction_r|ALT_INV_t_Am\(0),
	datad => \inst1|ALT_INV_state.T1~q\,
	combout => \inst1|Selector0~0_combout\);

\inst1|op2_wr~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op2_wr~3_combout\ = (\inst1|state.T2~q\ & \inst1|op2_wr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T2~q\,
	datab => \inst1|ALT_INV_op2_wr~2_combout\,
	combout => \inst1|op2_wr~3_combout\);

\inst1|op1_wr~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op1_wr~5_combout\ = (\inst1|state.T2~q\ & (((\instruction_r|t_Am\(1) & !\inst1|op1_wr~4_combout\)) # (\inst1|op1_wr~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000011000100110000001100010011000000110001001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_state.T2~q\,
	datac => \inst1|ALT_INV_op1_wr~3_combout\,
	datad => \inst1|ALT_INV_op1_wr~4_combout\,
	combout => \inst1|op1_wr~5_combout\);

\inst1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (!\instruction_r|t_Am\(0)) # ((!\inst1|Equal16~0_combout\) # (!\inst1|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal16~0_combout\,
	datac => \inst1|ALT_INV_WideOr1~0_combout\,
	combout => \inst1|Selector1~0_combout\);

\program_counter|tempAddress[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[15]~0_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(15));

\program_counter|tempAddress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[14]~1_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(14));

\program_counter|tempAddress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[13]~2_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(13));

\program_counter|tempAddress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[12]~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(12));

\program_counter|tempAddress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[11]~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(11));

\program_counter|tempAddress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[10]~5_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(10));

\program_counter|tempAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[9]~6_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(9));

\program_counter|tempAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[8]~7_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(8));

\program_counter|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[7]~8_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(7));

\program_counter|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[6]~9_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(6));

\program_counter|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[5]~10_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(5));

\inst1|currentSignal[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentSignal[2]~0_combout\ = (((!\inst1|state.T0~q\) # (\inst1|state.T2~q\)) # (\inst1|state.T1~q\)) # (\inst1|state.T1A~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \inst1|ALT_INV_state.T1~q\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \inst1|ALT_INV_state.T2~q\,
	combout => \inst1|currentSignal[2]~0_combout\);

\inst1|currentSignal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentSignal[1]~1_combout\ = (!\inst1|state.T1~q\ & \inst1|state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1~q\,
	datab => \inst1|ALT_INV_state.T0~q\,
	combout => \inst1|currentSignal[1]~1_combout\);

\inst1|currentSignal[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentSignal[0]~2_combout\ = (!\inst1|state.T1A~q\ & \inst1|state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \inst1|ALT_INV_state.T0~q\,
	combout => \inst1|currentSignal[0]~2_combout\);

\inst1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = ( !\instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(1) & (!\instruction_r|t_OP\(4) & \instruction_r|t_OP\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(5),
	datab => \instruction_r|ALT_INV_t_OP\(1),
	datac => \instruction_r|ALT_INV_t_OP\(4),
	datad => \instruction_r|ALT_INV_t_OP\(3),
	datae => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal3~0_combout\);

\inst1|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector12~0_combout\ = ( \inst1|WideOr1~0_combout\ & ( (\instruction_r|t_Am\(0) & (\inst1|Equal3~0_combout\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_OP\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001000000000000000000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(0),
	datad => \inst1|ALT_INV_Equal3~0_combout\,
	datae => \inst1|ALT_INV_WideOr1~0_combout\,
	combout => \inst1|Selector12~0_combout\);

\inst9|dpcr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux16~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(31));

\inst9|dpcr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux17~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(30));

\inst9|dpcr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux18~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(29));

\inst9|dpcr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux19~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(28));

\inst9|dpcr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux20~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(27));

\inst9|dpcr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux21~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(26));

\inst9|dpcr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux22~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(25));

\inst9|dpcr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux23~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(24));

\inst9|dpcr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux24~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(23));

\inst9|dpcr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux25~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(22));

\inst9|dpcr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux26~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(21));

\inst9|dpcr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux27~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(20));

\inst9|dpcr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux28~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(19));

\inst9|dpcr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux29~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(18));

\inst9|dpcr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux30~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(17));

\inst9|dpcr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux31~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(16));

\inst1|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector11~0_combout\ = ( \inst1|WideOr1~0_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & (\instruction_r|t_OP\(0) & \inst1|Equal3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(0),
	datad => \inst1|ALT_INV_Equal3~0_combout\,
	datae => \inst1|ALT_INV_WideOr1~0_combout\,
	combout => \inst1|Selector11~0_combout\);

\inst9|dpcr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][15]~q\,
	asdata => \instruction_r|t_Operand\(15),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(15));

\inst9|dpcr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][14]~q\,
	asdata => \instruction_r|t_Operand\(14),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(14));

\inst9|dpcr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][13]~q\,
	asdata => \instruction_r|t_Operand\(13),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(13));

\inst9|dpcr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][12]~q\,
	asdata => \instruction_r|t_Operand\(12),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(12));

\inst9|dpcr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][11]~q\,
	asdata => \instruction_r|t_Operand\(11),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(11));

\inst9|dpcr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][10]~q\,
	asdata => \instruction_r|t_Operand\(10),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(10));

\inst9|dpcr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][9]~q\,
	asdata => \instruction_r|t_Operand\(9),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(9));

\inst9|dpcr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][8]~q\,
	asdata => \instruction_r|t_Operand\(8),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(8));

\inst9|dpcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][7]~q\,
	asdata => \instruction_r|t_Operand\(7),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(7));

\inst9|dpcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][6]~q\,
	asdata => \instruction_r|t_Operand\(6),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(6));

\inst9|dpcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][5]~q\,
	asdata => \instruction_r|t_Operand\(5),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(5));

\inst9|dpcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][4]~q\,
	asdata => \instruction_r|t_Operand\(4),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(4));

\inst9|dpcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][3]~q\,
	asdata => \instruction_r|t_Operand\(3),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(3));

\inst9|dpcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][2]~q\,
	asdata => \instruction_r|t_Operand\(2),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(2));

\inst9|dpcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][1]~q\,
	asdata => \instruction_r|t_Operand\(1),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(1));

\inst9|dpcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|regs[7][0]~q\,
	asdata => \instruction_r|t_Operand\(0),
	clrn => \inst1|state.T0~q\,
	sload => \inst1|Selector11~0_combout\,
	ena => \inst1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dpcr\(0));

\inst1|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector13~0_combout\ = ( \inst1|WideOr1~0_combout\ & ( (\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & (\instruction_r|t_OP\(1) & \inst1|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \inst1|ALT_INV_Equal13~0_combout\,
	datae => \inst1|ALT_INV_WideOr1~0_combout\,
	combout => \inst1|Selector13~0_combout\);

\inst9|sop[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux16~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(15));

\inst9|sop[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux17~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(14));

\inst9|sop[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux18~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(13));

\inst9|sop[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux19~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(12));

\inst9|sop[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux20~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(11));

\inst9|sop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux21~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(10));

\inst9|sop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux22~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(9));

\inst9|sop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux23~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(8));

\inst9|sop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux24~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(7));

\inst9|sop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux25~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(6));

\inst9|sop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux26~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(5));

\inst9|sop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux27~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(4));

\inst9|sop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux28~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(3));

\inst9|sop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux29~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(2));

\inst9|sop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux30~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(1));

\inst9|sop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux31~4_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sop\(0));

ww_write_pc <= \write_pc~output_o\;

ww_AM(1) <= \AM[1]~output_o\;

ww_AM(0) <= \AM[0]~output_o\;

ww_ir_wr <= \ir_wr~output_o\;

ww_ir_reset <= \ir_reset~output_o\;

ww_ir_operand_set <= \ir_operand_set~output_o\;

ww_op2_wr <= \op2_wr~output_o\;

ww_reset_pc <= \reset_pc~output_o\;

ww_op1_wr <= \op1_wr~output_o\;

ww_Operand(15) <= \Operand[15]~output_o\;

ww_Operand(14) <= \Operand[14]~output_o\;

ww_Operand(13) <= \Operand[13]~output_o\;

ww_Operand(12) <= \Operand[12]~output_o\;

ww_Operand(11) <= \Operand[11]~output_o\;

ww_Operand(10) <= \Operand[10]~output_o\;

ww_Operand(9) <= \Operand[9]~output_o\;

ww_Operand(8) <= \Operand[8]~output_o\;

ww_Operand(7) <= \Operand[7]~output_o\;

ww_Operand(6) <= \Operand[6]~output_o\;

ww_Operand(5) <= \Operand[5]~output_o\;

ww_Operand(4) <= \Operand[4]~output_o\;

ww_Operand(3) <= \Operand[3]~output_o\;

ww_Operand(2) <= \Operand[2]~output_o\;

ww_Operand(1) <= \Operand[1]~output_o\;

ww_Operand(0) <= \Operand[0]~output_o\;

ww_pc_mux_sel <= \pc_mux_sel~output_o\;

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

ww_OPCode(5) <= \OPCode[5]~output_o\;

ww_OPCode(4) <= \OPCode[4]~output_o\;

ww_OPCode(3) <= \OPCode[3]~output_o\;

ww_OPCode(2) <= \OPCode[2]~output_o\;

ww_OPCode(1) <= \OPCode[1]~output_o\;

ww_OPCode(0) <= \OPCode[0]~output_o\;

ww_load_reg <= \load_reg~output_o\;

ww_alu_outputpin(15) <= \alu_outputpin[15]~output_o\;

ww_alu_outputpin(14) <= \alu_outputpin[14]~output_o\;

ww_alu_outputpin(13) <= \alu_outputpin[13]~output_o\;

ww_alu_outputpin(12) <= \alu_outputpin[12]~output_o\;

ww_alu_outputpin(11) <= \alu_outputpin[11]~output_o\;

ww_alu_outputpin(10) <= \alu_outputpin[10]~output_o\;

ww_alu_outputpin(9) <= \alu_outputpin[9]~output_o\;

ww_alu_outputpin(8) <= \alu_outputpin[8]~output_o\;

ww_alu_outputpin(7) <= \alu_outputpin[7]~output_o\;

ww_alu_outputpin(6) <= \alu_outputpin[6]~output_o\;

ww_alu_outputpin(5) <= \alu_outputpin[5]~output_o\;

ww_alu_outputpin(4) <= \alu_outputpin[4]~output_o\;

ww_alu_outputpin(3) <= \alu_outputpin[3]~output_o\;

ww_alu_outputpin(2) <= \alu_outputpin[2]~output_o\;

ww_alu_outputpin(1) <= \alu_outputpin[1]~output_o\;

ww_alu_outputpin(0) <= \alu_outputpin[0]~output_o\;

ww_currentState(2) <= \currentState[2]~output_o\;

ww_currentState(1) <= \currentState[1]~output_o\;

ww_currentState(0) <= \currentState[0]~output_o\;

ww_dpcr(31) <= \dpcr[31]~output_o\;

ww_dpcr(30) <= \dpcr[30]~output_o\;

ww_dpcr(29) <= \dpcr[29]~output_o\;

ww_dpcr(28) <= \dpcr[28]~output_o\;

ww_dpcr(27) <= \dpcr[27]~output_o\;

ww_dpcr(26) <= \dpcr[26]~output_o\;

ww_dpcr(25) <= \dpcr[25]~output_o\;

ww_dpcr(24) <= \dpcr[24]~output_o\;

ww_dpcr(23) <= \dpcr[23]~output_o\;

ww_dpcr(22) <= \dpcr[22]~output_o\;

ww_dpcr(21) <= \dpcr[21]~output_o\;

ww_dpcr(20) <= \dpcr[20]~output_o\;

ww_dpcr(19) <= \dpcr[19]~output_o\;

ww_dpcr(18) <= \dpcr[18]~output_o\;

ww_dpcr(17) <= \dpcr[17]~output_o\;

ww_dpcr(16) <= \dpcr[16]~output_o\;

ww_dpcr(15) <= \dpcr[15]~output_o\;

ww_dpcr(14) <= \dpcr[14]~output_o\;

ww_dpcr(13) <= \dpcr[13]~output_o\;

ww_dpcr(12) <= \dpcr[12]~output_o\;

ww_dpcr(11) <= \dpcr[11]~output_o\;

ww_dpcr(10) <= \dpcr[10]~output_o\;

ww_dpcr(9) <= \dpcr[9]~output_o\;

ww_dpcr(8) <= \dpcr[8]~output_o\;

ww_dpcr(7) <= \dpcr[7]~output_o\;

ww_dpcr(6) <= \dpcr[6]~output_o\;

ww_dpcr(5) <= \dpcr[5]~output_o\;

ww_dpcr(4) <= \dpcr[4]~output_o\;

ww_dpcr(3) <= \dpcr[3]~output_o\;

ww_dpcr(2) <= \dpcr[2]~output_o\;

ww_dpcr(1) <= \dpcr[1]~output_o\;

ww_dpcr(0) <= \dpcr[0]~output_o\;

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

ww_instruction(15) <= \instruction[15]~output_o\;

ww_instruction(14) <= \instruction[14]~output_o\;

ww_instruction(13) <= \instruction[13]~output_o\;

ww_instruction(12) <= \instruction[12]~output_o\;

ww_instruction(11) <= \instruction[11]~output_o\;

ww_instruction(10) <= \instruction[10]~output_o\;

ww_instruction(9) <= \instruction[9]~output_o\;

ww_instruction(8) <= \instruction[8]~output_o\;

ww_instruction(7) <= \instruction[7]~output_o\;

ww_instruction(6) <= \instruction[6]~output_o\;

ww_instruction(5) <= \instruction[5]~output_o\;

ww_instruction(4) <= \instruction[4]~output_o\;

ww_instruction(3) <= \instruction[3]~output_o\;

ww_instruction(2) <= \instruction[2]~output_o\;

ww_instruction(1) <= \instruction[1]~output_o\;

ww_instruction(0) <= \instruction[0]~output_o\;

ww_op1OUT(15) <= \op1OUT[15]~output_o\;

ww_op1OUT(14) <= \op1OUT[14]~output_o\;

ww_op1OUT(13) <= \op1OUT[13]~output_o\;

ww_op1OUT(12) <= \op1OUT[12]~output_o\;

ww_op1OUT(11) <= \op1OUT[11]~output_o\;

ww_op1OUT(10) <= \op1OUT[10]~output_o\;

ww_op1OUT(9) <= \op1OUT[9]~output_o\;

ww_op1OUT(8) <= \op1OUT[8]~output_o\;

ww_op1OUT(7) <= \op1OUT[7]~output_o\;

ww_op1OUT(6) <= \op1OUT[6]~output_o\;

ww_op1OUT(5) <= \op1OUT[5]~output_o\;

ww_op1OUT(4) <= \op1OUT[4]~output_o\;

ww_op1OUT(3) <= \op1OUT[3]~output_o\;

ww_op1OUT(2) <= \op1OUT[2]~output_o\;

ww_op1OUT(1) <= \op1OUT[1]~output_o\;

ww_op1OUT(0) <= \op1OUT[0]~output_o\;

ww_op2OUT(15) <= \op2OUT[15]~output_o\;

ww_op2OUT(14) <= \op2OUT[14]~output_o\;

ww_op2OUT(13) <= \op2OUT[13]~output_o\;

ww_op2OUT(12) <= \op2OUT[12]~output_o\;

ww_op2OUT(11) <= \op2OUT[11]~output_o\;

ww_op2OUT(10) <= \op2OUT[10]~output_o\;

ww_op2OUT(9) <= \op2OUT[9]~output_o\;

ww_op2OUT(8) <= \op2OUT[8]~output_o\;

ww_op2OUT(7) <= \op2OUT[7]~output_o\;

ww_op2OUT(6) <= \op2OUT[6]~output_o\;

ww_op2OUT(5) <= \op2OUT[5]~output_o\;

ww_op2OUT(4) <= \op2OUT[4]~output_o\;

ww_op2OUT(3) <= \op2OUT[3]~output_o\;

ww_op2OUT(2) <= \op2OUT[2]~output_o\;

ww_op2OUT(1) <= \op2OUT[1]~output_o\;

ww_op2OUT(0) <= \op2OUT[0]~output_o\;

ww_r7_outputData(15) <= \r7_outputData[15]~output_o\;

ww_r7_outputData(14) <= \r7_outputData[14]~output_o\;

ww_r7_outputData(13) <= \r7_outputData[13]~output_o\;

ww_r7_outputData(12) <= \r7_outputData[12]~output_o\;

ww_r7_outputData(11) <= \r7_outputData[11]~output_o\;

ww_r7_outputData(10) <= \r7_outputData[10]~output_o\;

ww_r7_outputData(9) <= \r7_outputData[9]~output_o\;

ww_r7_outputData(8) <= \r7_outputData[8]~output_o\;

ww_r7_outputData(7) <= \r7_outputData[7]~output_o\;

ww_r7_outputData(6) <= \r7_outputData[6]~output_o\;

ww_r7_outputData(5) <= \r7_outputData[5]~output_o\;

ww_r7_outputData(4) <= \r7_outputData[4]~output_o\;

ww_r7_outputData(3) <= \r7_outputData[3]~output_o\;

ww_r7_outputData(2) <= \r7_outputData[2]~output_o\;

ww_r7_outputData(1) <= \r7_outputData[1]~output_o\;

ww_r7_outputData(0) <= \r7_outputData[0]~output_o\;

ww_reg4_output(15) <= \reg4_output[15]~output_o\;

ww_reg4_output(14) <= \reg4_output[14]~output_o\;

ww_reg4_output(13) <= \reg4_output[13]~output_o\;

ww_reg4_output(12) <= \reg4_output[12]~output_o\;

ww_reg4_output(11) <= \reg4_output[11]~output_o\;

ww_reg4_output(10) <= \reg4_output[10]~output_o\;

ww_reg4_output(9) <= \reg4_output[9]~output_o\;

ww_reg4_output(8) <= \reg4_output[8]~output_o\;

ww_reg4_output(7) <= \reg4_output[7]~output_o\;

ww_reg4_output(6) <= \reg4_output[6]~output_o\;

ww_reg4_output(5) <= \reg4_output[5]~output_o\;

ww_reg4_output(4) <= \reg4_output[4]~output_o\;

ww_reg4_output(3) <= \reg4_output[3]~output_o\;

ww_reg4_output(2) <= \reg4_output[2]~output_o\;

ww_reg4_output(1) <= \reg4_output[1]~output_o\;

ww_reg4_output(0) <= \reg4_output[0]~output_o\;

ww_Rx(3) <= \Rx[3]~output_o\;

ww_Rx(2) <= \Rx[2]~output_o\;

ww_Rx(1) <= \Rx[1]~output_o\;

ww_Rx(0) <= \Rx[0]~output_o\;

ww_rx_outputData(15) <= \rx_outputData[15]~output_o\;

ww_rx_outputData(14) <= \rx_outputData[14]~output_o\;

ww_rx_outputData(13) <= \rx_outputData[13]~output_o\;

ww_rx_outputData(12) <= \rx_outputData[12]~output_o\;

ww_rx_outputData(11) <= \rx_outputData[11]~output_o\;

ww_rx_outputData(10) <= \rx_outputData[10]~output_o\;

ww_rx_outputData(9) <= \rx_outputData[9]~output_o\;

ww_rx_outputData(8) <= \rx_outputData[8]~output_o\;

ww_rx_outputData(7) <= \rx_outputData[7]~output_o\;

ww_rx_outputData(6) <= \rx_outputData[6]~output_o\;

ww_rx_outputData(5) <= \rx_outputData[5]~output_o\;

ww_rx_outputData(4) <= \rx_outputData[4]~output_o\;

ww_rx_outputData(3) <= \rx_outputData[3]~output_o\;

ww_rx_outputData(2) <= \rx_outputData[2]~output_o\;

ww_rx_outputData(1) <= \rx_outputData[1]~output_o\;

ww_rx_outputData(0) <= \rx_outputData[0]~output_o\;

ww_Rz(3) <= \Rz[3]~output_o\;

ww_Rz(2) <= \Rz[2]~output_o\;

ww_Rz(1) <= \Rz[1]~output_o\;

ww_Rz(0) <= \Rz[0]~output_o\;

ww_rz_outputData(15) <= \rz_outputData[15]~output_o\;

ww_rz_outputData(14) <= \rz_outputData[14]~output_o\;

ww_rz_outputData(13) <= \rz_outputData[13]~output_o\;

ww_rz_outputData(12) <= \rz_outputData[12]~output_o\;

ww_rz_outputData(11) <= \rz_outputData[11]~output_o\;

ww_rz_outputData(10) <= \rz_outputData[10]~output_o\;

ww_rz_outputData(9) <= \rz_outputData[9]~output_o\;

ww_rz_outputData(8) <= \rz_outputData[8]~output_o\;

ww_rz_outputData(7) <= \rz_outputData[7]~output_o\;

ww_rz_outputData(6) <= \rz_outputData[6]~output_o\;

ww_rz_outputData(5) <= \rz_outputData[5]~output_o\;

ww_rz_outputData(4) <= \rz_outputData[4]~output_o\;

ww_rz_outputData(3) <= \rz_outputData[3]~output_o\;

ww_rz_outputData(2) <= \rz_outputData[2]~output_o\;

ww_rz_outputData(1) <= \rz_outputData[1]~output_o\;

ww_rz_outputData(0) <= \rz_outputData[0]~output_o\;

ww_sop_out(15) <= \sop_out[15]~output_o\;

ww_sop_out(14) <= \sop_out[14]~output_o\;

ww_sop_out(13) <= \sop_out[13]~output_o\;

ww_sop_out(12) <= \sop_out[12]~output_o\;

ww_sop_out(11) <= \sop_out[11]~output_o\;

ww_sop_out(10) <= \sop_out[10]~output_o\;

ww_sop_out(9) <= \sop_out[9]~output_o\;

ww_sop_out(8) <= \sop_out[8]~output_o\;

ww_sop_out(7) <= \sop_out[7]~output_o\;

ww_sop_out(6) <= \sop_out[6]~output_o\;

ww_sop_out(5) <= \sop_out[5]~output_o\;

ww_sop_out(4) <= \sop_out[4]~output_o\;

ww_sop_out(3) <= \sop_out[3]~output_o\;

ww_sop_out(2) <= \sop_out[2]~output_o\;

ww_sop_out(1) <= \sop_out[1]~output_o\;

ww_sop_out(0) <= \sop_out[0]~output_o\;
END structure;


