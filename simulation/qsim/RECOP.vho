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

-- DATE "05/14/2024 21:47:06"

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
	reset_pc : OUT std_logic;
	Operand : OUT std_logic_vector(15 DOWNTO 0);
	pc_mux_sel : OUT std_logic;
	instAddr : OUT std_logic_vector(15 DOWNTO 0);
	OPCode : OUT std_logic_vector(5 DOWNTO 0);
	alu_outputpin : OUT std_logic_vector(15 DOWNTO 0);
	currentState : OUT std_logic_vector(2 DOWNTO 0);
	incrAddr : OUT std_logic_vector(15 DOWNTO 0);
	instruction : OUT std_logic_vector(15 DOWNTO 0);
	r7_outputData : OUT std_logic_vector(15 DOWNTO 0);
	Rx : OUT std_logic_vector(3 DOWNTO 0);
	rx_outputData : OUT std_logic_vector(15 DOWNTO 0);
	Rz : OUT std_logic_vector(3 DOWNTO 0);
	rz_outputData : OUT std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_reset_pc : std_logic;
SIGNAL ww_Operand : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pc_mux_sel : std_logic;
SIGNAL ww_instAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OPCode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_alu_outputpin : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_currentState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_incrAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r7_outputData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rx : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rx_outputData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rz : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rz_outputData : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \write_pc~output_o\ : std_logic;
SIGNAL \AM[1]~output_o\ : std_logic;
SIGNAL \AM[0]~output_o\ : std_logic;
SIGNAL \ir_wr~output_o\ : std_logic;
SIGNAL \ir_reset~output_o\ : std_logic;
SIGNAL \ir_operand_set~output_o\ : std_logic;
SIGNAL \reset_pc~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset_in~input_o\ : std_logic;
SIGNAL \inst1|state.T0~0_combout\ : std_logic;
SIGNAL \inst1|state.T0~q\ : std_logic;
SIGNAL \inst1|state~8_combout\ : std_logic;
SIGNAL \inst1|state.T1~q\ : std_logic;
SIGNAL \inst1|state~7_combout\ : std_logic;
SIGNAL \inst1|state.T1A~q\ : std_logic;
SIGNAL \inst1|state~10_combout\ : std_logic;
SIGNAL \inst1|state.T2~q\ : std_logic;
SIGNAL \inst1|state~9_combout\ : std_logic;
SIGNAL \inst1|state.T3~q\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|currentSignal[1]~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][6]~q\ : std_logic;
SIGNAL \inst5|regs[1][5]~q\ : std_logic;
SIGNAL \inst5|regs[4][4]~q\ : std_logic;
SIGNAL \inst5|regs[8][4]~q\ : std_logic;
SIGNAL \inst5|regs[1][13]~q\ : std_logic;
SIGNAL \inst5|regs[2][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~4_combout\ : std_logic;
SIGNAL \inst5|regs[3][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~0_combout\ : std_logic;
SIGNAL \inst5|regs[4][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~6_combout\ : std_logic;
SIGNAL \inst5|regs[5][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~7_combout\ : std_logic;
SIGNAL \inst5|regs[6][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~0_combout\ : std_logic;
SIGNAL \inst5|regs[7][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~1_combout\ : std_logic;
SIGNAL \inst5|regs[8][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~9_combout\ : std_logic;
SIGNAL \inst5|regs[9][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~10_combout\ : std_logic;
SIGNAL \inst5|regs[10][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~11_combout\ : std_logic;
SIGNAL \inst5|regs[11][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~2_combout\ : std_logic;
SIGNAL \inst5|regs[12][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~13_combout\ : std_logic;
SIGNAL \inst5|regs[13][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~14_combout\ : std_logic;
SIGNAL \inst5|regs[14][13]~q\ : std_logic;
SIGNAL \inst5|Decoder0~15_combout\ : std_logic;
SIGNAL \inst5|regs[15][13]~q\ : std_logic;
SIGNAL \inst5|Mux34~3_combout\ : std_logic;
SIGNAL \inst5|Mux34~4_combout\ : std_logic;
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
SIGNAL \program_counter|Add1~57_sumout\ : std_logic;
SIGNAL \program_counter|Add0~57_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~57_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~59_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~58_combout\ : std_logic;
SIGNAL \inst2|output_signal[1]~14_combout\ : std_logic;
SIGNAL \program_counter|Add1~58\ : std_logic;
SIGNAL \program_counter|Add1~53_sumout\ : std_logic;
SIGNAL \program_counter|Add0~58\ : std_logic;
SIGNAL \program_counter|Add0~53_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~53_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~55_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~54_combout\ : std_logic;
SIGNAL \inst2|output_signal[2]~13_combout\ : std_logic;
SIGNAL \program_counter|Add1~54\ : std_logic;
SIGNAL \program_counter|Add1~49_sumout\ : std_logic;
SIGNAL \program_counter|Add0~54\ : std_logic;
SIGNAL \program_counter|Add0~49_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~49_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~51_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~50_combout\ : std_logic;
SIGNAL \inst2|output_signal[3]~12_combout\ : std_logic;
SIGNAL \inst2|output_signal[4]~11_combout\ : std_logic;
SIGNAL \inst2|output_signal[5]~10_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
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
SIGNAL \program_counter|Add1~26\ : std_logic;
SIGNAL \program_counter|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|output_signal[8]~7_combout\ : std_logic;
SIGNAL \inst2|output_signal[7]~8_combout\ : std_logic;
SIGNAL \inst2|output_signal[6]~9_combout\ : std_logic;
SIGNAL \program_counter|Add0~50\ : std_logic;
SIGNAL \program_counter|Add0~46\ : std_logic;
SIGNAL \program_counter|Add0~42\ : std_logic;
SIGNAL \program_counter|Add0~38\ : std_logic;
SIGNAL \program_counter|Add0~34\ : std_logic;
SIGNAL \program_counter|Add0~30\ : std_logic;
SIGNAL \program_counter|Add0~26\ : std_logic;
SIGNAL \program_counter|Add0~21_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~21_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~23_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~22_combout\ : std_logic;
SIGNAL \inst2|output_signal[10]~5_combout\ : std_logic;
SIGNAL \instruction_r|t_Am[1]~0_combout\ : std_logic;
SIGNAL \inst1|Equal15~0_combout\ : std_logic;
SIGNAL \inst1|Equal11~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[0]~6_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[1]~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|alu_op2_sel[1]~2_combout\ : std_logic;
SIGNAL \op2|reg_out~9_combout\ : std_logic;
SIGNAL \op2|reg_out[1]~1_combout\ : std_logic;
SIGNAL \op2|reg_out[1]~2_combout\ : std_logic;
SIGNAL \op2|reg_out[1]~3_combout\ : std_logic;
SIGNAL \op2|reg_out[1]~4_combout\ : std_logic;
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
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~2_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Equal7~0_combout\ : std_logic;
SIGNAL \inst1|op2_wr~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst5|Mux8~1_combout\ : std_logic;
SIGNAL \inst5|Mux8~2_combout\ : std_logic;
SIGNAL \inst5|Mux8~3_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~1_combout\ : std_logic;
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
SIGNAL \op1|reg_out[3]~21_combout\ : std_logic;
SIGNAL \op1|reg_out[3]~22_combout\ : std_logic;
SIGNAL \op1|reg_out[3]~23_combout\ : std_logic;
SIGNAL \op1|reg_out[3]~1_combout\ : std_logic;
SIGNAL \op1|reg_out[3]~17_combout\ : std_logic;
SIGNAL \program_counter|Add1~22\ : std_logic;
SIGNAL \program_counter|Add1~17_sumout\ : std_logic;
SIGNAL \program_counter|Add0~22\ : std_logic;
SIGNAL \program_counter|Add0~17_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~17_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~19_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~18_combout\ : std_logic;
SIGNAL \inst2|output_signal[11]~4_combout\ : std_logic;
SIGNAL \op2|reg_out~8_combout\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
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
SIGNAL \program_counter|tempIncr[0]~61_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~63_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~62_combout\ : std_logic;
SIGNAL \inst2|output_signal[0]~15_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst5|regs[4][2]~q\ : std_logic;
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
SIGNAL \inst3|Add0~53_sumout\ : std_logic;
SIGNAL \inst3|Mux13~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst5|Mux13~0_combout\ : std_logic;
SIGNAL \inst5|Mux13~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][2]~q\ : std_logic;
SIGNAL \inst5|Mux29~0_combout\ : std_logic;
SIGNAL \inst5|Mux29~1_combout\ : std_logic;
SIGNAL \inst5|Mux29~2_combout\ : std_logic;
SIGNAL \inst5|Mux29~3_combout\ : std_logic;
SIGNAL \inst5|Mux29~4_combout\ : std_logic;
SIGNAL \op2|reg_out~17_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
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
SIGNAL \inst3|Add0~57_sumout\ : std_logic;
SIGNAL \inst3|Mux14~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst5|Mux14~0_combout\ : std_logic;
SIGNAL \inst5|Mux14~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][1]~q\ : std_logic;
SIGNAL \inst5|Mux30~0_combout\ : std_logic;
SIGNAL \inst5|Mux30~1_combout\ : std_logic;
SIGNAL \inst5|Mux30~2_combout\ : std_logic;
SIGNAL \inst5|Mux30~3_combout\ : std_logic;
SIGNAL \inst5|Mux30~4_combout\ : std_logic;
SIGNAL \op2|reg_out~18_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
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
SIGNAL \inst3|Add0~61_sumout\ : std_logic;
SIGNAL \inst3|Mux15~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst5|Mux15~0_combout\ : std_logic;
SIGNAL \inst5|Mux15~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][0]~q\ : std_logic;
SIGNAL \inst5|Mux31~0_combout\ : std_logic;
SIGNAL \inst5|Mux31~1_combout\ : std_logic;
SIGNAL \inst5|Mux31~2_combout\ : std_logic;
SIGNAL \inst5|Mux31~3_combout\ : std_logic;
SIGNAL \inst5|Mux31~4_combout\ : std_logic;
SIGNAL \op2|reg_out~19_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst5|regs[1][3]~q\ : std_logic;
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
SIGNAL \op2|reg_out~16_combout\ : std_logic;
SIGNAL \inst3|Add0~49_sumout\ : std_logic;
SIGNAL \inst3|Mux12~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst5|Mux12~0_combout\ : std_logic;
SIGNAL \inst5|Mux12~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][3]~q\ : std_logic;
SIGNAL \inst5|Mux28~0_combout\ : std_logic;
SIGNAL \inst5|Mux28~1_combout\ : std_logic;
SIGNAL \inst5|Mux28~2_combout\ : std_logic;
SIGNAL \inst5|Mux28~3_combout\ : std_logic;
SIGNAL \inst5|Mux28~4_combout\ : std_logic;
SIGNAL \op1|reg_out~13_combout\ : std_logic;
SIGNAL \program_counter|Add1~50\ : std_logic;
SIGNAL \program_counter|Add1~45_sumout\ : std_logic;
SIGNAL \program_counter|Add0~45_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~45_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~47_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~46_combout\ : std_logic;
SIGNAL \program_counter|Add1~46\ : std_logic;
SIGNAL \program_counter|Add1~41_sumout\ : std_logic;
SIGNAL \program_counter|Add0~41_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~41_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~43_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~42_combout\ : std_logic;
SIGNAL \program_counter|Add1~42\ : std_logic;
SIGNAL \program_counter|Add1~37_sumout\ : std_logic;
SIGNAL \program_counter|Add0~37_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~37_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~39_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~38_combout\ : std_logic;
SIGNAL \program_counter|Add1~38\ : std_logic;
SIGNAL \program_counter|Add1~33_sumout\ : std_logic;
SIGNAL \program_counter|Add0~33_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~33_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~35_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~34_combout\ : std_logic;
SIGNAL \program_counter|Add1~34\ : std_logic;
SIGNAL \program_counter|Add1~29_sumout\ : std_logic;
SIGNAL \program_counter|Add0~29_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~29_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~31_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~30_combout\ : std_logic;
SIGNAL \program_counter|Add1~30\ : std_logic;
SIGNAL \program_counter|Add1~25_sumout\ : std_logic;
SIGNAL \program_counter|Add0~25_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~25_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~27_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~26_combout\ : std_logic;
SIGNAL \inst2|output_signal[9]~6_combout\ : std_logic;
SIGNAL \op2|reg_out~10_combout\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
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
SIGNAL \inst1|Equal6~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|pc_mux_sel~0_combout\ : std_logic;
SIGNAL \program_counter|Add1~18\ : std_logic;
SIGNAL \program_counter|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|output_signal[12]~3_combout\ : std_logic;
SIGNAL \program_counter|Add0~18\ : std_logic;
SIGNAL \program_counter|Add0~13_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[12]~13_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[12]~15_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[12]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[12]~14_combout\ : std_logic;
SIGNAL \program_counter|Add1~14\ : std_logic;
SIGNAL \program_counter|Add1~9_sumout\ : std_logic;
SIGNAL \program_counter|Add0~14\ : std_logic;
SIGNAL \program_counter|Add0~9_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~9_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~11_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~10_combout\ : std_logic;
SIGNAL \inst2|output_signal[13]~2_combout\ : std_logic;
SIGNAL \op2|reg_out~6_combout\ : std_logic;
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
SIGNAL \op2|reg_out~7_combout\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
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
SIGNAL \inst1|load_register~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~12_combout\ : std_logic;
SIGNAL \inst5|regs[12][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~0_combout\ : std_logic;
SIGNAL \inst5|regs[1][4]~q\ : std_logic;
SIGNAL \inst5|regs[5][4]~q\ : std_logic;
SIGNAL \inst5|regs[9][4]~q\ : std_logic;
SIGNAL \inst5|regs[13][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~1_combout\ : std_logic;
SIGNAL \inst5|regs[2][4]~q\ : std_logic;
SIGNAL \inst5|regs[6][4]~q\ : std_logic;
SIGNAL \inst5|regs[10][4]~q\ : std_logic;
SIGNAL \inst5|regs[14][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~2_combout\ : std_logic;
SIGNAL \inst5|regs[3][4]~q\ : std_logic;
SIGNAL \inst5|regs[7][4]~q\ : std_logic;
SIGNAL \inst5|regs[11][4]~q\ : std_logic;
SIGNAL \inst5|regs[15][4]~q\ : std_logic;
SIGNAL \inst5|Mux43~3_combout\ : std_logic;
SIGNAL \inst5|Mux43~4_combout\ : std_logic;
SIGNAL \op2|reg_out~15_combout\ : std_logic;
SIGNAL \inst3|Add0~45_sumout\ : std_logic;
SIGNAL \inst3|Mux11~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst5|Mux11~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][4]~q\ : std_logic;
SIGNAL \inst5|Mux27~0_combout\ : std_logic;
SIGNAL \inst5|Mux27~1_combout\ : std_logic;
SIGNAL \inst5|Mux27~2_combout\ : std_logic;
SIGNAL \inst5|Mux27~3_combout\ : std_logic;
SIGNAL \inst5|Mux27~4_combout\ : std_logic;
SIGNAL \op1|reg_out~12_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst5|Decoder0~3_combout\ : std_logic;
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
SIGNAL \op2|reg_out~14_combout\ : std_logic;
SIGNAL \inst3|Add0~41_sumout\ : std_logic;
SIGNAL \inst3|Mux10~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
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
SIGNAL \inst5|Decoder0~8_combout\ : std_logic;
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
SIGNAL \op2|reg_out~13_combout\ : std_logic;
SIGNAL \inst3|Add0~37_sumout\ : std_logic;
SIGNAL \inst3|Mux9~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst5|Mux9~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][6]~q\ : std_logic;
SIGNAL \inst5|Mux25~0_combout\ : std_logic;
SIGNAL \inst5|Mux25~1_combout\ : std_logic;
SIGNAL \inst5|Mux25~2_combout\ : std_logic;
SIGNAL \inst5|Mux25~3_combout\ : std_logic;
SIGNAL \inst5|Mux25~4_combout\ : std_logic;
SIGNAL \op1|reg_out~10_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst5|Decoder0~2_combout\ : std_logic;
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
SIGNAL \op2|reg_out~12_combout\ : std_logic;
SIGNAL \inst3|Add0~33_sumout\ : std_logic;
SIGNAL \inst3|Mux8~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst5|Mux8~4_combout\ : std_logic;
SIGNAL \inst5|Mux8~5_combout\ : std_logic;
SIGNAL \inst5|regs[0][7]~q\ : std_logic;
SIGNAL \inst5|Mux24~0_combout\ : std_logic;
SIGNAL \inst5|Mux24~1_combout\ : std_logic;
SIGNAL \inst5|Mux24~2_combout\ : std_logic;
SIGNAL \inst5|Mux24~3_combout\ : std_logic;
SIGNAL \inst5|Mux24~4_combout\ : std_logic;
SIGNAL \op1|reg_out~9_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst5|Decoder0~5_combout\ : std_logic;
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
SIGNAL \op2|reg_out~11_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|Mux7~3_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
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
SIGNAL \inst1|Equal12~0_combout\ : std_logic;
SIGNAL \inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
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
SIGNAL \inst1|Equal8~0_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|Mux14~1_combout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
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
SIGNAL \program_counter|Add1~10\ : std_logic;
SIGNAL \program_counter|Add1~5_sumout\ : std_logic;
SIGNAL \program_counter|Add0~10\ : std_logic;
SIGNAL \program_counter|Add0~5_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~5_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~7_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~6_combout\ : std_logic;
SIGNAL \inst2|output_signal[14]~1_combout\ : std_logic;
SIGNAL \op2|reg_out~5_combout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
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
SIGNAL \inst1|data_mem_wren~0_combout\ : std_logic;
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
SIGNAL \program_counter|Add1~6\ : std_logic;
SIGNAL \program_counter|Add1~1_sumout\ : std_logic;
SIGNAL \program_counter|Add0~6\ : std_logic;
SIGNAL \program_counter|Add0~1_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~1_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~3_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~2_combout\ : std_logic;
SIGNAL \inst2|output_signal[15]~0_combout\ : std_logic;
SIGNAL \op2|reg_out~0_combout\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|regs[0][15]~q\ : std_logic;
SIGNAL \inst5|Mux16~0_combout\ : std_logic;
SIGNAL \inst5|Mux16~1_combout\ : std_logic;
SIGNAL \inst5|Mux16~2_combout\ : std_logic;
SIGNAL \inst5|Mux16~3_combout\ : std_logic;
SIGNAL \inst5|Mux16~4_combout\ : std_logic;
SIGNAL \op1|reg_out~0_combout\ : std_logic;
SIGNAL \inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Mux7~4_combout\ : std_logic;
SIGNAL \inst3|Mux8~1_combout\ : std_logic;
SIGNAL \inst3|Mux9~1_combout\ : std_logic;
SIGNAL \inst3|Mux10~1_combout\ : std_logic;
SIGNAL \inst3|Mux11~1_combout\ : std_logic;
SIGNAL \inst3|Mux12~1_combout\ : std_logic;
SIGNAL \inst3|Mux13~1_combout\ : std_logic;
SIGNAL \inst3|Mux14~1_combout\ : std_logic;
SIGNAL \inst3|Mux15~1_combout\ : std_logic;
SIGNAL \inst1|currentSignal[2]~1_combout\ : std_logic;
SIGNAL \inst1|currentSignal[0]~2_combout\ : std_logic;
SIGNAL \instruction_r|t_Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \op1|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \program_counter|tempAddress\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \op2|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_Am\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instruction_r|t_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \instruction_r|t_Rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_r|t_Rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \program_counter|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \op2|ALT_INV_reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \op1|ALT_INV_reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Add0~61_sumout\ : std_logic;
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
SIGNAL \inst3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempAddress\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_pc_mux_sel~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T3~q\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1A~q\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Am\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALT_INV_alu_op2_sel[0]~6_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[1]~2_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add1~1_sumout\ : std_logic;
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
SIGNAL \program_counter|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~41_sumout\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[12][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[8][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[4][12]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][13]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][14]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][15]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][15]~q\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Rx\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst1|ALT_INV_currentSignal[2]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_currentSignal[1]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T2~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][6]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][6]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][7]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][8]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][9]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][10]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[2][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[1][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[0][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[15][12]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[11][12]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][0]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][1]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][2]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][3]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][4]~q\ : std_logic;
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
SIGNAL \inst5|ALT_INV_regs[4][5]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_regs[3][5]~q\ : std_logic;
SIGNAL \op2|ALT_INV_reg_out[1]~3_combout\ : std_logic;
SIGNAL \op2|ALT_INV_reg_out[1]~2_combout\ : std_logic;
SIGNAL \op2|ALT_INV_reg_out[1]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op2_sel[1]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \op1|ALT_INV_reg_out[3]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_op2_wr~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op1_sel[1]~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op1_sel[1]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_alu_op1_sel[0]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux15~1_combout\ : std_logic;
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
SIGNAL \op1|ALT_INV_reg_out[3]~22_combout\ : std_logic;
SIGNAL \op1|ALT_INV_reg_out[3]~21_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_load_register~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[0]~62_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[0]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[1]~58_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[1]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[2]~54_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[2]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[3]~50_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[3]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[4]~46_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[4]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[5]~42_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[5]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[6]~38_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[6]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[7]~34_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[7]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[8]~30_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[8]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[9]~26_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[9]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[10]~22_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[10]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[11]~18_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[11]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[12]~14_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[12]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[13]~10_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[13]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[14]~6_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[14]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[15]~2_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[15]~_emulated_q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[0]~61_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[1]~57_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[2]~53_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[3]~49_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[4]~45_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[5]~41_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[6]~37_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[7]~33_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[8]~29_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[9]~25_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[10]~21_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[11]~17_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[12]~13_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[13]~9_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[14]~5_combout\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempIncr[15]~1_combout\ : std_logic;
SIGNAL \op1|ALT_INV_reg_out[3]~23_combout\ : std_logic;
SIGNAL \ALT_INV_reset_in~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

write_pc <= ww_write_pc;
ww_clk <= clk;
ww_reset_in <= reset_in;
AM <= ww_AM;
ir_wr <= ww_ir_wr;
ir_reset <= ww_ir_reset;
ir_operand_set <= ww_ir_operand_set;
reset_pc <= ww_reset_pc;
Operand <= ww_Operand;
pc_mux_sel <= ww_pc_mux_sel;
instAddr <= ww_instAddr;
OPCode <= ww_OPCode;
alu_outputpin <= ww_alu_outputpin;
currentState <= ww_currentState;
incrAddr <= ww_incrAddr;
instruction <= ww_instruction;
r7_outputData <= ww_r7_outputData;
Rx <= ww_Rx;
rx_outputData <= ww_rx_outputData;
Rz <= ww_Rz;
rz_outputData <= ww_rz_outputData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \op1|reg_out\(15);

\inst|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \op1|reg_out\(14);

\inst|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \op1|reg_out\(13);

\inst|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \op1|reg_out\(12);

\inst|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \op1|reg_out\(11);

\inst|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \op1|reg_out\(10);

\inst|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \op1|reg_out\(9);

\inst|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \op1|reg_out\(8);

\inst|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \op1|reg_out\(7);

\inst|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \op1|reg_out\(6);

\inst|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \op1|reg_out\(5);

\inst|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \op1|reg_out\(4);

\inst|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \op1|reg_out\(3);

\inst|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \op1|reg_out\(2);

\inst|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \op1|reg_out\(1);

\inst|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \op1|reg_out\(0);

\inst|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\program_counter|tempAddress\(5) & \program_counter|tempAddress\(4) & \program_counter|tempAddress\(3) & \program_counter|tempAddress\(2) & \program_counter|tempAddress\(1) & 
\program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \op1|reg_out\(15);

\inst|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \op1|reg_out\(14);

\inst|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \op1|reg_out\(13);

\inst|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \op1|reg_out\(12);

\inst|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \op1|reg_out\(11);

\inst|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \op1|reg_out\(10);

\inst|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \op1|reg_out\(9);

\inst|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \op1|reg_out\(8);

\inst|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \op1|reg_out\(7);

\inst|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \op1|reg_out\(6);

\inst|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \op1|reg_out\(5);

\inst|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \op1|reg_out\(4);

\inst|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \op1|reg_out\(3);

\inst|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \op1|reg_out\(2);

\inst|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \op1|reg_out\(1);

\inst|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \op1|reg_out\(0);

\inst|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\op2|reg_out\(5) & \op2|reg_out\(4) & \op2|reg_out\(3) & \op2|reg_out\(2) & \op2|reg_out\(1) & \op2|reg_out\(0));

\inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\program_counter|ALT_INV_Add0~37_sumout\ <= NOT \program_counter|Add0~37_sumout\;
\program_counter|ALT_INV_Add0~33_sumout\ <= NOT \program_counter|Add0~33_sumout\;
\program_counter|ALT_INV_Add0~29_sumout\ <= NOT \program_counter|Add0~29_sumout\;
\program_counter|ALT_INV_Add0~25_sumout\ <= NOT \program_counter|Add0~25_sumout\;
\program_counter|ALT_INV_Add0~21_sumout\ <= NOT \program_counter|Add0~21_sumout\;
\program_counter|ALT_INV_Add0~17_sumout\ <= NOT \program_counter|Add0~17_sumout\;
\program_counter|ALT_INV_Add0~13_sumout\ <= NOT \program_counter|Add0~13_sumout\;
\program_counter|ALT_INV_Add0~9_sumout\ <= NOT \program_counter|Add0~9_sumout\;
\program_counter|ALT_INV_Add0~5_sumout\ <= NOT \program_counter|Add0~5_sumout\;
\program_counter|ALT_INV_Add0~1_sumout\ <= NOT \program_counter|Add0~1_sumout\;
\op2|ALT_INV_reg_out\(0) <= NOT \op2|reg_out\(0);
\op1|ALT_INV_reg_out\(0) <= NOT \op1|reg_out\(0);
\inst3|ALT_INV_Add0~61_sumout\ <= NOT \inst3|Add0~61_sumout\;
\op2|ALT_INV_reg_out\(1) <= NOT \op2|reg_out\(1);
\op1|ALT_INV_reg_out\(1) <= NOT \op1|reg_out\(1);
\inst3|ALT_INV_Add0~57_sumout\ <= NOT \inst3|Add0~57_sumout\;
\op2|ALT_INV_reg_out\(2) <= NOT \op2|reg_out\(2);
\op1|ALT_INV_reg_out\(2) <= NOT \op1|reg_out\(2);
\inst3|ALT_INV_Add0~53_sumout\ <= NOT \inst3|Add0~53_sumout\;
\op2|ALT_INV_reg_out\(3) <= NOT \op2|reg_out\(3);
\op1|ALT_INV_reg_out\(3) <= NOT \op1|reg_out\(3);
\inst3|ALT_INV_Add0~49_sumout\ <= NOT \inst3|Add0~49_sumout\;
\op2|ALT_INV_reg_out\(4) <= NOT \op2|reg_out\(4);
\op1|ALT_INV_reg_out\(4) <= NOT \op1|reg_out\(4);
\inst3|ALT_INV_Add0~45_sumout\ <= NOT \inst3|Add0~45_sumout\;
\op2|ALT_INV_reg_out\(5) <= NOT \op2|reg_out\(5);
\op1|ALT_INV_reg_out\(5) <= NOT \op1|reg_out\(5);
\inst3|ALT_INV_Add0~41_sumout\ <= NOT \inst3|Add0~41_sumout\;
\op2|ALT_INV_reg_out\(6) <= NOT \op2|reg_out\(6);
\op1|ALT_INV_reg_out\(6) <= NOT \op1|reg_out\(6);
\inst3|ALT_INV_Add0~37_sumout\ <= NOT \inst3|Add0~37_sumout\;
\op2|ALT_INV_reg_out\(7) <= NOT \op2|reg_out\(7);
\op1|ALT_INV_reg_out\(7) <= NOT \op1|reg_out\(7);
\inst3|ALT_INV_Add0~33_sumout\ <= NOT \inst3|Add0~33_sumout\;
\op2|ALT_INV_reg_out\(8) <= NOT \op2|reg_out\(8);
\op1|ALT_INV_reg_out\(8) <= NOT \op1|reg_out\(8);
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\op2|ALT_INV_reg_out\(9) <= NOT \op2|reg_out\(9);
\op1|ALT_INV_reg_out\(9) <= NOT \op1|reg_out\(9);
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\op2|ALT_INV_reg_out\(10) <= NOT \op2|reg_out\(10);
\op1|ALT_INV_reg_out\(10) <= NOT \op1|reg_out\(10);
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\op2|ALT_INV_reg_out\(11) <= NOT \op2|reg_out\(11);
\op1|ALT_INV_reg_out\(11) <= NOT \op1|reg_out\(11);
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\op2|ALT_INV_reg_out\(12) <= NOT \op2|reg_out\(12);
\op1|ALT_INV_reg_out\(12) <= NOT \op1|reg_out\(12);
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\op2|ALT_INV_reg_out\(13) <= NOT \op2|reg_out\(13);
\op1|ALT_INV_reg_out\(13) <= NOT \op1|reg_out\(13);
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\op2|ALT_INV_reg_out\(14) <= NOT \op2|reg_out\(14);
\op1|ALT_INV_reg_out\(14) <= NOT \op1|reg_out\(14);
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\op2|ALT_INV_reg_out\(15) <= NOT \op2|reg_out\(15);
\op1|ALT_INV_reg_out\(15) <= NOT \op1|reg_out\(15);
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\inst3|ALT_INV_Mux2~0_combout\ <= NOT \inst3|Mux2~0_combout\;
\inst3|ALT_INV_Mux1~0_combout\ <= NOT \inst3|Mux1~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst3|ALT_INV_Mux7~2_combout\ <= NOT \inst3|Mux7~2_combout\;
\inst1|ALT_INV_Mux15~0_combout\ <= NOT \inst1|Mux15~0_combout\;
\inst1|ALT_INV_Equal12~0_combout\ <= NOT \inst1|Equal12~0_combout\;
\inst3|ALT_INV_Mux7~1_combout\ <= NOT \inst3|Mux7~1_combout\;
\inst3|ALT_INV_Mux7~0_combout\ <= NOT \inst3|Mux7~0_combout\;
\inst1|ALT_INV_Mux14~1_combout\ <= NOT \inst1|Mux14~1_combout\;
\inst1|ALT_INV_Mux14~0_combout\ <= NOT \inst1|Mux14~0_combout\;
\inst1|ALT_INV_Equal8~0_combout\ <= NOT \inst1|Equal8~0_combout\;
\program_counter|ALT_INV_tempAddress\(0) <= NOT \program_counter|tempAddress\(0);
\program_counter|ALT_INV_tempAddress\(1) <= NOT \program_counter|tempAddress\(1);
\program_counter|ALT_INV_tempAddress\(2) <= NOT \program_counter|tempAddress\(2);
\program_counter|ALT_INV_tempAddress\(3) <= NOT \program_counter|tempAddress\(3);
\program_counter|ALT_INV_tempAddress\(4) <= NOT \program_counter|tempAddress\(4);
\program_counter|ALT_INV_tempAddress\(5) <= NOT \program_counter|tempAddress\(5);
\program_counter|ALT_INV_tempAddress\(6) <= NOT \program_counter|tempAddress\(6);
\program_counter|ALT_INV_tempAddress\(7) <= NOT \program_counter|tempAddress\(7);
\program_counter|ALT_INV_tempAddress\(8) <= NOT \program_counter|tempAddress\(8);
\program_counter|ALT_INV_tempAddress\(9) <= NOT \program_counter|tempAddress\(9);
\program_counter|ALT_INV_tempAddress\(10) <= NOT \program_counter|tempAddress\(10);
\program_counter|ALT_INV_tempAddress\(11) <= NOT \program_counter|tempAddress\(11);
\program_counter|ALT_INV_tempAddress\(12) <= NOT \program_counter|tempAddress\(12);
\program_counter|ALT_INV_tempAddress\(13) <= NOT \program_counter|tempAddress\(13);
\program_counter|ALT_INV_tempAddress\(14) <= NOT \program_counter|tempAddress\(14);
\program_counter|ALT_INV_tempAddress\(15) <= NOT \program_counter|tempAddress\(15);
\inst1|ALT_INV_pc_mux_sel~0_combout\ <= NOT \inst1|pc_mux_sel~0_combout\;
\inst1|ALT_INV_Mux12~0_combout\ <= NOT \inst1|Mux12~0_combout\;
\inst1|ALT_INV_Equal16~0_combout\ <= NOT \inst1|Equal16~0_combout\;
\instruction_r|ALT_INV_t_OP\(2) <= NOT \instruction_r|t_OP\(2);
\instruction_r|ALT_INV_t_OP\(3) <= NOT \instruction_r|t_OP\(3);
\instruction_r|ALT_INV_t_OP\(4) <= NOT \instruction_r|t_OP\(4);
\inst1|ALT_INV_Equal6~0_combout\ <= NOT \inst1|Equal6~0_combout\;
\instruction_r|ALT_INV_t_OP\(1) <= NOT \instruction_r|t_OP\(1);
\instruction_r|ALT_INV_t_OP\(5) <= NOT \instruction_r|t_OP\(5);
\instruction_r|ALT_INV_t_OP\(0) <= NOT \instruction_r|t_OP\(0);
\inst1|ALT_INV_state.T3~q\ <= NOT \inst1|state.T3~q\;
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
\inst1|ALT_INV_state.T0~q\ <= NOT \inst1|state.T0~q\;
\inst1|ALT_INV_state.T1~q\ <= NOT \inst1|state.T1~q\;
\inst1|ALT_INV_state.T1A~q\ <= NOT \inst1|state.T1A~q\;
\instruction_r|ALT_INV_t_Am\(0) <= NOT \instruction_r|t_Am\(0);
\instruction_r|ALT_INV_t_Am\(1) <= NOT \instruction_r|t_Am\(1);
\inst1|ALT_INV_alu_op2_sel[0]~6_combout\ <= NOT \inst1|alu_op2_sel[0]~6_combout\;
\inst1|ALT_INV_alu_op2_sel[1]~2_combout\ <= NOT \inst1|alu_op2_sel[1]~2_combout\;
\program_counter|ALT_INV_Add1~57_sumout\ <= NOT \program_counter|Add1~57_sumout\;
\program_counter|ALT_INV_Add1~53_sumout\ <= NOT \program_counter|Add1~53_sumout\;
\program_counter|ALT_INV_Add1~49_sumout\ <= NOT \program_counter|Add1~49_sumout\;
\program_counter|ALT_INV_Add1~45_sumout\ <= NOT \program_counter|Add1~45_sumout\;
\program_counter|ALT_INV_Add1~41_sumout\ <= NOT \program_counter|Add1~41_sumout\;
\program_counter|ALT_INV_Add1~37_sumout\ <= NOT \program_counter|Add1~37_sumout\;
\program_counter|ALT_INV_Add1~33_sumout\ <= NOT \program_counter|Add1~33_sumout\;
\program_counter|ALT_INV_Add1~29_sumout\ <= NOT \program_counter|Add1~29_sumout\;
\program_counter|ALT_INV_Add1~25_sumout\ <= NOT \program_counter|Add1~25_sumout\;
\program_counter|ALT_INV_Add1~21_sumout\ <= NOT \program_counter|Add1~21_sumout\;
\program_counter|ALT_INV_Add1~17_sumout\ <= NOT \program_counter|Add1~17_sumout\;
\program_counter|ALT_INV_Add1~13_sumout\ <= NOT \program_counter|Add1~13_sumout\;
\program_counter|ALT_INV_Add1~9_sumout\ <= NOT \program_counter|Add1~9_sumout\;
\program_counter|ALT_INV_Add1~5_sumout\ <= NOT \program_counter|Add1~5_sumout\;
\program_counter|ALT_INV_Add1~1_sumout\ <= NOT \program_counter|Add1~1_sumout\;
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
\program_counter|ALT_INV_Add0~57_sumout\ <= NOT \program_counter|Add0~57_sumout\;
\program_counter|ALT_INV_Add0~53_sumout\ <= NOT \program_counter|Add0~53_sumout\;
\program_counter|ALT_INV_Add0~49_sumout\ <= NOT \program_counter|Add0~49_sumout\;
\program_counter|ALT_INV_Add0~45_sumout\ <= NOT \program_counter|Add0~45_sumout\;
\program_counter|ALT_INV_Add0~41_sumout\ <= NOT \program_counter|Add0~41_sumout\;
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
\inst5|ALT_INV_regs[12][12]~q\ <= NOT \inst5|regs[12][12]~q\;
\inst5|ALT_INV_regs[8][12]~q\ <= NOT \inst5|regs[8][12]~q\;
\inst5|ALT_INV_regs[4][12]~q\ <= NOT \inst5|regs[4][12]~q\;
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
\inst5|ALT_INV_regs[4][13]~q\ <= NOT \inst5|regs[4][13]~q\;
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
\inst5|ALT_INV_regs[4][14]~q\ <= NOT \inst5|regs[4][14]~q\;
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
\inst5|ALT_INV_regs[4][15]~q\ <= NOT \inst5|regs[4][15]~q\;
\inst5|ALT_INV_Mux16~0_combout\ <= NOT \inst5|Mux16~0_combout\;
\inst5|ALT_INV_regs[3][15]~q\ <= NOT \inst5|regs[3][15]~q\;
\inst5|ALT_INV_regs[2][15]~q\ <= NOT \inst5|regs[2][15]~q\;
\inst5|ALT_INV_regs[1][15]~q\ <= NOT \inst5|regs[1][15]~q\;
\inst5|ALT_INV_regs[0][15]~q\ <= NOT \inst5|regs[0][15]~q\;
\instruction_r|ALT_INV_t_Rx\(0) <= NOT \instruction_r|t_Rx\(0);
\instruction_r|ALT_INV_t_Rx\(1) <= NOT \instruction_r|t_Rx\(1);
\instruction_r|ALT_INV_t_Rx\(2) <= NOT \instruction_r|t_Rx\(2);
\instruction_r|ALT_INV_t_Rx\(3) <= NOT \instruction_r|t_Rx\(3);
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
\inst1|ALT_INV_currentSignal[2]~1_combout\ <= NOT \inst1|currentSignal[2]~1_combout\;
\inst1|ALT_INV_currentSignal[1]~0_combout\ <= NOT \inst1|currentSignal[1]~0_combout\;
\inst1|ALT_INV_state.T2~q\ <= NOT \inst1|state.T2~q\;
\inst3|ALT_INV_Mux15~0_combout\ <= NOT \inst3|Mux15~0_combout\;
\inst3|ALT_INV_Mux14~0_combout\ <= NOT \inst3|Mux14~0_combout\;
\inst3|ALT_INV_Mux13~0_combout\ <= NOT \inst3|Mux13~0_combout\;
\inst3|ALT_INV_Mux12~0_combout\ <= NOT \inst3|Mux12~0_combout\;
\inst3|ALT_INV_Mux11~0_combout\ <= NOT \inst3|Mux11~0_combout\;
\inst3|ALT_INV_Mux10~0_combout\ <= NOT \inst3|Mux10~0_combout\;
\inst3|ALT_INV_Mux9~0_combout\ <= NOT \inst3|Mux9~0_combout\;
\inst3|ALT_INV_Mux8~0_combout\ <= NOT \inst3|Mux8~0_combout\;
\inst3|ALT_INV_Mux7~3_combout\ <= NOT \inst3|Mux7~3_combout\;
\inst3|ALT_INV_Mux6~0_combout\ <= NOT \inst3|Mux6~0_combout\;
\inst3|ALT_INV_Mux5~0_combout\ <= NOT \inst3|Mux5~0_combout\;
\inst3|ALT_INV_Mux4~0_combout\ <= NOT \inst3|Mux4~0_combout\;
\inst3|ALT_INV_Mux3~0_combout\ <= NOT \inst3|Mux3~0_combout\;
\inst5|ALT_INV_regs[2][5]~q\ <= NOT \inst5|regs[2][5]~q\;
\inst5|ALT_INV_regs[1][5]~q\ <= NOT \inst5|regs[1][5]~q\;
\inst5|ALT_INV_regs[0][5]~q\ <= NOT \inst5|regs[0][5]~q\;
\inst5|ALT_INV_Mux25~4_combout\ <= NOT \inst5|Mux25~4_combout\;
\inst5|ALT_INV_Mux25~3_combout\ <= NOT \inst5|Mux25~3_combout\;
\inst5|ALT_INV_regs[15][6]~q\ <= NOT \inst5|regs[15][6]~q\;
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
\inst5|ALT_INV_regs[4][6]~q\ <= NOT \inst5|regs[4][6]~q\;
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
\inst5|ALT_INV_regs[4][7]~q\ <= NOT \inst5|regs[4][7]~q\;
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
\inst5|ALT_INV_regs[4][8]~q\ <= NOT \inst5|regs[4][8]~q\;
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
\inst5|ALT_INV_regs[4][9]~q\ <= NOT \inst5|regs[4][9]~q\;
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
\inst5|ALT_INV_regs[4][10]~q\ <= NOT \inst5|regs[4][10]~q\;
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
\inst5|ALT_INV_regs[4][11]~q\ <= NOT \inst5|regs[4][11]~q\;
\inst5|ALT_INV_Mux20~0_combout\ <= NOT \inst5|Mux20~0_combout\;
\inst5|ALT_INV_regs[3][11]~q\ <= NOT \inst5|regs[3][11]~q\;
\inst5|ALT_INV_regs[2][11]~q\ <= NOT \inst5|regs[2][11]~q\;
\inst5|ALT_INV_regs[1][11]~q\ <= NOT \inst5|regs[1][11]~q\;
\inst5|ALT_INV_regs[0][11]~q\ <= NOT \inst5|regs[0][11]~q\;
\inst5|ALT_INV_Mux19~4_combout\ <= NOT \inst5|Mux19~4_combout\;
\inst5|ALT_INV_Mux19~3_combout\ <= NOT \inst5|Mux19~3_combout\;
\inst5|ALT_INV_regs[15][12]~q\ <= NOT \inst5|regs[15][12]~q\;
\inst5|ALT_INV_regs[11][12]~q\ <= NOT \inst5|regs[11][12]~q\;
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
\inst5|ALT_INV_regs[4][0]~q\ <= NOT \inst5|regs[4][0]~q\;
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
\inst5|ALT_INV_regs[4][1]~q\ <= NOT \inst5|regs[4][1]~q\;
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
\inst5|ALT_INV_regs[4][2]~q\ <= NOT \inst5|regs[4][2]~q\;
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
\inst5|ALT_INV_regs[4][3]~q\ <= NOT \inst5|regs[4][3]~q\;
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
\inst5|ALT_INV_regs[4][4]~q\ <= NOT \inst5|regs[4][4]~q\;
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
\inst5|ALT_INV_regs[4][5]~q\ <= NOT \inst5|regs[4][5]~q\;
\inst5|ALT_INV_Mux26~0_combout\ <= NOT \inst5|Mux26~0_combout\;
\inst5|ALT_INV_regs[3][5]~q\ <= NOT \inst5|regs[3][5]~q\;
\op2|ALT_INV_reg_out[1]~3_combout\ <= NOT \op2|reg_out[1]~3_combout\;
\op2|ALT_INV_reg_out[1]~2_combout\ <= NOT \op2|reg_out[1]~2_combout\;
\op2|ALT_INV_reg_out[1]~1_combout\ <= NOT \op2|reg_out[1]~1_combout\;
\inst1|ALT_INV_alu_op2_sel[1]~1_combout\ <= NOT \inst1|alu_op2_sel[1]~1_combout\;
\inst1|ALT_INV_alu_op2_sel[1]~0_combout\ <= NOT \inst1|alu_op2_sel[1]~0_combout\;
\inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|Mux5~0_combout\;
\op1|ALT_INV_reg_out[3]~1_combout\ <= NOT \op1|reg_out[3]~1_combout\;
\inst1|ALT_INV_Equal11~0_combout\ <= NOT \inst1|Equal11~0_combout\;
\inst1|ALT_INV_op2_wr~0_combout\ <= NOT \inst1|op2_wr~0_combout\;
\inst1|ALT_INV_Equal15~0_combout\ <= NOT \inst1|Equal15~0_combout\;
\inst1|ALT_INV_alu_op1_sel[1]~2_combout\ <= NOT \inst1|alu_op1_sel[1]~2_combout\;
\inst1|ALT_INV_alu_op1_sel[1]~1_combout\ <= NOT \inst1|alu_op1_sel[1]~1_combout\;
\inst1|ALT_INV_alu_op1_sel[0]~0_combout\ <= NOT \inst1|alu_op1_sel[0]~0_combout\;
\inst1|ALT_INV_Equal2~0_combout\ <= NOT \inst1|Equal2~0_combout\;
\inst1|ALT_INV_Mux3~0_combout\ <= NOT \inst1|Mux3~0_combout\;
\inst1|ALT_INV_Mux15~1_combout\ <= NOT \inst1|Mux15~1_combout\;
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
\op1|ALT_INV_reg_out[3]~22_combout\ <= NOT \op1|reg_out[3]~22_combout\;
\op1|ALT_INV_reg_out[3]~21_combout\ <= NOT \op1|reg_out[3]~21_combout\;
\inst1|ALT_INV_Mux7~1_combout\ <= NOT \inst1|Mux7~1_combout\;
\inst1|ALT_INV_Mux7~0_combout\ <= NOT \inst1|Mux7~0_combout\;
\inst1|ALT_INV_load_register~0_combout\ <= NOT \inst1|load_register~0_combout\;
\inst5|ALT_INV_Mux15~0_combout\ <= NOT \inst5|Mux15~0_combout\;
\inst5|ALT_INV_Mux14~0_combout\ <= NOT \inst5|Mux14~0_combout\;
\inst5|ALT_INV_Mux13~0_combout\ <= NOT \inst5|Mux13~0_combout\;
\inst5|ALT_INV_Mux12~0_combout\ <= NOT \inst5|Mux12~0_combout\;
\inst5|ALT_INV_Mux11~0_combout\ <= NOT \inst5|Mux11~0_combout\;
\inst5|ALT_INV_Mux10~0_combout\ <= NOT \inst5|Mux10~0_combout\;
\inst5|ALT_INV_Mux9~0_combout\ <= NOT \inst5|Mux9~0_combout\;
\inst5|ALT_INV_Mux8~4_combout\ <= NOT \inst5|Mux8~4_combout\;
\inst5|ALT_INV_Mux7~0_combout\ <= NOT \inst5|Mux7~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst5|Mux5~0_combout\;
\inst5|ALT_INV_Mux4~0_combout\ <= NOT \inst5|Mux4~0_combout\;
\inst5|ALT_INV_Mux3~0_combout\ <= NOT \inst5|Mux3~0_combout\;
\inst5|ALT_INV_Mux2~0_combout\ <= NOT \inst5|Mux2~0_combout\;
\inst5|ALT_INV_Mux1~0_combout\ <= NOT \inst5|Mux1~0_combout\;
\inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst5|Mux0~0_combout\;
\inst5|ALT_INV_Mux8~3_combout\ <= NOT \inst5|Mux8~3_combout\;
\inst5|ALT_INV_Mux8~2_combout\ <= NOT \inst5|Mux8~2_combout\;
\inst5|ALT_INV_Mux8~1_combout\ <= NOT \inst5|Mux8~1_combout\;
\inst1|ALT_INV_Mux9~0_combout\ <= NOT \inst1|Mux9~0_combout\;
\inst1|ALT_INV_Equal7~0_combout\ <= NOT \inst1|Equal7~0_combout\;
\inst1|ALT_INV_Mux8~0_combout\ <= NOT \inst1|Mux8~0_combout\;
\inst5|ALT_INV_Mux8~0_combout\ <= NOT \inst5|Mux8~0_combout\;
\program_counter|ALT_INV_tempIncr[0]~62_combout\ <= NOT \program_counter|tempIncr[0]~62_combout\;
\program_counter|ALT_INV_tempIncr[0]~_emulated_q\ <= NOT \program_counter|tempIncr[0]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[1]~58_combout\ <= NOT \program_counter|tempIncr[1]~58_combout\;
\program_counter|ALT_INV_tempIncr[1]~_emulated_q\ <= NOT \program_counter|tempIncr[1]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[2]~54_combout\ <= NOT \program_counter|tempIncr[2]~54_combout\;
\program_counter|ALT_INV_tempIncr[2]~_emulated_q\ <= NOT \program_counter|tempIncr[2]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[3]~50_combout\ <= NOT \program_counter|tempIncr[3]~50_combout\;
\program_counter|ALT_INV_tempIncr[3]~_emulated_q\ <= NOT \program_counter|tempIncr[3]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[4]~46_combout\ <= NOT \program_counter|tempIncr[4]~46_combout\;
\program_counter|ALT_INV_tempIncr[4]~_emulated_q\ <= NOT \program_counter|tempIncr[4]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[5]~42_combout\ <= NOT \program_counter|tempIncr[5]~42_combout\;
\program_counter|ALT_INV_tempIncr[5]~_emulated_q\ <= NOT \program_counter|tempIncr[5]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[6]~38_combout\ <= NOT \program_counter|tempIncr[6]~38_combout\;
\program_counter|ALT_INV_tempIncr[6]~_emulated_q\ <= NOT \program_counter|tempIncr[6]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[7]~34_combout\ <= NOT \program_counter|tempIncr[7]~34_combout\;
\program_counter|ALT_INV_tempIncr[7]~_emulated_q\ <= NOT \program_counter|tempIncr[7]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[8]~30_combout\ <= NOT \program_counter|tempIncr[8]~30_combout\;
\program_counter|ALT_INV_tempIncr[8]~_emulated_q\ <= NOT \program_counter|tempIncr[8]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[9]~26_combout\ <= NOT \program_counter|tempIncr[9]~26_combout\;
\program_counter|ALT_INV_tempIncr[9]~_emulated_q\ <= NOT \program_counter|tempIncr[9]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[10]~22_combout\ <= NOT \program_counter|tempIncr[10]~22_combout\;
\program_counter|ALT_INV_tempIncr[10]~_emulated_q\ <= NOT \program_counter|tempIncr[10]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[11]~18_combout\ <= NOT \program_counter|tempIncr[11]~18_combout\;
\program_counter|ALT_INV_tempIncr[11]~_emulated_q\ <= NOT \program_counter|tempIncr[11]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[12]~14_combout\ <= NOT \program_counter|tempIncr[12]~14_combout\;
\program_counter|ALT_INV_tempIncr[12]~_emulated_q\ <= NOT \program_counter|tempIncr[12]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[13]~10_combout\ <= NOT \program_counter|tempIncr[13]~10_combout\;
\program_counter|ALT_INV_tempIncr[13]~_emulated_q\ <= NOT \program_counter|tempIncr[13]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[14]~6_combout\ <= NOT \program_counter|tempIncr[14]~6_combout\;
\program_counter|ALT_INV_tempIncr[14]~_emulated_q\ <= NOT \program_counter|tempIncr[14]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[15]~2_combout\ <= NOT \program_counter|tempIncr[15]~2_combout\;
\program_counter|ALT_INV_tempIncr[15]~_emulated_q\ <= NOT \program_counter|tempIncr[15]~_emulated_q\;
\program_counter|ALT_INV_tempIncr[0]~61_combout\ <= NOT \program_counter|tempIncr[0]~61_combout\;
\program_counter|ALT_INV_tempIncr[1]~57_combout\ <= NOT \program_counter|tempIncr[1]~57_combout\;
\program_counter|ALT_INV_tempIncr[2]~53_combout\ <= NOT \program_counter|tempIncr[2]~53_combout\;
\program_counter|ALT_INV_tempIncr[3]~49_combout\ <= NOT \program_counter|tempIncr[3]~49_combout\;
\program_counter|ALT_INV_tempIncr[4]~45_combout\ <= NOT \program_counter|tempIncr[4]~45_combout\;
\program_counter|ALT_INV_tempIncr[5]~41_combout\ <= NOT \program_counter|tempIncr[5]~41_combout\;
\program_counter|ALT_INV_tempIncr[6]~37_combout\ <= NOT \program_counter|tempIncr[6]~37_combout\;
\program_counter|ALT_INV_tempIncr[7]~33_combout\ <= NOT \program_counter|tempIncr[7]~33_combout\;
\program_counter|ALT_INV_tempIncr[8]~29_combout\ <= NOT \program_counter|tempIncr[8]~29_combout\;
\program_counter|ALT_INV_tempIncr[9]~25_combout\ <= NOT \program_counter|tempIncr[9]~25_combout\;
\program_counter|ALT_INV_tempIncr[10]~21_combout\ <= NOT \program_counter|tempIncr[10]~21_combout\;
\program_counter|ALT_INV_tempIncr[11]~17_combout\ <= NOT \program_counter|tempIncr[11]~17_combout\;
\program_counter|ALT_INV_tempIncr[12]~13_combout\ <= NOT \program_counter|tempIncr[12]~13_combout\;
\program_counter|ALT_INV_tempIncr[13]~9_combout\ <= NOT \program_counter|tempIncr[13]~9_combout\;
\program_counter|ALT_INV_tempIncr[14]~5_combout\ <= NOT \program_counter|tempIncr[14]~5_combout\;
\program_counter|ALT_INV_tempIncr[15]~1_combout\ <= NOT \program_counter|tempIncr[15]~1_combout\;
\op1|ALT_INV_reg_out[3]~23_combout\ <= NOT \op1|reg_out[3]~23_combout\;
\ALT_INV_reset_in~input_o\ <= NOT \reset_in~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

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
	i => \inst1|pc_mux_sel~0_combout\,
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
	i => \program_counter|tempAddress\(0),
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

\alu_outputpin[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~1_combout\,
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
	i => \inst3|Mux1~1_combout\,
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
	i => \inst3|Mux2~1_combout\,
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
	i => \inst3|Mux3~1_combout\,
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
	i => \inst3|Mux4~1_combout\,
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
	i => \inst3|Mux5~1_combout\,
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
	i => \inst3|Mux6~1_combout\,
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
	i => \inst3|Mux8~1_combout\,
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
	i => \inst3|Mux9~1_combout\,
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
	i => \inst3|Mux10~1_combout\,
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
	i => \inst3|Mux11~1_combout\,
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
	i => \inst3|Mux12~1_combout\,
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
	i => \inst3|Mux13~1_combout\,
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
	i => \inst3|Mux14~1_combout\,
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
	i => \inst3|Mux15~1_combout\,
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
	i => \inst1|ALT_INV_currentSignal[2]~1_combout\,
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
	i => \inst1|currentSignal[1]~0_combout\,
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

\incrAddr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter|tempIncr[15]~2_combout\,
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
	i => \program_counter|tempIncr[14]~6_combout\,
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
	i => \program_counter|tempIncr[13]~10_combout\,
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
	i => \program_counter|tempIncr[12]~14_combout\,
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
	i => \program_counter|tempIncr[11]~18_combout\,
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
	i => \program_counter|tempIncr[10]~22_combout\,
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
	i => \program_counter|tempIncr[9]~26_combout\,
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
	i => \program_counter|tempIncr[8]~30_combout\,
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
	i => \program_counter|tempIncr[7]~34_combout\,
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
	i => \program_counter|tempIncr[6]~38_combout\,
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
	i => \program_counter|tempIncr[5]~42_combout\,
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
	i => \program_counter|tempIncr[4]~46_combout\,
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
	i => \program_counter|tempIncr[3]~50_combout\,
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
	i => \program_counter|tempIncr[2]~54_combout\,
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
	i => \program_counter|tempIncr[1]~58_combout\,
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
	i => \program_counter|tempIncr[0]~62_combout\,
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

\inst1|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~8_combout\ = (!\reset_in~input_o\ & ((!\inst1|state.T0~q\) # (\inst1|state.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T0~q\,
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~8_combout\);

\inst1|state.T1\ : dffeas
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
	q => \inst1|state.T1~q\);

\inst1|state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~7_combout\ = (\inst1|state.T1~q\ & !\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1~q\,
	datab => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~7_combout\);

\inst1|state.T1A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T1A~q\);

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

\inst1|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~9_combout\ = (\inst1|state.T2~q\ & !\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T2~q\,
	datab => \ALT_INV_reset_in~input_o\,
	combout => \inst1|state~9_combout\);

\inst1|state.T3\ : dffeas
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
	q => \inst1|state.T3~q\);

\inst1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = (\inst1|state.T1A~q\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_Am\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T1A~q\,
	combout => \inst1|Selector0~1_combout\);

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

\inst1|currentSignal[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentSignal[1]~0_combout\ = (!\inst1|state.T1~q\ & \inst1|state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1~q\,
	datab => \inst1|ALT_INV_state.T0~q\,
	combout => \inst1|currentSignal[1]~0_combout\);

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

\inst5|regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][6]~q\);

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

\inst5|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][5]~q\);

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

\inst5|regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][4]~q\);

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

\inst5|regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][13]~q\);

\inst5|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~4_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~4_combout\);

\inst5|regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][13]~q\);

\inst5|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~6_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~6_combout\);

\inst5|regs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][13]~q\);

\inst5|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~7_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~7_combout\);

\inst5|regs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][13]~q\);

\inst5|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~0_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~0_combout\);

\inst5|regs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[8][13]~q\);

\inst5|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~9_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~9_combout\);

\inst5|regs[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][13]~q\);

\inst5|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~10_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~10_combout\);

\inst5|regs[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][13]~q\);

\inst5|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~11_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~11_combout\);

\inst5|regs[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[12][13]~q\);

\inst5|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~13_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~13_combout\);

\inst5|regs[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[13][13]~q\);

\inst5|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~14_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~14_combout\);

\inst5|regs[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[14][13]~q\);

\inst5|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~15_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~15_combout\);

\inst5|regs[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux2~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\inst5|regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux6~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\inst5|regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux4~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\program_counter|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~57_sumout\ = SUM(( \inst2|output_signal[0]~15_combout\ ) + ( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[1]~58_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & ((\op1|reg_out\(1)))) # (\inst1|Mux12~0_combout\ 
-- & (\program_counter|tempIncr[1]~58_combout\)))) ) + ( !VCC ))
-- \program_counter|Add1~58\ = CARRY(( \inst2|output_signal[0]~15_combout\ ) + ( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[1]~58_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & ((\op1|reg_out\(1)))) # (\inst1|Mux12~0_combout\ & 
-- (\program_counter|tempIncr[1]~58_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \program_counter|ALT_INV_tempIncr[1]~58_combout\,
	datad => \inst2|ALT_INV_output_signal[0]~15_combout\,
	dataf => \op1|ALT_INV_reg_out\(1),
	cin => GND,
	sumout => \program_counter|Add1~57_sumout\,
	cout => \program_counter|Add1~58\);

\program_counter|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~57_sumout\ = SUM(( \program_counter|tempAddress\(0) ) + ( \program_counter|tempAddress\(1) ) + ( !VCC ))
-- \program_counter|Add0~58\ = CARRY(( \program_counter|tempAddress\(0) ) + ( \program_counter|tempAddress\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(0),
	dataf => \program_counter|ALT_INV_tempAddress\(1),
	cin => GND,
	sumout => \program_counter|Add0~57_sumout\,
	cout => \program_counter|Add0~58\);

\program_counter|tempIncr[1]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[1]~57_combout\ = ( \program_counter|tempIncr[1]~57_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[1]~57_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~57_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[1]~57_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~57_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[1]~57_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[1]~57_combout\);

\program_counter|tempIncr[1]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[1]~59_combout\ = !\program_counter|Add1~57_sumout\ $ (!\program_counter|tempIncr[1]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~57_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[1]~57_combout\,
	combout => \program_counter|tempIncr[1]~59_combout\);

\program_counter|tempIncr[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[1]~59_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[1]~_emulated_q\);

\program_counter|tempIncr[1]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[1]~58_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~57_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[1]~_emulated_q\ $ ((!\program_counter|tempIncr[1]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[1]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[1]~57_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~57_sumout\,
	combout => \program_counter|tempIncr[1]~58_combout\);

\inst2|output_signal[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[1]~14_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[1]~58_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(1))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[1]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(1),
	datad => \program_counter|ALT_INV_tempIncr[1]~58_combout\,
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

\program_counter|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~53_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[2]~54_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & ((\op1|reg_out\(2)))) # (\inst1|Mux12~0_combout\ & 
-- (\program_counter|tempIncr[2]~54_combout\)))) ) + ( GND ) + ( \program_counter|Add1~58\ ))
-- \program_counter|Add1~54\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[2]~54_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & ((\op1|reg_out\(2)))) # (\inst1|Mux12~0_combout\ & 
-- (\program_counter|tempIncr[2]~54_combout\)))) ) + ( GND ) + ( \program_counter|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \program_counter|ALT_INV_tempIncr[2]~54_combout\,
	datad => \op1|ALT_INV_reg_out\(2),
	cin => \program_counter|Add1~58\,
	sumout => \program_counter|Add1~53_sumout\,
	cout => \program_counter|Add1~54\);

\program_counter|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~53_sumout\ = SUM(( \program_counter|tempAddress\(2) ) + ( GND ) + ( \program_counter|Add0~58\ ))
-- \program_counter|Add0~54\ = CARRY(( \program_counter|tempAddress\(2) ) + ( GND ) + ( \program_counter|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(2),
	cin => \program_counter|Add0~58\,
	sumout => \program_counter|Add0~53_sumout\,
	cout => \program_counter|Add0~54\);

\program_counter|tempIncr[2]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[2]~53_combout\ = ( \program_counter|tempIncr[2]~53_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[2]~53_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~53_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[2]~53_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~53_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[2]~53_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[2]~53_combout\);

\program_counter|tempIncr[2]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[2]~55_combout\ = !\program_counter|Add1~53_sumout\ $ (!\program_counter|tempIncr[2]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~53_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[2]~53_combout\,
	combout => \program_counter|tempIncr[2]~55_combout\);

\program_counter|tempIncr[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[2]~55_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[2]~_emulated_q\);

\program_counter|tempIncr[2]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[2]~54_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~53_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[2]~_emulated_q\ $ ((!\program_counter|tempIncr[2]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[2]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[2]~53_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~53_sumout\,
	combout => \program_counter|tempIncr[2]~54_combout\);

\inst2|output_signal[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[2]~13_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[2]~54_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(2))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[2]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(2),
	datad => \program_counter|ALT_INV_tempIncr[2]~54_combout\,
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

\program_counter|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~49_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[3]~50_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(3))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[3]~50_combout\))))) ) + ( GND ) + ( \program_counter|Add1~54\ ))
-- \program_counter|Add1~50\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[3]~50_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(3))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[3]~50_combout\))))) ) + ( GND ) + ( \program_counter|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(3),
	datad => \program_counter|ALT_INV_tempIncr[3]~50_combout\,
	cin => \program_counter|Add1~54\,
	sumout => \program_counter|Add1~49_sumout\,
	cout => \program_counter|Add1~50\);

\program_counter|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~49_sumout\ = SUM(( \program_counter|tempAddress\(3) ) + ( GND ) + ( \program_counter|Add0~54\ ))
-- \program_counter|Add0~50\ = CARRY(( \program_counter|tempAddress\(3) ) + ( GND ) + ( \program_counter|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(3),
	cin => \program_counter|Add0~54\,
	sumout => \program_counter|Add0~49_sumout\,
	cout => \program_counter|Add0~50\);

\program_counter|tempIncr[3]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[3]~49_combout\ = ( \program_counter|tempIncr[3]~49_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[3]~49_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~49_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[3]~49_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~49_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[3]~49_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[3]~49_combout\);

\program_counter|tempIncr[3]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[3]~51_combout\ = !\program_counter|Add1~49_sumout\ $ (!\program_counter|tempIncr[3]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~49_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[3]~49_combout\,
	combout => \program_counter|tempIncr[3]~51_combout\);

\program_counter|tempIncr[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[3]~51_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[3]~_emulated_q\);

\program_counter|tempIncr[3]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[3]~50_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~49_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[3]~_emulated_q\ $ ((!\program_counter|tempIncr[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[3]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[3]~49_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~49_sumout\,
	combout => \program_counter|tempIncr[3]~50_combout\);

\inst2|output_signal[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[3]~12_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[3]~50_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(3))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[3]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(3),
	datad => \program_counter|ALT_INV_tempIncr[3]~50_combout\,
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

\inst2|output_signal[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[4]~11_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[4]~46_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(4))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[4]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(4),
	datad => \program_counter|ALT_INV_tempIncr[4]~46_combout\,
	combout => \inst2|output_signal[4]~11_combout\);

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

\inst2|output_signal[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[5]~10_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[5]~42_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(5))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[5]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(5),
	datad => \program_counter|ALT_INV_tempIncr[5]~42_combout\,
	combout => \inst2|output_signal[5]~10_combout\);

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

\inst|memory_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000ABC48",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

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

\inst5|regs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\program_counter|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~25_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[9]~26_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(9))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[9]~26_combout\))))) ) + ( GND ) + ( \program_counter|Add1~30\ ))
-- \program_counter|Add1~26\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[9]~26_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(9))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[9]~26_combout\))))) ) + ( GND ) + ( \program_counter|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(9),
	datad => \program_counter|ALT_INV_tempIncr[9]~26_combout\,
	cin => \program_counter|Add1~30\,
	sumout => \program_counter|Add1~25_sumout\,
	cout => \program_counter|Add1~26\);

\program_counter|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~21_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[10]~22_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(10))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[10]~22_combout\))))) ) + ( GND ) + ( \program_counter|Add1~26\ ))
-- \program_counter|Add1~22\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[10]~22_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(10))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[10]~22_combout\))))) ) + ( GND ) + ( \program_counter|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(10),
	datad => \program_counter|ALT_INV_tempIncr[10]~22_combout\,
	cin => \program_counter|Add1~26\,
	sumout => \program_counter|Add1~21_sumout\,
	cout => \program_counter|Add1~22\);

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

\inst2|output_signal[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[8]~7_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[8]~30_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(8))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[8]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(8),
	datad => \program_counter|ALT_INV_tempIncr[8]~30_combout\,
	combout => \inst2|output_signal[8]~7_combout\);

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

\inst2|output_signal[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[7]~8_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[7]~34_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(7))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[7]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(7),
	datad => \program_counter|ALT_INV_tempIncr[7]~34_combout\,
	combout => \inst2|output_signal[7]~8_combout\);

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

\inst2|output_signal[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[6]~9_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[6]~38_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(6))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[6]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(6),
	datad => \program_counter|ALT_INV_tempIncr[6]~38_combout\,
	combout => \inst2|output_signal[6]~9_combout\);

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

\program_counter|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~45_sumout\ = SUM(( \program_counter|tempAddress\(4) ) + ( GND ) + ( \program_counter|Add0~50\ ))
-- \program_counter|Add0~46\ = CARRY(( \program_counter|tempAddress\(4) ) + ( GND ) + ( \program_counter|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(4),
	cin => \program_counter|Add0~50\,
	sumout => \program_counter|Add0~45_sumout\,
	cout => \program_counter|Add0~46\);

\program_counter|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~41_sumout\ = SUM(( \program_counter|tempAddress\(5) ) + ( GND ) + ( \program_counter|Add0~46\ ))
-- \program_counter|Add0~42\ = CARRY(( \program_counter|tempAddress\(5) ) + ( GND ) + ( \program_counter|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(5),
	cin => \program_counter|Add0~46\,
	sumout => \program_counter|Add0~41_sumout\,
	cout => \program_counter|Add0~42\);

\program_counter|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~37_sumout\ = SUM(( \program_counter|tempAddress\(6) ) + ( GND ) + ( \program_counter|Add0~42\ ))
-- \program_counter|Add0~38\ = CARRY(( \program_counter|tempAddress\(6) ) + ( GND ) + ( \program_counter|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(6),
	cin => \program_counter|Add0~42\,
	sumout => \program_counter|Add0~37_sumout\,
	cout => \program_counter|Add0~38\);

\program_counter|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~33_sumout\ = SUM(( \program_counter|tempAddress\(7) ) + ( GND ) + ( \program_counter|Add0~38\ ))
-- \program_counter|Add0~34\ = CARRY(( \program_counter|tempAddress\(7) ) + ( GND ) + ( \program_counter|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(7),
	cin => \program_counter|Add0~38\,
	sumout => \program_counter|Add0~33_sumout\,
	cout => \program_counter|Add0~34\);

\program_counter|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~29_sumout\ = SUM(( \program_counter|tempAddress\(8) ) + ( GND ) + ( \program_counter|Add0~34\ ))
-- \program_counter|Add0~30\ = CARRY(( \program_counter|tempAddress\(8) ) + ( GND ) + ( \program_counter|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(8),
	cin => \program_counter|Add0~34\,
	sumout => \program_counter|Add0~29_sumout\,
	cout => \program_counter|Add0~30\);

\program_counter|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~25_sumout\ = SUM(( \program_counter|tempAddress\(9) ) + ( GND ) + ( \program_counter|Add0~30\ ))
-- \program_counter|Add0~26\ = CARRY(( \program_counter|tempAddress\(9) ) + ( GND ) + ( \program_counter|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(9),
	cin => \program_counter|Add0~30\,
	sumout => \program_counter|Add0~25_sumout\,
	cout => \program_counter|Add0~26\);

\program_counter|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~21_sumout\ = SUM(( \program_counter|tempAddress\(10) ) + ( GND ) + ( \program_counter|Add0~26\ ))
-- \program_counter|Add0~22\ = CARRY(( \program_counter|tempAddress\(10) ) + ( GND ) + ( \program_counter|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(10),
	cin => \program_counter|Add0~26\,
	sumout => \program_counter|Add0~21_sumout\,
	cout => \program_counter|Add0~22\);

\program_counter|tempIncr[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[10]~21_combout\ = ( \program_counter|tempIncr[10]~21_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[10]~21_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~21_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[10]~21_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~21_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[10]~21_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[10]~21_combout\);

\program_counter|tempIncr[10]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[10]~23_combout\ = !\program_counter|Add1~21_sumout\ $ (!\program_counter|tempIncr[10]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~21_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[10]~21_combout\,
	combout => \program_counter|tempIncr[10]~23_combout\);

\program_counter|tempIncr[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[10]~23_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[10]~_emulated_q\);

\program_counter|tempIncr[10]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[10]~22_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~21_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[10]~_emulated_q\ $ ((!\program_counter|tempIncr[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[10]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[10]~21_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~21_sumout\,
	combout => \program_counter|tempIncr[10]~22_combout\);

\inst2|output_signal[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[10]~5_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[10]~22_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(10))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[10]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(10),
	datad => \program_counter|ALT_INV_tempIncr[10]~22_combout\,
	combout => \inst2|output_signal[10]~5_combout\);

\instruction_r|t_Am[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|t_Am[1]~0_combout\ = (\inst1|state.T1~q\ & ((!\inst1|state.T1A~q\) # (!\instruction_r|t_Am\(1) $ (\instruction_r|t_Am\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111001000000001111100100000000111110010000000011111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T1A~q\,
	datad => \inst1|ALT_INV_state.T1~q\,
	combout => \instruction_r|t_Am[1]~0_combout\);

\instruction_r|t_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(2));

\inst1|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal15~0_combout\ = ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & \instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal15~0_combout\);

\inst1|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal11~0_combout\ = ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal11~0_combout\);

\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) $ (\instruction_r|t_OP\(5)))) # (\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & \instruction_r|t_OP\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001100000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux5~0_combout\);

\inst1|alu_op2_sel[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[0]~6_combout\ = ( !\instruction_r|t_Am\(0) & ( (\inst1|state.T2~q\ & (\instruction_r|t_Am\(1) & (((\inst1|Equal11~0_combout\ & !\instruction_r|t_OP\(3))) # (\inst1|Equal15~0_combout\)))) ) ) # ( \instruction_r|t_Am\(0) & ( 
-- (((\inst1|Mux5~0_combout\ & (\inst1|state.T2~q\ & !\instruction_r|t_Am\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000111100000000011101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal15~0_combout\,
	datab => \inst1|ALT_INV_Equal11~0_combout\,
	datac => \inst1|ALT_INV_Mux5~0_combout\,
	datad => \inst1|ALT_INV_state.T2~q\,
	datae => \instruction_r|ALT_INV_t_Am\(0),
	dataf => \instruction_r|ALT_INV_t_Am\(1),
	datag => \instruction_r|ALT_INV_t_OP\(3),
	combout => \inst1|alu_op2_sel[0]~6_combout\);

\inst1|alu_op2_sel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[1]~1_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|alu_op2_sel[1]~1_combout\);

\inst1|alu_op2_sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[1]~0_combout\ = (!\inst1|Equal6~0_combout\) # ((!\instruction_r|t_OP\(2)) # (!\instruction_r|t_OP\(4) $ (!\instruction_r|t_OP\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011110111111111101111011111111110111101111111111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \inst1|ALT_INV_Equal6~0_combout\,
	datac => \instruction_r|ALT_INV_t_OP\(3),
	datad => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|alu_op2_sel[1]~0_combout\);

\inst1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(4) & (\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal2~0_combout\);

\inst1|alu_op2_sel[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op2_sel[1]~2_combout\ = ( !\instruction_r|t_Am\(0) & ( (((\inst1|Equal2~0_combout\ & (\inst1|state.T2~q\ & \instruction_r|t_Am\(1))))) ) ) # ( \instruction_r|t_Am\(0) & ( (\inst1|state.T2~q\ & (((!\instruction_r|t_Am\(1) & 
-- ((!\inst1|alu_op2_sel[1]~0_combout\))) # (\instruction_r|t_Am\(1) & (\inst1|alu_op2_sel[1]~1_combout\))) # (\inst1|Equal15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000001100111100000000000011110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_alu_op2_sel[1]~1_combout\,
	datab => \inst1|ALT_INV_alu_op2_sel[1]~0_combout\,
	datac => \inst1|ALT_INV_Equal15~0_combout\,
	datad => \inst1|ALT_INV_state.T2~q\,
	datae => \instruction_r|ALT_INV_t_Am\(0),
	dataf => \instruction_r|ALT_INV_t_Am\(1),
	datag => \inst1|ALT_INV_Equal2~0_combout\,
	combout => \inst1|alu_op2_sel[1]~2_combout\);

\op2|reg_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~9_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[10]~5_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux37~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(10) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux21~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~9_combout\);

\op2|reg_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out[1]~1_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(4)) # (\instruction_r|t_OP\(5))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & 
-- (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100011000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \op2|reg_out[1]~1_combout\);

\op2|reg_out[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out[1]~2_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( 
-- (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(4) & 
-- (!\instruction_r|t_OP\(0) $ (\instruction_r|t_OP\(5)))) # (\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & \instruction_r|t_OP\(5))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & 
-- (!\instruction_r|t_OP\(5) & \instruction_r|t_OP\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000100001100000000010000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \op2|reg_out[1]~2_combout\);

\op2|reg_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out[1]~3_combout\ = ( \op2|reg_out[1]~1_combout\ & ( \op2|reg_out[1]~2_combout\ & ( ((\instruction_r|t_Am\(1) & ((\inst1|Equal2~0_combout\) # (\inst1|Equal15~0_combout\)))) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\op2|reg_out[1]~1_combout\ & ( 
-- \op2|reg_out[1]~2_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0))) # (\instruction_r|t_Am\(1) & (((!\instruction_r|t_Am\(0) & \inst1|Equal2~0_combout\)) # (\inst1|Equal15~0_combout\))) ) ) ) # ( \op2|reg_out[1]~1_combout\ & ( 
-- !\op2|reg_out[1]~2_combout\ & ( (\instruction_r|t_Am\(1) & (((\inst1|Equal2~0_combout\) # (\inst1|Equal15~0_combout\)) # (\instruction_r|t_Am\(0)))) ) ) ) # ( !\op2|reg_out[1]~1_combout\ & ( !\op2|reg_out[1]~2_combout\ & ( (\instruction_r|t_Am\(1) & 
-- (((!\instruction_r|t_Am\(0) & \inst1|Equal2~0_combout\)) # (\inst1|Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101000101010101010100100111011001110011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Equal15~0_combout\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \op2|ALT_INV_reg_out[1]~1_combout\,
	dataf => \op2|ALT_INV_reg_out[1]~2_combout\,
	combout => \op2|reg_out[1]~3_combout\);

\op2|reg_out[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out[1]~4_combout\ = (!\inst1|state.T0~q\) # ((\inst1|state.T2~q\ & \op2|reg_out[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T0~q\,
	datab => \inst1|ALT_INV_state.T2~q\,
	datac => \op2|ALT_INV_reg_out[1]~3_combout\,
	combout => \op2|reg_out[1]~4_combout\);

\op2|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~9_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(10));

\inst3|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~66_cout\ = CARRY(( (\instruction_r|t_Am\(0) & (\inst1|state.T3~q\ & \inst1|Mux15~1_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \inst1|ALT_INV_Mux15~1_combout\,
	cin => GND,
	cout => \inst3|Add0~66_cout\);

\inst3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~61_sumout\ = SUM(( !\op1|reg_out\(0) $ (((!\instruction_r|t_Am\(0)) # ((!\inst1|state.T3~q\) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(0) ) + ( \inst3|Add0~66_cout\ ))
-- \inst3|Add0~62\ = CARRY(( !\op1|reg_out\(0) $ (((!\instruction_r|t_Am\(0)) # ((!\inst1|state.T3~q\) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(0) ) + ( \inst3|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(0),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \inst1|ALT_INV_Mux15~1_combout\,
	dataf => \op2|ALT_INV_reg_out\(0),
	cin => \inst3|Add0~66_cout\,
	sumout => \inst3|Add0~61_sumout\,
	cout => \inst3|Add0~62\);

\inst3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~57_sumout\ = SUM(( !\op1|reg_out\(1) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(1) ) + ( \inst3|Add0~62\ ))
-- \inst3|Add0~58\ = CARRY(( !\op1|reg_out\(1) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(1) ) + ( \inst3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux15~1_combout\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \op1|ALT_INV_reg_out\(1),
	dataf => \op2|ALT_INV_reg_out\(1),
	cin => \inst3|Add0~62\,
	sumout => \inst3|Add0~57_sumout\,
	cout => \inst3|Add0~58\);

\inst3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~53_sumout\ = SUM(( !\op1|reg_out\(2) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(2) ) + ( \inst3|Add0~58\ ))
-- \inst3|Add0~54\ = CARRY(( !\op1|reg_out\(2) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(2) ) + ( \inst3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux15~1_combout\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \op1|ALT_INV_reg_out\(2),
	dataf => \op2|ALT_INV_reg_out\(2),
	cin => \inst3|Add0~58\,
	sumout => \inst3|Add0~53_sumout\,
	cout => \inst3|Add0~54\);

\inst3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~49_sumout\ = SUM(( !\op1|reg_out\(3) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(3) ) + ( \inst3|Add0~54\ ))
-- \inst3|Add0~50\ = CARRY(( !\op1|reg_out\(3) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(3) ) + ( \inst3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux15~1_combout\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \op1|ALT_INV_reg_out\(3),
	dataf => \op2|ALT_INV_reg_out\(3),
	cin => \inst3|Add0~54\,
	sumout => \inst3|Add0~49_sumout\,
	cout => \inst3|Add0~50\);

\inst3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~45_sumout\ = SUM(( !\op1|reg_out\(4) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(4) ) + ( \inst3|Add0~50\ ))
-- \inst3|Add0~46\ = CARRY(( !\op1|reg_out\(4) $ (((!\inst1|Mux15~1_combout\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) + ( \op2|reg_out\(4) ) + ( \inst3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux15~1_combout\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \op1|ALT_INV_reg_out\(4),
	dataf => \op2|ALT_INV_reg_out\(4),
	cin => \inst3|Add0~50\,
	sumout => \inst3|Add0~45_sumout\,
	cout => \inst3|Add0~46\);

\inst3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~41_sumout\ = SUM(( !\op1|reg_out\(5) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(5) ) + ( \inst3|Add0~46\ ))
-- \inst3|Add0~42\ = CARRY(( !\op1|reg_out\(5) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(5) ) + ( \inst3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(5),
	dataf => \op2|ALT_INV_reg_out\(5),
	cin => \inst3|Add0~46\,
	sumout => \inst3|Add0~41_sumout\,
	cout => \inst3|Add0~42\);

\inst3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~37_sumout\ = SUM(( !\op1|reg_out\(6) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(6) ) + ( \inst3|Add0~42\ ))
-- \inst3|Add0~38\ = CARRY(( !\op1|reg_out\(6) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(6) ) + ( \inst3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(6),
	dataf => \op2|ALT_INV_reg_out\(6),
	cin => \inst3|Add0~42\,
	sumout => \inst3|Add0~37_sumout\,
	cout => \inst3|Add0~38\);

\inst3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~33_sumout\ = SUM(( !\op1|reg_out\(7) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(7) ) + ( \inst3|Add0~38\ ))
-- \inst3|Add0~34\ = CARRY(( !\op1|reg_out\(7) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(7) ) + ( \inst3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(7),
	dataf => \op2|ALT_INV_reg_out\(7),
	cin => \inst3|Add0~38\,
	sumout => \inst3|Add0~33_sumout\,
	cout => \inst3|Add0~34\);

\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( !\op1|reg_out\(8) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(8) ) + ( \inst3|Add0~34\ ))
-- \inst3|Add0~30\ = CARRY(( !\op1|reg_out\(8) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(8) ) + ( \inst3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(8),
	dataf => \op2|ALT_INV_reg_out\(8),
	cin => \inst3|Add0~34\,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( !\op1|reg_out\(9) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(9) ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( !\op1|reg_out\(9) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(9) ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(9),
	dataf => \op2|ALT_INV_reg_out\(9),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( !\op1|reg_out\(10) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(10) ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( !\op1|reg_out\(10) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(10) ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(10),
	dataf => \op2|ALT_INV_reg_out\(10),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

\inst1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = ( !\instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & \instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux15~0_combout\);

\inst3|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\instruction_r|t_Am\(0) & \inst1|state.T3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	combout => \inst3|Mux7~0_combout\);

\inst3|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~2_combout\ = ( \inst3|Mux7~0_combout\ & ( ((!\instruction_r|t_Am\(1) & ((\inst1|Equal8~0_combout\) # (\inst1|Mux15~0_combout\)))) # (\inst1|Equal12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111011101110110011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_Equal12~0_combout\,
	datac => \inst1|ALT_INV_Mux15~0_combout\,
	datad => \inst1|ALT_INV_Equal8~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~0_combout\,
	combout => \inst3|Mux7~2_combout\);

\inst3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(10))) # (\op2|reg_out\(10)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(10)) # 
-- (\op1|reg_out\(10)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(10) & (\op2|reg_out\(10) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(10) & \op2|reg_out\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(10),
	datad => \op2|ALT_INV_reg_out\(10),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux5~0_combout\);

\inst5|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = ( \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(4) & (\instruction_r|t_OP\(0) & (\instruction_r|t_OP\(5) & \instruction_r|t_OP\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst5|Mux8~0_combout\);

\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( \inst5|Mux8~0_combout\ & ( (!\instruction_r|t_OP\(3) & ((!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & \inst1|Equal11~0_combout\)) # (\instruction_r|t_Am\(1) & ((\inst1|Equal11~0_combout\) # (\instruction_r|t_Am\(0)))))) 
-- ) ) # ( !\inst5|Mux8~0_combout\ & ( (!\instruction_r|t_OP\(3) & (\inst1|Equal11~0_combout\ & ((\instruction_r|t_Am\(0)) # (\instruction_r|t_Am\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000100000111000000000000011100000001000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(3),
	datad => \inst1|ALT_INV_Equal11~0_combout\,
	datae => \inst5|ALT_INV_Mux8~0_combout\,
	combout => \inst1|Mux8~0_combout\);

\inst1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal7~0_combout\ = ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & \instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal7~0_combout\);

\inst1|op2_wr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|op2_wr~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & (!\instruction_r|t_OP\(4) $ (\instruction_r|t_OP\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|op2_wr~0_combout\);

\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( \inst1|Equal11~0_combout\ & ( \inst1|op2_wr~0_combout\ & ( ((\instruction_r|t_Am\(1) & !\instruction_r|t_OP\(3))) # (\instruction_r|t_Am\(0)) ) ) ) # ( !\inst1|Equal11~0_combout\ & ( \inst1|op2_wr~0_combout\ & ( 
-- \instruction_r|t_Am\(0) ) ) ) # ( \inst1|Equal11~0_combout\ & ( !\inst1|op2_wr~0_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & ((\inst1|Equal7~0_combout\)))) # (\instruction_r|t_Am\(1) & (((!\instruction_r|t_OP\(3))))) ) ) ) # ( 
-- !\inst1|Equal11~0_combout\ & ( !\inst1|op2_wr~0_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & \inst1|Equal7~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010010100000111001000110011001100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(3),
	datad => \inst1|ALT_INV_Equal7~0_combout\,
	datae => \inst1|ALT_INV_Equal11~0_combout\,
	dataf => \inst1|ALT_INV_op2_wr~0_combout\,
	combout => \inst1|Mux9~0_combout\);

\inst5|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~1_combout\ = ( \inst5|Mux8~0_combout\ & ( (!\instruction_r|t_OP\(3) & (\inst3|Mux7~0_combout\ & ((\inst1|Equal11~0_combout\) # (\instruction_r|t_Am\(1))))) ) ) # ( !\inst5|Mux8~0_combout\ & ( (!\instruction_r|t_Am\(1) & 
-- (!\instruction_r|t_OP\(3) & (\inst1|Equal11~0_combout\ & \inst3|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000100110000000000000010000000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_OP\(3),
	datac => \inst1|ALT_INV_Equal11~0_combout\,
	datad => \inst3|ALT_INV_Mux7~0_combout\,
	datae => \inst5|ALT_INV_Mux8~0_combout\,
	combout => \inst5|Mux8~1_combout\);

\inst5|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~2_combout\ = (!\inst5|Mux8~1_combout\ & ((!\inst1|state.T3~q\) # ((!\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000111110110000000011111011000000001111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux8~0_combout\,
	datac => \inst1|ALT_INV_Mux9~0_combout\,
	datad => \inst5|ALT_INV_Mux8~1_combout\,
	combout => \inst5|Mux8~2_combout\);

\inst5|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~3_combout\ = (\inst1|state.T3~q\ & (!\inst5|Mux8~1_combout\ & ((\inst1|Mux9~0_combout\) # (\inst1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000101010000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux8~0_combout\,
	datac => \inst1|ALT_INV_Mux9~0_combout\,
	datad => \inst5|ALT_INV_Mux8~1_combout\,
	combout => \inst5|Mux8~3_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000ABC48",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\inst5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(10))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(10) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ & ( (\instruction_r|t_Operand\(10) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(10),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a10~portbdataout\,
	combout => \inst5|Mux5~0_combout\);

\inst5|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux5~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux5~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux5~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~21_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux5~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~21_sumout\,
	datac => \inst3|ALT_INV_Mux5~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
	dataf => \inst5|ALT_INV_Mux5~0_combout\,
	combout => \inst5|Mux5~1_combout\);

\inst5|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~1_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~1_combout\);

\inst5|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux5~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
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
-- \inst1|Mux3~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( 
-- \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1))) ) ) ) # ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & 
-- (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(5) & ((!\instruction_r|t_OP\(0)) # (\instruction_r|t_OP\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000010000000000000011000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux3~0_combout\);

\inst1|alu_op1_sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op1_sel[0]~0_combout\ = ( \inst1|Equal2~0_combout\ & ( (\inst1|state.T2~q\ & ((!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & \inst1|Mux3~0_combout\)) # (\instruction_r|t_Am\(1) & (!\instruction_r|t_Am\(0))))) ) ) # ( 
-- !\inst1|Equal2~0_combout\ & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & (\inst1|state.T2~q\ & \inst1|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000001000000011000000000000000100000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T2~q\,
	datad => \inst1|ALT_INV_Mux3~0_combout\,
	datae => \inst1|ALT_INV_Equal2~0_combout\,
	combout => \inst1|alu_op1_sel[0]~0_combout\);

\inst1|alu_op1_sel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|alu_op1_sel[1]~1_combout\ = ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & !\instruction_r|t_OP\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datad => \instruction_r|ALT_INV_t_OP\(1),
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

\op1|reg_out[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out[3]~21_combout\ = ( !\instruction_r|t_OP\(0) & ( \instruction_r|t_OP\(4) & ( (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(2) & (\instruction_r|t_OP\(3))) # (\instruction_r|t_OP\(2) & ((!\instruction_r|t_OP\(5)))))) ) ) ) # ( 
-- \instruction_r|t_OP\(0) & ( !\instruction_r|t_OP\(4) & ( (!\instruction_r|t_OP\(2) & ((!\instruction_r|t_OP\(3) & (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(5))) # (\instruction_r|t_OP\(3) & (!\instruction_r|t_OP\(1) & \instruction_r|t_OP\(5))))) ) 
-- ) ) # ( !\instruction_r|t_OP\(0) & ( !\instruction_r|t_OP\(4) & ( (!\instruction_r|t_OP\(5) & ((!\instruction_r|t_OP\(1)) # ((!\instruction_r|t_OP\(2) & !\instruction_r|t_OP\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000000010000010000001110000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(2),
	datab => \instruction_r|ALT_INV_t_OP\(3),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(5),
	datae => \instruction_r|ALT_INV_t_OP\(0),
	dataf => \instruction_r|ALT_INV_t_OP\(4),
	combout => \op1|reg_out[3]~21_combout\);

\op1|reg_out[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out[3]~22_combout\ = ( !\instruction_r|t_OP\(0) & ( \instruction_r|t_OP\(4) & ( (!\instruction_r|t_OP\(2) & (\instruction_r|t_OP\(3) & ((!\instruction_r|t_OP\(1)) # (\instruction_r|t_OP\(5))))) ) ) ) # ( !\instruction_r|t_OP\(0) & ( 
-- !\instruction_r|t_OP\(4) & ( (!\instruction_r|t_OP\(3) & (!\instruction_r|t_OP\(2) & (\instruction_r|t_OP\(1) & !\instruction_r|t_OP\(5)))) # (\instruction_r|t_OP\(3) & (!\instruction_r|t_OP\(1) & ((!\instruction_r|t_OP\(2)) # 
-- (!\instruction_r|t_OP\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000100000000000000000000000100000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(2),
	datab => \instruction_r|ALT_INV_t_OP\(3),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	datad => \instruction_r|ALT_INV_t_OP\(5),
	datae => \instruction_r|ALT_INV_t_OP\(0),
	dataf => \instruction_r|ALT_INV_t_OP\(4),
	combout => \op1|reg_out[3]~22_combout\);

\op1|reg_out[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out[3]~23_combout\ = (!\instruction_r|t_Am\(1) & (\op1|reg_out[3]~21_combout\)) # (\instruction_r|t_Am\(1) & ((\op1|reg_out[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out[3]~21_combout\,
	datab => \op1|ALT_INV_reg_out[3]~22_combout\,
	datad => \instruction_r|ALT_INV_t_Am\(1),
	combout => \op1|reg_out[3]~23_combout\);

\op1|reg_out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out[3]~1_combout\ = ((!\instruction_r|t_OP\(3) & \inst1|Equal11~0_combout\)) # (\inst1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(3),
	datab => \inst1|ALT_INV_Equal11~0_combout\,
	datac => \inst1|ALT_INV_Equal2~0_combout\,
	combout => \op1|reg_out[3]~1_combout\);

\op1|reg_out[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \op1|reg_out[3]~17_combout\ = ( !\instruction_r|t_Am\(0) & ( (!\inst1|state.T0~q\) # ((\instruction_r|t_Am\(1) & (\inst1|state.T2~q\ & ((\op1|reg_out[3]~1_combout\) # (\inst1|Equal15~0_combout\))))) ) ) # ( \instruction_r|t_Am\(0) & ( 
-- (!\inst1|state.T0~q\) # ((\inst1|state.T2~q\ & (((\inst1|Equal15~0_combout\ & \instruction_r|t_Am\(1))) # (\op1|reg_out[3]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111111111111111111111100000000000100110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal15~0_combout\,
	datab => \instruction_r|ALT_INV_t_Am\(1),
	datac => \op1|ALT_INV_reg_out[3]~23_combout\,
	datad => \inst1|ALT_INV_state.T2~q\,
	datae => \instruction_r|ALT_INV_t_Am\(0),
	dataf => \inst1|ALT_INV_state.T0~q\,
	datag => \op1|ALT_INV_reg_out[3]~1_combout\,
	combout => \op1|reg_out[3]~17_combout\);

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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(10));

\program_counter|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~17_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[11]~18_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(11))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[11]~18_combout\))))) ) + ( GND ) + ( \program_counter|Add1~22\ ))
-- \program_counter|Add1~18\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[11]~18_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(11))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[11]~18_combout\))))) ) + ( GND ) + ( \program_counter|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(11),
	datad => \program_counter|ALT_INV_tempIncr[11]~18_combout\,
	cin => \program_counter|Add1~22\,
	sumout => \program_counter|Add1~17_sumout\,
	cout => \program_counter|Add1~18\);

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

\program_counter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~17_sumout\ = SUM(( \program_counter|tempAddress\(11) ) + ( GND ) + ( \program_counter|Add0~22\ ))
-- \program_counter|Add0~18\ = CARRY(( \program_counter|tempAddress\(11) ) + ( GND ) + ( \program_counter|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(11),
	cin => \program_counter|Add0~22\,
	sumout => \program_counter|Add0~17_sumout\,
	cout => \program_counter|Add0~18\);

\program_counter|tempIncr[11]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[11]~17_combout\ = ( \program_counter|tempIncr[11]~17_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[11]~17_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~17_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[11]~17_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~17_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[11]~17_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[11]~17_combout\);

\program_counter|tempIncr[11]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[11]~19_combout\ = !\program_counter|Add1~17_sumout\ $ (!\program_counter|tempIncr[11]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~17_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[11]~17_combout\,
	combout => \program_counter|tempIncr[11]~19_combout\);

\program_counter|tempIncr[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[11]~19_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[11]~_emulated_q\);

\program_counter|tempIncr[11]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[11]~18_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~17_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[11]~_emulated_q\ $ ((!\program_counter|tempIncr[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[11]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[11]~17_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~17_sumout\,
	combout => \program_counter|tempIncr[11]~18_combout\);

\inst2|output_signal[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[11]~4_combout\ = (!\inst1|pc_mux_sel~0_combout\ & (\op1|reg_out\(11))) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \op1|ALT_INV_reg_out\(11),
	datac => \program_counter|ALT_INV_tempIncr[11]~18_combout\,
	combout => \inst2|output_signal[11]~4_combout\);

\op2|reg_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~8_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[11]~4_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux36~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(11) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux20~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~8_combout\);

\op2|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~8_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(11));

\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( !\op1|reg_out\(11) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(11) ) + ( \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( !\op1|reg_out\(11) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(11) ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(11),
	dataf => \op2|ALT_INV_reg_out\(11),
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

\inst3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(11))) # (\op2|reg_out\(11)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(11)) # 
-- (\op1|reg_out\(11)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(11) & (\op2|reg_out\(11) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(11) & \op2|reg_out\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(11),
	datad => \op2|ALT_INV_reg_out\(11),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux4~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "2000B781D",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\inst5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(11))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(11) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ & ( (\instruction_r|t_Operand\(11) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(11),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a11~portbdataout\,
	combout => \inst5|Mux4~0_combout\);

\inst5|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux4~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux4~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux4~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~17_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux4~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~17_sumout\,
	datac => \inst3|ALT_INV_Mux4~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(11));

\inst|memory_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "2000B781D",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(3));

\inst1|Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal16~0_combout\ = (\instruction_r|t_OP\(4) & (\instruction_r|t_OP\(3) & !\instruction_r|t_OP\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(3),
	datac => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal16~0_combout\);

\program_counter|tempIncr[0]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[0]~61_combout\ = ( \program_counter|tempIncr[0]~61_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[0]~61_combout\ & ( !\inst1|state.T0~q\ & ( !\program_counter|tempAddress\(0) ) ) ) # ( 
-- !\program_counter|tempIncr[0]~61_combout\ & ( !\inst1|state.T0~q\ & ( !\program_counter|tempAddress\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(0),
	datae => \program_counter|ALT_INV_tempIncr[0]~61_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[0]~61_combout\);

\program_counter|tempIncr[0]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[0]~63_combout\ = !\program_counter|tempIncr[0]~61_combout\ $ (((!\inst1|pc_mux_sel~0_combout\ & (\op1|reg_out\(0))) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[0]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110001010011101011000101001110101100010100111010110001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op1|ALT_INV_reg_out\(0),
	datab => \program_counter|ALT_INV_tempIncr[0]~62_combout\,
	datac => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datad => \program_counter|ALT_INV_tempIncr[0]~61_combout\,
	combout => \program_counter|tempIncr[0]~63_combout\);

\program_counter|tempIncr[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[0]~63_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[0]~_emulated_q\);

\program_counter|tempIncr[0]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[0]~62_combout\ = (!\inst1|state.T0~q\ & (((!\program_counter|tempAddress\(0))))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[0]~_emulated_q\ $ ((!\program_counter|tempIncr[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011000000110111101100000011011110110000001101111011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[0]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[0]~61_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_tempAddress\(0),
	combout => \program_counter|tempIncr[0]~62_combout\);

\inst2|output_signal[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[0]~15_combout\ = ( \op1|reg_out\(0) & ( \program_counter|tempIncr[0]~62_combout\ ) ) # ( !\op1|reg_out\(0) & ( \program_counter|tempIncr[0]~62_combout\ & ( (!\instruction_r|t_Am\(0)) # ((!\inst1|state.T3~q\) # 
-- ((!\inst1|Equal6~0_combout\) # (!\inst1|Equal16~0_combout\))) ) ) ) # ( \op1|reg_out\(0) & ( !\program_counter|tempIncr[0]~62_combout\ & ( (\instruction_r|t_Am\(0) & (\inst1|state.T3~q\ & (\inst1|Equal6~0_combout\ & \inst1|Equal16~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Equal6~0_combout\,
	datad => \inst1|ALT_INV_Equal16~0_combout\,
	datae => \op1|ALT_INV_reg_out\(0),
	dataf => \program_counter|ALT_INV_tempIncr[0]~62_combout\,
	combout => \inst2|output_signal[0]~15_combout\);

\program_counter|tempAddress[0]\ : dffeas
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
	q => \program_counter|tempAddress\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200538101",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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

\inst5|regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[4][2]~q\);

\inst5|regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux13~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(2));

\inst3|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(2))) # (\op2|reg_out\(2)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(2)) # 
-- (\op1|reg_out\(2)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(2) & (\op2|reg_out\(2) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(2) & \op2|reg_out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(2),
	datad => \op2|ALT_INV_reg_out\(2),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux13~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200538101",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\inst5|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux13~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(2))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(2) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ( (\instruction_r|t_Operand\(2) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(2),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	combout => \inst5|Mux13~0_combout\);

\inst5|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux13~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux13~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux13~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux13~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ 
-- & (\inst3|Add0~53_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux13~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~53_sumout\,
	datac => \inst3|ALT_INV_Mux13~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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

\op2|reg_out~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~17_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[2]~13_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux45~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(2) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux29~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~17_combout\);

\op2|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~17_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(2));

\inst|memory_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000045AE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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

\inst5|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux14~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(1));

\inst3|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux14~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(1))) # (\op2|reg_out\(1)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(1)) # 
-- (\op1|reg_out\(1)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(1) & (\op2|reg_out\(1) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(1) & \op2|reg_out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(1),
	datad => \op2|ALT_INV_reg_out\(1),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux14~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000045AE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\inst5|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux14~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(1))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(1) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ & ( (\instruction_r|t_Operand\(1) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(1),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	combout => \inst5|Mux14~0_combout\);

\inst5|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux14~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux14~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux14~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux14~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ 
-- & (\inst3|Add0~57_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux14~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~57_sumout\,
	datac => \inst3|ALT_INV_Mux14~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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

\op2|reg_out~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~18_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[1]~14_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux46~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(1) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux30~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~18_combout\);

\op2|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~18_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(1));

\inst|memory_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200544423",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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

\inst5|regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux15~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(0));

\inst3|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux15~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(0))) # (\op2|reg_out\(0)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(0)) # 
-- (\op1|reg_out\(0)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(0) & (\op2|reg_out\(0) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(0) & \op2|reg_out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(0),
	datad => \op2|ALT_INV_reg_out\(0),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux15~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200544423",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\inst5|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux15~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(0))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(0) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ( (\instruction_r|t_Operand\(0) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \inst5|Mux15~0_combout\);

\inst5|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux15~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux15~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux15~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux15~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ 
-- & (\inst3|Add0~61_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux15~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~61_sumout\,
	datac => \inst3|ALT_INV_Mux15~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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

\op2|reg_out~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~19_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[0]~15_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux47~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(0) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux31~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~19_combout\);

\op2|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~19_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(0));

\inst|memory_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "2000203E8",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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

\inst5|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][3]~q\);

\inst5|regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux12~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~16_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[3]~12_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux44~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(3) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux28~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~16_combout\);

\op2|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~16_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(3));

\inst3|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(3))) # (\op2|reg_out\(3)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(3)) # 
-- (\op1|reg_out\(3)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(3) & (\op2|reg_out\(3) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(3) & \op2|reg_out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(3),
	datad => \op2|ALT_INV_reg_out\(3),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux12~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "2000203E8",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\inst5|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux12~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(3))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(3) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ & ( (\instruction_r|t_Operand\(3) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(3),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	combout => \inst5|Mux12~0_combout\);

\inst5|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux12~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux12~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux12~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux12~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ 
-- & (\inst3|Add0~49_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux12~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~49_sumout\,
	datac => \inst3|ALT_INV_Mux12~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(3));

\program_counter|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~45_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[4]~46_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(4))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[4]~46_combout\))))) ) + ( GND ) + ( \program_counter|Add1~50\ ))
-- \program_counter|Add1~46\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[4]~46_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(4))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[4]~46_combout\))))) ) + ( GND ) + ( \program_counter|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(4),
	datad => \program_counter|ALT_INV_tempIncr[4]~46_combout\,
	cin => \program_counter|Add1~50\,
	sumout => \program_counter|Add1~45_sumout\,
	cout => \program_counter|Add1~46\);

\program_counter|tempIncr[4]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[4]~45_combout\ = ( \program_counter|tempIncr[4]~45_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[4]~45_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~45_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[4]~45_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~45_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[4]~45_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[4]~45_combout\);

\program_counter|tempIncr[4]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[4]~47_combout\ = !\program_counter|Add1~45_sumout\ $ (!\program_counter|tempIncr[4]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~45_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[4]~45_combout\,
	combout => \program_counter|tempIncr[4]~47_combout\);

\program_counter|tempIncr[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[4]~47_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[4]~_emulated_q\);

\program_counter|tempIncr[4]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[4]~46_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~45_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[4]~_emulated_q\ $ ((!\program_counter|tempIncr[4]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[4]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[4]~45_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~45_sumout\,
	combout => \program_counter|tempIncr[4]~46_combout\);

\program_counter|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~41_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[5]~42_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(5))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[5]~42_combout\))))) ) + ( GND ) + ( \program_counter|Add1~46\ ))
-- \program_counter|Add1~42\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[5]~42_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(5))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[5]~42_combout\))))) ) + ( GND ) + ( \program_counter|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(5),
	datad => \program_counter|ALT_INV_tempIncr[5]~42_combout\,
	cin => \program_counter|Add1~46\,
	sumout => \program_counter|Add1~41_sumout\,
	cout => \program_counter|Add1~42\);

\program_counter|tempIncr[5]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[5]~41_combout\ = ( \program_counter|tempIncr[5]~41_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[5]~41_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~41_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[5]~41_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~41_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[5]~41_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[5]~41_combout\);

\program_counter|tempIncr[5]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[5]~43_combout\ = !\program_counter|Add1~41_sumout\ $ (!\program_counter|tempIncr[5]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~41_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[5]~41_combout\,
	combout => \program_counter|tempIncr[5]~43_combout\);

\program_counter|tempIncr[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[5]~43_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[5]~_emulated_q\);

\program_counter|tempIncr[5]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[5]~42_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~41_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[5]~_emulated_q\ $ ((!\program_counter|tempIncr[5]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[5]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[5]~41_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~41_sumout\,
	combout => \program_counter|tempIncr[5]~42_combout\);

\program_counter|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~37_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[6]~38_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(6))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[6]~38_combout\))))) ) + ( GND ) + ( \program_counter|Add1~42\ ))
-- \program_counter|Add1~38\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[6]~38_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(6))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[6]~38_combout\))))) ) + ( GND ) + ( \program_counter|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(6),
	datad => \program_counter|ALT_INV_tempIncr[6]~38_combout\,
	cin => \program_counter|Add1~42\,
	sumout => \program_counter|Add1~37_sumout\,
	cout => \program_counter|Add1~38\);

\program_counter|tempIncr[6]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[6]~37_combout\ = ( \program_counter|tempIncr[6]~37_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[6]~37_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~37_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[6]~37_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~37_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[6]~37_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[6]~37_combout\);

\program_counter|tempIncr[6]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[6]~39_combout\ = !\program_counter|Add1~37_sumout\ $ (!\program_counter|tempIncr[6]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~37_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[6]~37_combout\,
	combout => \program_counter|tempIncr[6]~39_combout\);

\program_counter|tempIncr[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[6]~39_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[6]~_emulated_q\);

\program_counter|tempIncr[6]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[6]~38_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~37_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[6]~_emulated_q\ $ ((!\program_counter|tempIncr[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[6]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[6]~37_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~37_sumout\,
	combout => \program_counter|tempIncr[6]~38_combout\);

\program_counter|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~33_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[7]~34_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(7))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[7]~34_combout\))))) ) + ( GND ) + ( \program_counter|Add1~38\ ))
-- \program_counter|Add1~34\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[7]~34_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(7))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[7]~34_combout\))))) ) + ( GND ) + ( \program_counter|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(7),
	datad => \program_counter|ALT_INV_tempIncr[7]~34_combout\,
	cin => \program_counter|Add1~38\,
	sumout => \program_counter|Add1~33_sumout\,
	cout => \program_counter|Add1~34\);

\program_counter|tempIncr[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[7]~33_combout\ = ( \program_counter|tempIncr[7]~33_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[7]~33_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~33_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[7]~33_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~33_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[7]~33_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[7]~33_combout\);

\program_counter|tempIncr[7]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[7]~35_combout\ = !\program_counter|Add1~33_sumout\ $ (!\program_counter|tempIncr[7]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~33_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[7]~33_combout\,
	combout => \program_counter|tempIncr[7]~35_combout\);

\program_counter|tempIncr[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[7]~35_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[7]~_emulated_q\);

\program_counter|tempIncr[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[7]~34_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~33_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[7]~_emulated_q\ $ ((!\program_counter|tempIncr[7]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[7]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[7]~33_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~33_sumout\,
	combout => \program_counter|tempIncr[7]~34_combout\);

\program_counter|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~29_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[8]~30_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(8))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[8]~30_combout\))))) ) + ( GND ) + ( \program_counter|Add1~34\ ))
-- \program_counter|Add1~30\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[8]~30_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(8))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[8]~30_combout\))))) ) + ( GND ) + ( \program_counter|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(8),
	datad => \program_counter|ALT_INV_tempIncr[8]~30_combout\,
	cin => \program_counter|Add1~34\,
	sumout => \program_counter|Add1~29_sumout\,
	cout => \program_counter|Add1~30\);

\program_counter|tempIncr[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[8]~29_combout\ = ( \program_counter|tempIncr[8]~29_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[8]~29_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~29_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[8]~29_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~29_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[8]~29_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[8]~29_combout\);

\program_counter|tempIncr[8]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[8]~31_combout\ = !\program_counter|Add1~29_sumout\ $ (!\program_counter|tempIncr[8]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~29_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[8]~29_combout\,
	combout => \program_counter|tempIncr[8]~31_combout\);

\program_counter|tempIncr[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[8]~31_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[8]~_emulated_q\);

\program_counter|tempIncr[8]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[8]~30_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~29_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[8]~_emulated_q\ $ ((!\program_counter|tempIncr[8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[8]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[8]~29_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~29_sumout\,
	combout => \program_counter|tempIncr[8]~30_combout\);

\program_counter|tempIncr[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[9]~25_combout\ = ( \program_counter|tempIncr[9]~25_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[9]~25_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~25_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[9]~25_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~25_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[9]~25_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[9]~25_combout\);

\program_counter|tempIncr[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[9]~27_combout\ = !\program_counter|Add1~25_sumout\ $ (!\program_counter|tempIncr[9]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~25_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[9]~25_combout\,
	combout => \program_counter|tempIncr[9]~27_combout\);

\program_counter|tempIncr[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[9]~27_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[9]~_emulated_q\);

\program_counter|tempIncr[9]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[9]~26_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~25_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[9]~_emulated_q\ $ ((!\program_counter|tempIncr[9]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[9]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[9]~25_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~25_sumout\,
	combout => \program_counter|tempIncr[9]~26_combout\);

\inst2|output_signal[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[9]~6_combout\ = (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[9]~26_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(9))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[9]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(9),
	datad => \program_counter|ALT_INV_tempIncr[9]~26_combout\,
	combout => \inst2|output_signal[9]~6_combout\);

\op2|reg_out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~10_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[9]~6_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux38~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(9) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux22~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~10_combout\);

\op2|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~10_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(9));

\inst3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(9))) # (\op2|reg_out\(9)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(9)) # 
-- (\op1|reg_out\(9)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(9) & (\op2|reg_out\(9) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(9) & \op2|reg_out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(9),
	datad => \op2|ALT_INV_reg_out\(9),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux6~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20003DC00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\inst5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(9))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(9) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ & ( (\instruction_r|t_Operand\(9) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(9),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a9~portbdataout\,
	combout => \inst5|Mux6~0_combout\);

\inst5|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux6~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux6~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux6~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~25_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux6~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~25_sumout\,
	datac => \inst3|ALT_INV_Mux6~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(9));

\inst|memory_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20003DC00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(1));

\inst1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal6~0_combout\ = (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(0),
	datab => \instruction_r|ALT_INV_t_OP\(5),
	datac => \instruction_r|ALT_INV_t_OP\(1),
	combout => \inst1|Equal6~0_combout\);

\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (!\instruction_r|t_Am\(0)) # ((!\inst1|Equal6~0_combout\) # (!\inst1|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_Equal6~0_combout\,
	datac => \inst1|ALT_INV_Equal16~0_combout\,
	combout => \inst1|Mux12~0_combout\);

\inst1|pc_mux_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|pc_mux_sel~0_combout\ = (!\inst1|state.T3~q\) # (\inst1|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	combout => \inst1|pc_mux_sel~0_combout\);

\program_counter|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~13_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[12]~14_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(12))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[12]~14_combout\))))) ) + ( GND ) + ( \program_counter|Add1~18\ ))
-- \program_counter|Add1~14\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[12]~14_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(12))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[12]~14_combout\))))) ) + ( GND ) + ( \program_counter|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(12),
	datad => \program_counter|ALT_INV_tempIncr[12]~14_combout\,
	cin => \program_counter|Add1~18\,
	sumout => \program_counter|Add1~13_sumout\,
	cout => \program_counter|Add1~14\);

\inst2|output_signal[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[12]~3_combout\ = (!\inst1|pc_mux_sel~0_combout\ & (\op1|reg_out\(12))) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[12]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \op1|ALT_INV_reg_out\(12),
	datac => \program_counter|ALT_INV_tempIncr[12]~14_combout\,
	combout => \inst2|output_signal[12]~3_combout\);

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

\program_counter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~13_sumout\ = SUM(( \program_counter|tempAddress\(12) ) + ( GND ) + ( \program_counter|Add0~18\ ))
-- \program_counter|Add0~14\ = CARRY(( \program_counter|tempAddress\(12) ) + ( GND ) + ( \program_counter|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(12),
	cin => \program_counter|Add0~18\,
	sumout => \program_counter|Add0~13_sumout\,
	cout => \program_counter|Add0~14\);

\program_counter|tempIncr[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[12]~13_combout\ = ( \program_counter|tempIncr[12]~13_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[12]~13_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~13_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[12]~13_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~13_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[12]~13_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[12]~13_combout\);

\program_counter|tempIncr[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[12]~15_combout\ = !\program_counter|Add1~13_sumout\ $ (!\program_counter|tempIncr[12]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~13_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[12]~13_combout\,
	combout => \program_counter|tempIncr[12]~15_combout\);

\program_counter|tempIncr[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[12]~15_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[12]~_emulated_q\);

\program_counter|tempIncr[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[12]~14_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~13_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[12]~_emulated_q\ $ ((!\program_counter|tempIncr[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[12]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[12]~13_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~13_sumout\,
	combout => \program_counter|tempIncr[12]~14_combout\);

\program_counter|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~9_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[13]~10_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(13))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[13]~10_combout\))))) ) + ( GND ) + ( \program_counter|Add1~14\ ))
-- \program_counter|Add1~10\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[13]~10_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(13))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[13]~10_combout\))))) ) + ( GND ) + ( \program_counter|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(13),
	datad => \program_counter|ALT_INV_tempIncr[13]~10_combout\,
	cin => \program_counter|Add1~14\,
	sumout => \program_counter|Add1~9_sumout\,
	cout => \program_counter|Add1~10\);

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

\program_counter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~9_sumout\ = SUM(( \program_counter|tempAddress\(13) ) + ( GND ) + ( \program_counter|Add0~14\ ))
-- \program_counter|Add0~10\ = CARRY(( \program_counter|tempAddress\(13) ) + ( GND ) + ( \program_counter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(13),
	cin => \program_counter|Add0~14\,
	sumout => \program_counter|Add0~9_sumout\,
	cout => \program_counter|Add0~10\);

\program_counter|tempIncr[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[13]~9_combout\ = ( \program_counter|tempIncr[13]~9_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[13]~9_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~9_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[13]~9_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~9_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[13]~9_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[13]~9_combout\);

\program_counter|tempIncr[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[13]~11_combout\ = !\program_counter|Add1~9_sumout\ $ (!\program_counter|tempIncr[13]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~9_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[13]~9_combout\,
	combout => \program_counter|tempIncr[13]~11_combout\);

\program_counter|tempIncr[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[13]~11_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[13]~_emulated_q\);

\program_counter|tempIncr[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[13]~10_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~9_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[13]~_emulated_q\ $ ((!\program_counter|tempIncr[13]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[13]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[13]~9_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~9_sumout\,
	combout => \program_counter|tempIncr[13]~10_combout\);

\inst2|output_signal[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[13]~2_combout\ = (!\inst1|pc_mux_sel~0_combout\ & (\op1|reg_out\(13))) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[13]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \op1|ALT_INV_reg_out\(13),
	datac => \program_counter|ALT_INV_tempIncr[13]~10_combout\,
	combout => \inst2|output_signal[13]~2_combout\);

\op2|reg_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~6_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[13]~2_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux34~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(13) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux18~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~6_combout\);

\op2|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~6_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(13));

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

\inst5|regs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux3~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~7_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[12]~3_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux35~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(12) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux19~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~7_combout\);

\op2|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~7_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(12));

\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( !\op1|reg_out\(12) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(12) ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( !\op1|reg_out\(12) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(12) ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(12),
	dataf => \op2|ALT_INV_reg_out\(12),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( !\op1|reg_out\(13) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(13) ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( !\op1|reg_out\(13) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(13) ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(13),
	dataf => \op2|ALT_INV_reg_out\(13),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

\inst3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(13))) # (\op2|reg_out\(13)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(13)) # 
-- (\op1|reg_out\(13)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(13) & (\op2|reg_out\(13) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(13) & \op2|reg_out\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(13),
	datad => \op2|ALT_INV_reg_out\(13),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux2~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20001FC05",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\inst5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(13))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(13) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ & ( (\instruction_r|t_Operand\(13) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(13),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a13~portbdataout\,
	combout => \inst5|Mux2~0_combout\);

\inst5|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux2~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux2~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux2~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~9_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux2~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~9_sumout\,
	datac => \inst3|ALT_INV_Mux2~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(13));

\inst|memory_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20001FC05",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(5));

\inst1|load_register~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|load_register~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) ) # ( \instruction_r|t_OP\(3) & ( 
-- !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(1) & (!\instruction_r|t_OP\(4) $ (\instruction_r|t_OP\(5))))) ) ) ) # ( !\instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & 
-- (!\instruction_r|t_OP\(5) & (!\instruction_r|t_OP\(0) $ (\instruction_r|t_OP\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000100001000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|load_register~0_combout\);

\inst1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\instruction_r|t_Am\(1) & (((!\instruction_r|t_OP\(3) & \inst1|Equal11~0_combout\)) # (\instruction_r|t_Am\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001000100010101000100010001010100010001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(3),
	datad => \inst1|ALT_INV_Equal11~0_combout\,
	combout => \inst1|Mux7~0_combout\);

\inst1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = ( \inst1|load_register~0_combout\ & ( \inst1|Mux7~0_combout\ & ( (\inst1|Mux7~1_combout\) # (\inst1|state.T3~q\) ) ) ) # ( !\inst1|load_register~0_combout\ & ( \inst1|Mux7~0_combout\ & ( (\inst1|Mux7~1_combout\) # 
-- (\inst1|state.T3~q\) ) ) ) # ( \inst1|load_register~0_combout\ & ( !\inst1|Mux7~0_combout\ & ( ((\instruction_r|t_Am\(0) & \inst1|state.T3~q\)) # (\inst1|Mux7~1_combout\) ) ) ) # ( !\inst1|load_register~0_combout\ & ( !\inst1|Mux7~0_combout\ & ( 
-- (\inst1|Mux7~1_combout\ & ((!\instruction_r|t_Am\(0)) # ((!\inst1|state.T3~q\) # (!\inst1|Equal8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000111110001111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux7~1_combout\,
	datad => \inst1|ALT_INV_Equal8~0_combout\,
	datae => \inst1|ALT_INV_load_register~0_combout\,
	dataf => \inst1|ALT_INV_Mux7~0_combout\,
	combout => \inst1|Mux7~1_combout\);

\inst5|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~12_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[1][4]~q\);

\inst5|regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[5][4]~q\);

\inst5|regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[9][4]~q\);

\inst5|regs[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[2][4]~q\);

\inst5|regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[6][4]~q\);

\inst5|regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[10][4]~q\);

\inst5|regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\inst5|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[3][4]~q\);

\inst5|regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[7][4]~q\);

\inst5|regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|regs[11][4]~q\);

\inst5|regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux11~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~15_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[4]~11_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux43~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(4) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux27~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~15_combout\);

\op2|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~15_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(4));

\inst3|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(4))) # (\op2|reg_out\(4)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(4)) # 
-- (\op1|reg_out\(4)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(4) & (\op2|reg_out\(4) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(4) & \op2|reg_out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(4),
	datad => \op2|ALT_INV_reg_out\(4),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux11~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000504445",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\inst5|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(4))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(4) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ( (\instruction_r|t_Operand\(4) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(4),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \inst5|Mux11~0_combout\);

\inst5|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux11~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux11~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux11~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux11~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ 
-- & (\inst3|Add0~45_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux11~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~45_sumout\,
	datac => \inst3|ALT_INV_Mux11~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(4));

\inst|memory_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000504445",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\instruction_r|t_Rz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(0));

\inst5|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~3_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~3_combout\);

\inst5|regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux10~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~14_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[5]~10_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux42~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(5) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux26~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~14_combout\);

\op2|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~14_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(5));

\inst3|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(5))) # (\op2|reg_out\(5)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(5)) # 
-- (\op1|reg_out\(5)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(5) & (\op2|reg_out\(5) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(5) & \op2|reg_out\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(5),
	datad => \op2|ALT_INV_reg_out\(5),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux10~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000004508",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\inst5|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(5))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(5) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ & ( (\instruction_r|t_Operand\(5) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(5),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	combout => \inst5|Mux10~0_combout\);

\inst5|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux10~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux10~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux10~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux10~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ 
-- & (\inst3|Add0~41_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux10~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~41_sumout\,
	datac => \inst3|ALT_INV_Mux10~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(5));

\inst|memory_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000004508",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(1));

\inst5|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~8_combout\ = ( \inst1|Mux7~1_combout\ & ( (\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~8_combout\);

\inst5|regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~13_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[6]~9_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux41~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(6) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux25~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~13_combout\);

\op2|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~13_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(6));

\inst3|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(6))) # (\op2|reg_out\(6)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(6)) # 
-- (\op1|reg_out\(6)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(6) & (\op2|reg_out\(6) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(6) & \op2|reg_out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(6),
	datad => \op2|ALT_INV_reg_out\(6),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux9~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200038105",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\inst5|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(6))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(6) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ( (\instruction_r|t_Operand\(6) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(6),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	combout => \inst5|Mux9~0_combout\);

\inst5|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux9~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux9~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux9~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux9~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~37_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux9~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~37_sumout\,
	datac => \inst3|ALT_INV_Mux9~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
	dataf => \inst5|ALT_INV_Mux9~0_combout\,
	combout => \inst5|Mux9~1_combout\);

\inst5|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux9~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(6));

\inst|memory_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200038105",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(2));

\inst5|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~2_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (!\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & \instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~2_combout\);

\inst5|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~12_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[7]~8_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux40~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(7) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux24~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~12_combout\);

\op2|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~12_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(7));

\inst3|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(7))) # (\op2|reg_out\(7)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(7)) # 
-- (\op1|reg_out\(7)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(7) & (\op2|reg_out\(7) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(7) & \op2|reg_out\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(7),
	datad => \op2|ALT_INV_reg_out\(7),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux8~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\inst5|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~4_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(7))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(7) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ & ( (\instruction_r|t_Operand\(7) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(7),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	combout => \inst5|Mux8~4_combout\);

\inst5|Mux8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux8~5_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux8~4_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux8~4_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux8~4_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~33_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux8~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Mux8~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
	dataf => \inst5|ALT_INV_Mux8~4_combout\,
	combout => \inst5|Mux8~5_combout\);

\inst5|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux8~5_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(7));

\inst|memory_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "200020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(3));

\inst5|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~5_combout\ = ( \inst1|Mux7~1_combout\ & ( (!\instruction_r|t_Rz\(3) & (\instruction_r|t_Rz\(2) & (!\instruction_r|t_Rz\(1) & !\instruction_r|t_Rz\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Rz\(3),
	datab => \instruction_r|ALT_INV_t_Rz\(2),
	datac => \instruction_r|ALT_INV_t_Rz\(1),
	datad => \instruction_r|ALT_INV_t_Rz\(0),
	datae => \inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst5|Decoder0~5_combout\);

\inst5|regs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux7~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\op2|reg_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~11_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[8]~7_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux39~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(8) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux23~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~11_combout\);

\op2|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~11_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(8));

\inst3|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~3_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(8))) # (\op2|reg_out\(8)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(8)) # 
-- (\op1|reg_out\(8)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(8) & (\op2|reg_out\(8) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(8) & \op2|reg_out\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(8),
	datad => \op2|ALT_INV_reg_out\(8),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux7~3_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20008C800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\inst5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(8))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(8) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ( (\instruction_r|t_Operand\(8) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(8),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a8~portbdataout\,
	combout => \inst5|Mux7~0_combout\);

\inst5|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux7~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux7~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux7~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux7~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~29_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux7~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~29_sumout\,
	datac => \inst3|ALT_INV_Mux7~3_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(8));

\inst|memory_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20008C800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(0));

\inst1|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal12~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal12~0_combout\);

\inst1|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux15~1_combout\ = ((!\instruction_r|t_Am\(1) & \inst1|Mux15~0_combout\)) # (\inst1|Equal12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_Equal12~0_combout\,
	datac => \inst1|ALT_INV_Mux15~0_combout\,
	combout => \inst1|Mux15~1_combout\);

\inst3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(12))) # (\op2|reg_out\(12)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(12)) # 
-- (\op1|reg_out\(12)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(12) & (\op2|reg_out\(12) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(12) & \op2|reg_out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(12),
	datad => \op2|ALT_INV_reg_out\(12),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux3~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000BFC05",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\inst5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(12))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(12) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ & ( (\instruction_r|t_Operand\(12) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(12),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a12~portbdataout\,
	combout => \inst5|Mux3~0_combout\);

\inst5|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux3~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux3~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux3~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux3~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~13_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux3~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~13_sumout\,
	datac => \inst3|ALT_INV_Mux3~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(12));

\inst|memory_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000BFC05",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(4));

\inst1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal8~0_combout\ = ( \instruction_r|t_OP\(3) & ( \instruction_r|t_OP\(2) & ( (\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Equal8~0_combout\);

\inst1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = (!\instruction_r|t_Am\(1) & \inst1|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \inst1|ALT_INV_Equal8~0_combout\,
	combout => \inst1|Mux14~0_combout\);

\inst1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~1_combout\ = ( \instruction_r|t_OP\(3) & ( (!\instruction_r|t_OP\(4) & (!\instruction_r|t_OP\(0) & (!\instruction_r|t_OP\(5) & !\instruction_r|t_OP\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(4),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(1),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	combout => \inst1|Mux14~1_combout\);

\inst3|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst3|Mux7~0_combout\ & ((\inst1|Mux14~1_combout\) # (\inst1|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux14~0_combout\,
	datab => \inst1|ALT_INV_Mux14~1_combout\,
	datac => \inst3|ALT_INV_Mux7~0_combout\,
	combout => \inst3|Mux7~1_combout\);

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

\inst5|regs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux1~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\program_counter|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~5_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[14]~6_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(14))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[14]~6_combout\))))) ) + ( GND ) + ( \program_counter|Add1~10\ ))
-- \program_counter|Add1~6\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[14]~6_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(14))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[14]~6_combout\))))) ) + ( GND ) + ( \program_counter|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(14),
	datad => \program_counter|ALT_INV_tempIncr[14]~6_combout\,
	cin => \program_counter|Add1~10\,
	sumout => \program_counter|Add1~5_sumout\,
	cout => \program_counter|Add1~6\);

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

\program_counter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~5_sumout\ = SUM(( \program_counter|tempAddress\(14) ) + ( GND ) + ( \program_counter|Add0~10\ ))
-- \program_counter|Add0~6\ = CARRY(( \program_counter|tempAddress\(14) ) + ( GND ) + ( \program_counter|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(14),
	cin => \program_counter|Add0~10\,
	sumout => \program_counter|Add0~5_sumout\,
	cout => \program_counter|Add0~6\);

\program_counter|tempIncr[14]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[14]~5_combout\ = ( \program_counter|tempIncr[14]~5_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[14]~5_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~5_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[14]~5_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~5_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[14]~5_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[14]~5_combout\);

\program_counter|tempIncr[14]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[14]~7_combout\ = !\program_counter|Add1~5_sumout\ $ (!\program_counter|tempIncr[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~5_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[14]~5_combout\,
	combout => \program_counter|tempIncr[14]~7_combout\);

\program_counter|tempIncr[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[14]~7_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[14]~_emulated_q\);

\program_counter|tempIncr[14]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[14]~6_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~5_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[14]~_emulated_q\ $ ((!\program_counter|tempIncr[14]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[14]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[14]~5_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~5_sumout\,
	combout => \program_counter|tempIncr[14]~6_combout\);

\inst2|output_signal[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[14]~1_combout\ = (!\inst1|pc_mux_sel~0_combout\ & (\op1|reg_out\(14))) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[14]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \op1|ALT_INV_reg_out\(14),
	datac => \program_counter|ALT_INV_tempIncr[14]~6_combout\,
	combout => \inst2|output_signal[14]~1_combout\);

\op2|reg_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~5_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[14]~1_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux33~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(14) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux17~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
	combout => \op2|reg_out~5_combout\);

\op2|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \op2|reg_out~5_combout\,
	sclr => \inst1|ALT_INV_state.T0~q\,
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(14));

\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( !\op1|reg_out\(14) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(14) ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( !\op1|reg_out\(14) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(14) ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(14),
	dataf => \op2|ALT_INV_reg_out\(14),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

\inst3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(14))) # (\op2|reg_out\(14)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(14)) # 
-- (\op1|reg_out\(14)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(14) & (\op2|reg_out\(14) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(14) & \op2|reg_out\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(14),
	datad => \op2|ALT_INV_reg_out\(14),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux1~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00003C5DD",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\inst5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(14))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(14) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ & ( (\instruction_r|t_Operand\(14) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(14),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a14~portbdataout\,
	combout => \inst5|Mux1~0_combout\);

\inst5|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux1~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux1~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux1~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~5_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~5_sumout\,
	datac => \inst3|ALT_INV_Mux1~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
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
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(14));

\inst|memory_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00003C5DD",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Am\(0));

\inst1|data_mem_wren~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|data_mem_wren~0_combout\ = ( \inst1|Equal2~0_combout\ & ( (\inst1|state.T3~q\ & ((!\instruction_r|t_Am\(0) & (\instruction_r|t_Am\(1))) # (\instruction_r|t_Am\(0) & ((\inst1|Equal15~0_combout\))))) ) ) # ( !\inst1|Equal2~0_combout\ & ( 
-- (\inst1|state.T3~q\ & (\inst1|Equal15~0_combout\ & ((\instruction_r|t_Am\(0)) # (\instruction_r|t_Am\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000001000000011100000000000001110000010000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T3~q\,
	datad => \inst1|ALT_INV_Equal15~0_combout\,
	datae => \inst1|ALT_INV_Equal2~0_combout\,
	combout => \inst1|data_mem_wren~0_combout\);

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

\inst5|regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~2_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~3_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~4_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~5_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
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

\program_counter|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~1_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[15]~2_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux12~0_combout\ & (\op1|reg_out\(15))) # (\inst1|Mux12~0_combout\ & 
-- ((\program_counter|tempIncr[15]~2_combout\))))) ) + ( GND ) + ( \program_counter|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux12~0_combout\,
	datac => \op1|ALT_INV_reg_out\(15),
	datad => \program_counter|ALT_INV_tempIncr[15]~2_combout\,
	cin => \program_counter|Add1~6\,
	sumout => \program_counter|Add1~1_sumout\);

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

\program_counter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~1_sumout\ = SUM(( \program_counter|tempAddress\(15) ) + ( GND ) + ( \program_counter|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_tempAddress\(15),
	cin => \program_counter|Add0~6\,
	sumout => \program_counter|Add0~1_sumout\);

\program_counter|tempIncr[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[15]~1_combout\ = ( \program_counter|tempIncr[15]~1_combout\ & ( \inst1|state.T0~q\ ) ) # ( \program_counter|tempIncr[15]~1_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~1_sumout\ ) ) ) # ( 
-- !\program_counter|tempIncr[15]~1_combout\ & ( !\inst1|state.T0~q\ & ( \program_counter|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_Add0~1_sumout\,
	datae => \program_counter|ALT_INV_tempIncr[15]~1_combout\,
	dataf => \inst1|ALT_INV_state.T0~q\,
	combout => \program_counter|tempIncr[15]~1_combout\);

\program_counter|tempIncr[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[15]~3_combout\ = !\program_counter|Add1~1_sumout\ $ (!\program_counter|tempIncr[15]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_Add1~1_sumout\,
	datab => \program_counter|ALT_INV_tempIncr[15]~1_combout\,
	combout => \program_counter|tempIncr[15]~3_combout\);

\program_counter|tempIncr[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempIncr[15]~3_combout\,
	clrn => \inst1|state.T0~q\,
	ena => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempIncr[15]~_emulated_q\);

\program_counter|tempIncr[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempIncr[15]~2_combout\ = (!\inst1|state.T0~q\ & (((\program_counter|Add0~1_sumout\)))) # (\inst1|state.T0~q\ & (!\program_counter|tempIncr[15]~_emulated_q\ $ ((!\program_counter|tempIncr[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempIncr[15]~_emulated_q\,
	datab => \program_counter|ALT_INV_tempIncr[15]~1_combout\,
	datac => \inst1|ALT_INV_state.T0~q\,
	datad => \program_counter|ALT_INV_Add0~1_sumout\,
	combout => \program_counter|tempIncr[15]~2_combout\);

\inst2|output_signal[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[15]~0_combout\ = (!\inst1|pc_mux_sel~0_combout\ & (\op1|reg_out\(15))) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \op1|ALT_INV_reg_out\(15),
	datac => \program_counter|ALT_INV_tempIncr[15]~2_combout\,
	combout => \inst2|output_signal[15]~0_combout\);

\op2|reg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \op2|reg_out~0_combout\ = ( \inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst2|output_signal[15]~0_combout\ ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( \inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux32~4_combout\ ) ) ) # 
-- ( \inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \instruction_r|t_Operand\(15) ) ) ) # ( !\inst1|alu_op2_sel[0]~6_combout\ & ( !\inst1|alu_op2_sel[1]~2_combout\ & ( \inst5|Mux16~4_combout\ ) ) )

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
	datae => \inst1|ALT_INV_alu_op2_sel[0]~6_combout\,
	dataf => \inst1|ALT_INV_alu_op2_sel[1]~2_combout\,
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
	ena => \op2|reg_out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op2|reg_out\(15));

\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( !\op1|reg_out\(15) $ (((!\inst1|state.T3~q\) # ((!\instruction_r|t_Am\(0)) # (!\inst1|Mux15~1_combout\)))) ) + ( \op2|reg_out\(15) ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_Mux15~1_combout\,
	datad => \op1|ALT_INV_reg_out\(15),
	dataf => \op2|ALT_INV_reg_out\(15),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

\inst3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = ( \inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( ((!\instruction_r|t_Am\(0) & \op1|reg_out\(15))) # (\op2|reg_out\(15)) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( \inst3|Mux7~2_combout\ & ( (\op2|reg_out\(15)) # 
-- (\op1|reg_out\(15)) ) ) ) # ( \inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( (\op1|reg_out\(15) & (\op2|reg_out\(15) & ((!\instruction_r|t_Am\(0)) # (!\inst1|state.T3~q\)))) ) ) ) # ( !\inst1|Mux14~0_combout\ & ( !\inst3|Mux7~2_combout\ & ( 
-- (\op1|reg_out\(15) & \op2|reg_out\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111000001111111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(0),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \op1|ALT_INV_reg_out\(15),
	datad => \op2|ALT_INV_reg_out\(15),
	datae => \inst1|ALT_INV_Mux14~0_combout\,
	dataf => \inst3|ALT_INV_Mux7~2_combout\,
	combout => \inst3|Mux0~0_combout\);

\inst|memory_rtl_1|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20029C40C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_1|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\inst5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = ( !\inst5|Mux8~1_combout\ & ( \inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & ( (!\inst1|state.T3~q\ & (\instruction_r|t_Operand\(15))) # (\inst1|state.T3~q\ & (((\instruction_r|t_Operand\(15) & 
-- !\inst1|Mux9~0_combout\)) # (\inst1|Mux8~0_combout\))) ) ) ) # ( !\inst5|Mux8~1_combout\ & ( !\inst|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ & ( (\instruction_r|t_Operand\(15) & ((!\inst1|state.T3~q\) # ((!\inst1|Mux8~0_combout\ & 
-- !\inst1|Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000000000000000001010111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Operand\(15),
	datab => \inst1|ALT_INV_state.T3~q\,
	datac => \inst1|ALT_INV_Mux8~0_combout\,
	datad => \inst1|ALT_INV_Mux9~0_combout\,
	datae => \inst5|ALT_INV_Mux8~1_combout\,
	dataf => \inst|memory_rtl_1|auto_generated|ALT_INV_ram_block1a15~portbdataout\,
	combout => \inst5|Mux0~0_combout\);

\inst5|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = ( \inst5|Mux8~3_combout\ & ( \inst5|Mux0~0_combout\ ) ) # ( !\inst5|Mux8~3_combout\ & ( \inst5|Mux0~0_combout\ ) ) # ( \inst5|Mux8~3_combout\ & ( !\inst5|Mux0~0_combout\ & ( (!\inst5|Mux8~2_combout\ & ((!\inst3|Mux7~1_combout\ & 
-- (\inst3|Add0~1_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~1_sumout\,
	datab => \inst3|ALT_INV_Mux7~1_combout\,
	datac => \inst3|ALT_INV_Mux0~0_combout\,
	datad => \inst5|ALT_INV_Mux8~2_combout\,
	datae => \inst5|ALT_INV_Mux8~3_combout\,
	dataf => \inst5|ALT_INV_Mux0~0_combout\,
	combout => \inst5|Mux0~1_combout\);

\inst5|regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst5|Mux0~1_combout\,
	clrn => \inst1|currentSignal[1]~0_combout\,
	ena => \inst5|Decoder0~1_combout\,
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
	ena => \op1|reg_out[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \op1|reg_out\(15));

\inst|memory_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "20029C40C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RECOP.ram0_memory_model_59274251.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory_model:inst|altsyncram:memory_rtl_0|altsyncram_2tr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 33,
	port_a_logical_ram_depth => 34,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 33,
	port_b_logical_ram_depth => 34,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|data_mem_wren~0_combout\,
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
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Am\(1));

\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ((\inst1|state.T1A~q\ & (!\instruction_r|t_Am\(1) $ (!\instruction_r|t_Am\(0))))) # (\inst1|state.T1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \inst1|ALT_INV_state.T1A~q\,
	datad => \inst1|ALT_INV_state.T1~q\,
	combout => \inst1|Selector0~0_combout\);

\inst3|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~1_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~1_sumout\,
	datab => \inst3|ALT_INV_Mux7~1_combout\,
	datac => \inst3|ALT_INV_Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

\inst3|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~5_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~5_sumout\,
	datac => \inst3|ALT_INV_Mux1~0_combout\,
	combout => \inst3|Mux1~1_combout\);

\inst3|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~9_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~9_sumout\,
	datac => \inst3|ALT_INV_Mux2~0_combout\,
	combout => \inst3|Mux2~1_combout\);

\inst3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~13_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~13_sumout\,
	datac => \inst3|ALT_INV_Mux3~0_combout\,
	combout => \inst3|Mux3~1_combout\);

\inst3|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~17_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~17_sumout\,
	datac => \inst3|ALT_INV_Mux4~0_combout\,
	combout => \inst3|Mux4~1_combout\);

\inst3|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~21_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~21_sumout\,
	datac => \inst3|ALT_INV_Mux5~0_combout\,
	combout => \inst3|Mux5~1_combout\);

\inst3|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~25_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~25_sumout\,
	datac => \inst3|ALT_INV_Mux6~0_combout\,
	combout => \inst3|Mux6~1_combout\);

\inst3|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~4_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~29_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~29_sumout\,
	datac => \inst3|ALT_INV_Mux7~3_combout\,
	combout => \inst3|Mux7~4_combout\);

\inst3|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux8~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~33_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Mux8~0_combout\,
	combout => \inst3|Mux8~1_combout\);

\inst3|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux9~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~37_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~37_sumout\,
	datac => \inst3|ALT_INV_Mux9~0_combout\,
	combout => \inst3|Mux9~1_combout\);

\inst3|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux10~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~41_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~41_sumout\,
	datac => \inst3|ALT_INV_Mux10~0_combout\,
	combout => \inst3|Mux10~1_combout\);

\inst3|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux11~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~45_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~45_sumout\,
	datac => \inst3|ALT_INV_Mux11~0_combout\,
	combout => \inst3|Mux11~1_combout\);

\inst3|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux12~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~49_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~49_sumout\,
	datac => \inst3|ALT_INV_Mux12~0_combout\,
	combout => \inst3|Mux12~1_combout\);

\inst3|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux13~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~53_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~53_sumout\,
	datac => \inst3|ALT_INV_Mux13~0_combout\,
	combout => \inst3|Mux13~1_combout\);

\inst3|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux14~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~57_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~57_sumout\,
	datac => \inst3|ALT_INV_Mux14~0_combout\,
	combout => \inst3|Mux14~1_combout\);

\inst3|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux15~1_combout\ = (!\inst3|Mux7~1_combout\ & (\inst3|Add0~61_sumout\)) # (\inst3|Mux7~1_combout\ & ((\inst3|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~1_combout\,
	datab => \inst3|ALT_INV_Add0~61_sumout\,
	datac => \inst3|ALT_INV_Mux15~0_combout\,
	combout => \inst3|Mux15~1_combout\);

\inst1|currentSignal[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentSignal[2]~1_combout\ = ((!\inst1|currentSignal[1]~0_combout\) # (\inst1|state.T2~q\)) # (\inst1|state.T1A~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T1A~q\,
	datab => \inst1|ALT_INV_state.T2~q\,
	datac => \inst1|ALT_INV_currentSignal[1]~0_combout\,
	combout => \inst1|currentSignal[2]~1_combout\);

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

ww_write_pc <= \write_pc~output_o\;

ww_AM(1) <= \AM[1]~output_o\;

ww_AM(0) <= \AM[0]~output_o\;

ww_ir_wr <= \ir_wr~output_o\;

ww_ir_reset <= \ir_reset~output_o\;

ww_ir_operand_set <= \ir_operand_set~output_o\;

ww_reset_pc <= \reset_pc~output_o\;

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
END structure;


