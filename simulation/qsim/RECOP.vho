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

-- DATE "05/13/2024 16:23:39"

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
	instAddr : OUT std_logic_vector(15 DOWNTO 0);
	reset_pc : OUT std_logic;
	pc_mux_sel : OUT std_logic;
	op1reg : IN std_logic_vector(15 DOWNTO 0);
	OPCode : OUT std_logic_vector(5 DOWNTO 0);
	currentState : OUT std_logic_vector(2 DOWNTO 0);
	incrAddr : OUT std_logic_vector(15 DOWNTO 0);
	instruction : OUT std_logic_vector(15 DOWNTO 0);
	Operand : OUT std_logic_vector(15 DOWNTO 0);
	Rx : OUT std_logic_vector(3 DOWNTO 0);
	Rz : OUT std_logic_vector(3 DOWNTO 0)
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
SIGNAL ww_instAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reset_pc : std_logic;
SIGNAL ww_pc_mux_sel : std_logic;
SIGNAL ww_op1reg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OPCode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_currentState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_incrAddr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Operand : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rx : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Rz : std_logic_vector(3 DOWNTO 0);
SIGNAL \write_pc~output_o\ : std_logic;
SIGNAL \AM[1]~output_o\ : std_logic;
SIGNAL \AM[0]~output_o\ : std_logic;
SIGNAL \ir_wr~output_o\ : std_logic;
SIGNAL \ir_reset~output_o\ : std_logic;
SIGNAL \ir_operand_set~output_o\ : std_logic;
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
SIGNAL \reset_pc~output_o\ : std_logic;
SIGNAL \pc_mux_sel~output_o\ : std_logic;
SIGNAL \OPCode[5]~output_o\ : std_logic;
SIGNAL \OPCode[4]~output_o\ : std_logic;
SIGNAL \OPCode[3]~output_o\ : std_logic;
SIGNAL \OPCode[2]~output_o\ : std_logic;
SIGNAL \OPCode[1]~output_o\ : std_logic;
SIGNAL \OPCode[0]~output_o\ : std_logic;
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
SIGNAL \Rx[3]~output_o\ : std_logic;
SIGNAL \Rx[2]~output_o\ : std_logic;
SIGNAL \Rx[1]~output_o\ : std_logic;
SIGNAL \Rx[0]~output_o\ : std_logic;
SIGNAL \Rz[3]~output_o\ : std_logic;
SIGNAL \Rz[2]~output_o\ : std_logic;
SIGNAL \Rz[1]~output_o\ : std_logic;
SIGNAL \Rz[0]~output_o\ : std_logic;
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
SIGNAL \op1reg[4]~input_o\ : std_logic;
SIGNAL \op1reg[3]~input_o\ : std_logic;
SIGNAL \op1reg[2]~input_o\ : std_logic;
SIGNAL \op1reg[1]~input_o\ : std_logic;
SIGNAL \program_counter|Add1~57_sumout\ : std_logic;
SIGNAL \program_counter|Add0~57_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~57_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~59_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[1]~58_combout\ : std_logic;
SIGNAL \program_counter|Add1~58\ : std_logic;
SIGNAL \program_counter|Add1~54\ : std_logic;
SIGNAL \program_counter|Add1~49_sumout\ : std_logic;
SIGNAL \inst2|output_signal[3]~12_combout\ : std_logic;
SIGNAL \program_counter|Add0~58\ : std_logic;
SIGNAL \program_counter|Add0~54\ : std_logic;
SIGNAL \program_counter|Add0~49_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~49_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~51_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[3]~50_combout\ : std_logic;
SIGNAL \program_counter|Add1~50\ : std_logic;
SIGNAL \program_counter|Add1~45_sumout\ : std_logic;
SIGNAL \program_counter|Add0~50\ : std_logic;
SIGNAL \program_counter|Add0~45_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~45_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~47_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[4]~46_combout\ : std_logic;
SIGNAL \inst2|output_signal[4]~11_combout\ : std_logic;
SIGNAL \inst|memory~549_combout\ : std_logic;
SIGNAL \instruction_r|t_Am[1]~0_combout\ : std_logic;
SIGNAL \inst|memory~535_combout\ : std_logic;
SIGNAL \inst|memory~536_combout\ : std_logic;
SIGNAL \inst|memory~537_combout\ : std_logic;
SIGNAL \inst|memory~538_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~1_combout\ : std_logic;
SIGNAL \program_counter|Add1~53_sumout\ : std_logic;
SIGNAL \program_counter|Add0~53_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~53_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~55_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[2]~54_combout\ : std_logic;
SIGNAL \inst2|output_signal[2]~13_combout\ : std_logic;
SIGNAL \inst|memory~539_combout\ : std_logic;
SIGNAL \inst1|pc_mux_sel~0_combout\ : std_logic;
SIGNAL \inst2|output_signal[1]~14_combout\ : std_logic;
SIGNAL \inst|memory~548_combout\ : std_logic;
SIGNAL \op1reg[0]~input_o\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~61_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~63_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[0]~62_combout\ : std_logic;
SIGNAL \inst2|output_signal[0]~15_combout\ : std_logic;
SIGNAL \inst|memory~534_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \op1reg[15]~input_o\ : std_logic;
SIGNAL \op1reg[14]~input_o\ : std_logic;
SIGNAL \op1reg[13]~input_o\ : std_logic;
SIGNAL \op1reg[12]~input_o\ : std_logic;
SIGNAL \op1reg[11]~input_o\ : std_logic;
SIGNAL \op1reg[10]~input_o\ : std_logic;
SIGNAL \op1reg[9]~input_o\ : std_logic;
SIGNAL \op1reg[8]~input_o\ : std_logic;
SIGNAL \op1reg[7]~input_o\ : std_logic;
SIGNAL \op1reg[6]~input_o\ : std_logic;
SIGNAL \op1reg[5]~input_o\ : std_logic;
SIGNAL \program_counter|Add1~46\ : std_logic;
SIGNAL \program_counter|Add1~41_sumout\ : std_logic;
SIGNAL \inst2|output_signal[5]~10_combout\ : std_logic;
SIGNAL \program_counter|Add0~46\ : std_logic;
SIGNAL \program_counter|Add0~41_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~41_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~43_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[5]~42_combout\ : std_logic;
SIGNAL \program_counter|Add1~42\ : std_logic;
SIGNAL \program_counter|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|output_signal[6]~9_combout\ : std_logic;
SIGNAL \program_counter|Add0~42\ : std_logic;
SIGNAL \program_counter|Add0~37_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~37_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~39_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[6]~38_combout\ : std_logic;
SIGNAL \program_counter|Add1~38\ : std_logic;
SIGNAL \program_counter|Add1~33_sumout\ : std_logic;
SIGNAL \inst2|output_signal[7]~8_combout\ : std_logic;
SIGNAL \program_counter|Add0~38\ : std_logic;
SIGNAL \program_counter|Add0~33_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~33_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~35_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[7]~34_combout\ : std_logic;
SIGNAL \program_counter|Add1~34\ : std_logic;
SIGNAL \program_counter|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|output_signal[8]~7_combout\ : std_logic;
SIGNAL \program_counter|Add0~34\ : std_logic;
SIGNAL \program_counter|Add0~29_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~29_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~31_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[8]~30_combout\ : std_logic;
SIGNAL \program_counter|Add1~30\ : std_logic;
SIGNAL \program_counter|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|output_signal[9]~6_combout\ : std_logic;
SIGNAL \program_counter|Add0~30\ : std_logic;
SIGNAL \program_counter|Add0~25_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~25_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~27_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[9]~26_combout\ : std_logic;
SIGNAL \program_counter|Add1~26\ : std_logic;
SIGNAL \program_counter|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|output_signal[10]~5_combout\ : std_logic;
SIGNAL \program_counter|Add0~26\ : std_logic;
SIGNAL \program_counter|Add0~21_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~21_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~23_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[10]~22_combout\ : std_logic;
SIGNAL \program_counter|Add1~22\ : std_logic;
SIGNAL \program_counter|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|output_signal[11]~4_combout\ : std_logic;
SIGNAL \program_counter|Add0~22\ : std_logic;
SIGNAL \program_counter|Add0~17_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~17_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~19_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[11]~18_combout\ : std_logic;
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
SIGNAL \inst2|output_signal[13]~2_combout\ : std_logic;
SIGNAL \program_counter|Add0~14\ : std_logic;
SIGNAL \program_counter|Add0~9_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~9_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~11_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[13]~10_combout\ : std_logic;
SIGNAL \program_counter|Add1~10\ : std_logic;
SIGNAL \program_counter|Add1~5_sumout\ : std_logic;
SIGNAL \inst2|output_signal[14]~1_combout\ : std_logic;
SIGNAL \program_counter|Add0~10\ : std_logic;
SIGNAL \program_counter|Add0~5_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~5_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~7_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[14]~6_combout\ : std_logic;
SIGNAL \program_counter|Add1~6\ : std_logic;
SIGNAL \program_counter|Add1~1_sumout\ : std_logic;
SIGNAL \program_counter|Add0~6\ : std_logic;
SIGNAL \program_counter|Add0~1_sumout\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~1_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~3_combout\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~_emulated_q\ : std_logic;
SIGNAL \program_counter|tempIncr[15]~2_combout\ : std_logic;
SIGNAL \inst2|output_signal[15]~0_combout\ : std_logic;
SIGNAL \inst1|currentSignal[2]~0_combout\ : std_logic;
SIGNAL \inst1|currentSignal[1]~1_combout\ : std_logic;
SIGNAL \inst1|currentSignal[0]~2_combout\ : std_logic;
SIGNAL \inst|memory~547_combout\ : std_logic;
SIGNAL \inst|memory~540_combout\ : std_logic;
SIGNAL \inst|memory~546_combout\ : std_logic;
SIGNAL \inst|memory~545_combout\ : std_logic;
SIGNAL \inst|memory~544_combout\ : std_logic;
SIGNAL \inst|memory~541_combout\ : std_logic;
SIGNAL \inst|memory~543_combout\ : std_logic;
SIGNAL \inst|memory~542_combout\ : std_logic;
SIGNAL \instruction_r|t_Am\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instruction_r|t_Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \program_counter|tempAddress\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|pm_outdata\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|t_Rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_r|t_Rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \program_counter|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_currentSignal[2]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_pc_mux_sel~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|ALT_INV_state.T3~q\ : std_logic;
SIGNAL \program_counter|ALT_INV_tempAddress\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1A~q\ : std_logic;
SIGNAL \instruction_r|ALT_INV_t_Am\ : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \program_counter|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \program_counter|ALT_INV_Add0~5_sumout\ : std_logic;
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
SIGNAL \inst1|ALT_INV_Mux11~1_combout\ : std_logic;
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
SIGNAL \inst2|ALT_INV_output_signal[0]~15_combout\ : std_logic;
SIGNAL \ALT_INV_op1reg[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_op1reg[15]~input_o\ : std_logic;
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
instAddr <= ww_instAddr;
reset_pc <= ww_reset_pc;
pc_mux_sel <= ww_pc_mux_sel;
ww_op1reg <= op1reg;
OPCode <= ww_OPCode;
currentState <= ww_currentState;
incrAddr <= ww_incrAddr;
instruction <= ww_instruction;
Operand <= ww_Operand;
Rx <= ww_Rx;
Rz <= ww_Rz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\program_counter|ALT_INV_Add0~1_sumout\ <= NOT \program_counter|Add0~1_sumout\;
\inst1|ALT_INV_currentSignal[2]~0_combout\ <= NOT \inst1|currentSignal[2]~0_combout\;
\inst1|ALT_INV_state.T2~q\ <= NOT \inst1|state.T2~q\;
\inst1|ALT_INV_pc_mux_sel~0_combout\ <= NOT \inst1|pc_mux_sel~0_combout\;
\inst1|ALT_INV_Mux11~0_combout\ <= NOT \inst1|Mux11~0_combout\;
\instruction_r|ALT_INV_t_OP\(2) <= NOT \instruction_r|t_OP\(2);
\instruction_r|ALT_INV_t_OP\(3) <= NOT \instruction_r|t_OP\(3);
\instruction_r|ALT_INV_t_OP\(4) <= NOT \instruction_r|t_OP\(4);
\instruction_r|ALT_INV_t_OP\(5) <= NOT \instruction_r|t_OP\(5);
\instruction_r|ALT_INV_t_OP\(0) <= NOT \instruction_r|t_OP\(0);
\instruction_r|ALT_INV_t_OP\(1) <= NOT \instruction_r|t_OP\(1);
\inst1|ALT_INV_state.T3~q\ <= NOT \inst1|state.T3~q\;
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
\inst1|ALT_INV_state.T0~q\ <= NOT \inst1|state.T0~q\;
\inst1|ALT_INV_state.T1~q\ <= NOT \inst1|state.T1~q\;
\inst1|ALT_INV_state.T1A~q\ <= NOT \inst1|state.T1A~q\;
\instruction_r|ALT_INV_t_Am\(0) <= NOT \instruction_r|t_Am\(0);
\instruction_r|ALT_INV_t_Am\(1) <= NOT \instruction_r|t_Am\(1);
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
\program_counter|ALT_INV_Add0~57_sumout\ <= NOT \program_counter|Add0~57_sumout\;
\program_counter|ALT_INV_Add0~53_sumout\ <= NOT \program_counter|Add0~53_sumout\;
\program_counter|ALT_INV_Add0~49_sumout\ <= NOT \program_counter|Add0~49_sumout\;
\program_counter|ALT_INV_Add0~45_sumout\ <= NOT \program_counter|Add0~45_sumout\;
\program_counter|ALT_INV_Add0~41_sumout\ <= NOT \program_counter|Add0~41_sumout\;
\program_counter|ALT_INV_Add0~37_sumout\ <= NOT \program_counter|Add0~37_sumout\;
\program_counter|ALT_INV_Add0~33_sumout\ <= NOT \program_counter|Add0~33_sumout\;
\program_counter|ALT_INV_Add0~29_sumout\ <= NOT \program_counter|Add0~29_sumout\;
\program_counter|ALT_INV_Add0~25_sumout\ <= NOT \program_counter|Add0~25_sumout\;
\program_counter|ALT_INV_Add0~21_sumout\ <= NOT \program_counter|Add0~21_sumout\;
\program_counter|ALT_INV_Add0~17_sumout\ <= NOT \program_counter|Add0~17_sumout\;
\program_counter|ALT_INV_Add0~13_sumout\ <= NOT \program_counter|Add0~13_sumout\;
\program_counter|ALT_INV_Add0~9_sumout\ <= NOT \program_counter|Add0~9_sumout\;
\program_counter|ALT_INV_Add0~5_sumout\ <= NOT \program_counter|Add0~5_sumout\;
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
\inst1|ALT_INV_Mux11~1_combout\ <= NOT \inst1|Mux11~1_combout\;
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
\inst2|ALT_INV_output_signal[0]~15_combout\ <= NOT \inst2|output_signal[0]~15_combout\;
\ALT_INV_op1reg[0]~input_o\ <= NOT \op1reg[0]~input_o\;
\ALT_INV_op1reg[1]~input_o\ <= NOT \op1reg[1]~input_o\;
\ALT_INV_op1reg[2]~input_o\ <= NOT \op1reg[2]~input_o\;
\ALT_INV_op1reg[3]~input_o\ <= NOT \op1reg[3]~input_o\;
\ALT_INV_op1reg[4]~input_o\ <= NOT \op1reg[4]~input_o\;
\ALT_INV_op1reg[5]~input_o\ <= NOT \op1reg[5]~input_o\;
\ALT_INV_op1reg[6]~input_o\ <= NOT \op1reg[6]~input_o\;
\ALT_INV_op1reg[7]~input_o\ <= NOT \op1reg[7]~input_o\;
\ALT_INV_op1reg[8]~input_o\ <= NOT \op1reg[8]~input_o\;
\ALT_INV_op1reg[9]~input_o\ <= NOT \op1reg[9]~input_o\;
\ALT_INV_op1reg[10]~input_o\ <= NOT \op1reg[10]~input_o\;
\ALT_INV_op1reg[11]~input_o\ <= NOT \op1reg[11]~input_o\;
\ALT_INV_op1reg[12]~input_o\ <= NOT \op1reg[12]~input_o\;
\ALT_INV_op1reg[13]~input_o\ <= NOT \op1reg[13]~input_o\;
\ALT_INV_op1reg[14]~input_o\ <= NOT \op1reg[14]~input_o\;
\ALT_INV_op1reg[15]~input_o\ <= NOT \op1reg[15]~input_o\;
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
	i => \inst|pm_outdata\(15),
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
	i => \inst|pm_outdata\(14),
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
	i => \inst|pm_outdata\(13),
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
	i => \inst|pm_outdata\(12),
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
	i => \inst|pm_outdata\(11),
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
	i => \inst|pm_outdata\(10),
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
	i => \inst|pm_outdata\(9),
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
	i => \inst|pm_outdata\(8),
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
	i => \inst|pm_outdata\(7),
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
	i => \inst|pm_outdata\(6),
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
	i => \inst|pm_outdata\(5),
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
	i => \inst|pm_outdata\(4),
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
	i => \inst|pm_outdata\(3),
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
	i => \inst|pm_outdata\(2),
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
	i => \inst|pm_outdata\(1),
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
	i => \inst|pm_outdata\(0),
	devoe => ww_devoe,
	o => \instruction[0]~output_o\);

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

\op1reg[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(4),
	o => \op1reg[4]~input_o\);

\op1reg[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(3),
	o => \op1reg[3]~input_o\);

\op1reg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(2),
	o => \op1reg[2]~input_o\);

\op1reg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(1),
	o => \op1reg[1]~input_o\);

\program_counter|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~57_sumout\ = SUM(( \inst2|output_signal[0]~15_combout\ ) + ( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[1]~58_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[1]~input_o\))) # 
-- (\inst1|Mux11~1_combout\ & (\program_counter|tempIncr[1]~58_combout\)))) ) + ( !VCC ))
-- \program_counter|Add1~58\ = CARRY(( \inst2|output_signal[0]~15_combout\ ) + ( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[1]~58_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[1]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[1]~58_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[1]~58_combout\,
	datad => \inst2|ALT_INV_output_signal[0]~15_combout\,
	dataf => \ALT_INV_op1reg[1]~input_o\,
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

\program_counter|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~53_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[2]~54_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[2]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[2]~54_combout\)))) ) + ( GND ) + ( \program_counter|Add1~58\ ))
-- \program_counter|Add1~54\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[2]~54_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[2]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[2]~54_combout\)))) ) + ( GND ) + ( \program_counter|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[2]~54_combout\,
	datad => \ALT_INV_op1reg[2]~input_o\,
	cin => \program_counter|Add1~58\,
	sumout => \program_counter|Add1~53_sumout\,
	cout => \program_counter|Add1~54\);

\program_counter|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~49_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[3]~50_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[3]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[3]~50_combout\)))) ) + ( GND ) + ( \program_counter|Add1~54\ ))
-- \program_counter|Add1~50\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[3]~50_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[3]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[3]~50_combout\)))) ) + ( GND ) + ( \program_counter|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[3]~50_combout\,
	datad => \ALT_INV_op1reg[3]~input_o\,
	cin => \program_counter|Add1~54\,
	sumout => \program_counter|Add1~49_sumout\,
	cout => \program_counter|Add1~50\);

\inst2|output_signal[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[3]~12_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[3]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[3]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[3]~50_combout\,
	datac => \ALT_INV_op1reg[3]~input_o\,
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

\program_counter|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~45_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[4]~46_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[4]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[4]~46_combout\)))) ) + ( GND ) + ( \program_counter|Add1~50\ ))
-- \program_counter|Add1~46\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[4]~46_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[4]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[4]~46_combout\)))) ) + ( GND ) + ( \program_counter|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[4]~46_combout\,
	datad => \ALT_INV_op1reg[4]~input_o\,
	cin => \program_counter|Add1~50\,
	sumout => \program_counter|Add1~45_sumout\,
	cout => \program_counter|Add1~46\);

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

\inst2|output_signal[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[4]~11_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[4]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[4]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[4]~46_combout\,
	datac => \ALT_INV_op1reg[4]~input_o\,
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

\inst|memory~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~549_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(4) & (((!\program_counter|tempAddress\(0) & !\program_counter|tempAddress\(1))) # (\program_counter|tempAddress\(2)))) ) ) # ( 
-- !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(4) & ((!\program_counter|tempAddress\(0)) # (!\program_counter|tempAddress\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000110101010000000011111100000000001101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(2),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~549_combout\);

\inst|pm_outdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(14));

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

\instruction_r|t_Am[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(14),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Am\(0));

\inst|memory~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~535_combout\ = ( \program_counter|tempAddress\(3) & ( !\program_counter|tempAddress\(4) $ (((\program_counter|tempAddress\(2) & (\program_counter|tempAddress\(0) & \program_counter|tempAddress\(1))))) ) ) # ( !\program_counter|tempAddress\(3) 
-- & ( (!\program_counter|tempAddress\(2) & (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) & !\program_counter|tempAddress\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000111111100000000110000000000000001111111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(2),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~535_combout\);

\inst|pm_outdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(13));

\instruction_r|t_OP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(13),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(5));

\inst|memory~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~536_combout\ = ( \program_counter|tempAddress\(3) & ( !\program_counter|tempAddress\(4) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(2) & (!\program_counter|tempAddress\(1) & (!\program_counter|tempAddress\(0) 
-- $ (\program_counter|tempAddress\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000111111110000000010000000010000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(0),
	datab => \program_counter|ALT_INV_tempAddress\(2),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~536_combout\);

\inst|pm_outdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(12));

\instruction_r|t_OP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(12),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(4));

\inst|memory~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~537_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(4) & ((\program_counter|tempAddress\(2)) # (\program_counter|tempAddress\(1))))) # (\program_counter|tempAddress\(0) & 
-- ((!\program_counter|tempAddress\(2) & ((!\program_counter|tempAddress\(4)))) # (\program_counter|tempAddress\(2) & (\program_counter|tempAddress\(1))))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(2) & 
-- ((!\program_counter|tempAddress\(0) & ((!\program_counter|tempAddress\(4)))) # (\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000001000000011110110000000111100000010000000111101100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(0),
	datab => \program_counter|ALT_INV_tempAddress\(1),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~537_combout\);

\inst|pm_outdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(11));

\instruction_r|t_OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(11),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(3));

\inst|memory~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~538_combout\ = ( \program_counter|tempAddress\(4) & ( (!\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(2) & !\program_counter|tempAddress\(3)))) ) ) # ( !\program_counter|tempAddress\(4) 
-- & ( (!\program_counter|tempAddress\(3) & (!\program_counter|tempAddress\(1) & (!\program_counter|tempAddress\(0) $ (!\program_counter|tempAddress\(2))))) # (\program_counter|tempAddress\(3) & (((!\program_counter|tempAddress\(2)) # 
-- (\program_counter|tempAddress\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100011110011001000000000000000101000111100110010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(1),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(3),
	datae => \program_counter|ALT_INV_tempAddress\(4),
	combout => \inst|memory~538_combout\);

\inst|pm_outdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(10));

\instruction_r|t_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(10),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(2));

\inst1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = ( \instruction_r|t_OP\(3) & ( !\instruction_r|t_OP\(2) & ( (!\instruction_r|t_Am\(1) & (\instruction_r|t_Am\(0) & (!\instruction_r|t_OP\(5) & \instruction_r|t_OP\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_Am\(1),
	datab => \instruction_r|ALT_INV_t_Am\(0),
	datac => \instruction_r|ALT_INV_t_OP\(5),
	datad => \instruction_r|ALT_INV_t_OP\(4),
	datae => \instruction_r|ALT_INV_t_OP\(3),
	dataf => \instruction_r|ALT_INV_t_OP\(2),
	combout => \inst1|Mux11~0_combout\);

\inst1|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux11~1_combout\ = ((!\inst1|Mux11~0_combout\) # (\instruction_r|t_OP\(0))) # (\instruction_r|t_OP\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_t_OP\(1),
	datab => \instruction_r|ALT_INV_t_OP\(0),
	datac => \inst1|ALT_INV_Mux11~0_combout\,
	combout => \inst1|Mux11~1_combout\);

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
-- \inst2|output_signal[2]~13_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[2]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[2]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[2]~54_combout\,
	datac => \ALT_INV_op1reg[2]~input_o\,
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

\inst|memory~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~539_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(1) & (!\program_counter|tempAddress\(4) & ((\program_counter|tempAddress\(0)) # (\program_counter|tempAddress\(2))))) # (\program_counter|tempAddress\(1) & 
-- (\program_counter|tempAddress\(2) & (\program_counter|tempAddress\(0) & \program_counter|tempAddress\(4)))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(2) & (\program_counter|tempAddress\(0) & 
-- (!\program_counter|tempAddress\(1) & \program_counter|tempAddress\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000011100000000000100000000001000000111000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(2),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~539_combout\);

\inst|pm_outdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(8));

\instruction_r|t_OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(8),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(0));

\inst1|pc_mux_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|pc_mux_sel~0_combout\ = (!\inst1|state.T3~q\) # (((!\inst1|Mux11~0_combout\) # (\instruction_r|t_OP\(0))) # (\instruction_r|t_OP\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111011111111111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_OP\(1),
	datac => \instruction_r|ALT_INV_t_OP\(0),
	datad => \inst1|ALT_INV_Mux11~0_combout\,
	combout => \inst1|pc_mux_sel~0_combout\);

\inst2|output_signal[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[1]~14_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[1]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[1]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[1]~58_combout\,
	datac => \ALT_INV_op1reg[1]~input_o\,
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

\inst|memory~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~548_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (((!\program_counter|tempAddress\(4))))) # (\program_counter|tempAddress\(0) & ((!\program_counter|tempAddress\(1) & 
-- ((!\program_counter|tempAddress\(4)))) # (\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110000000100000000000000001110111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(0),
	datab => \program_counter|ALT_INV_tempAddress\(1),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~548_combout\);

\inst|pm_outdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(9));

\instruction_r|t_OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(9),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_OP\(1));

\op1reg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(0),
	o => \op1reg[0]~input_o\);

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
-- \program_counter|tempIncr[0]~63_combout\ = !\program_counter|tempIncr[0]~61_combout\ $ (((!\inst1|pc_mux_sel~0_combout\ & (\op1reg[0]~input_o\)) # (\inst1|pc_mux_sel~0_combout\ & ((\program_counter|tempIncr[0]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110001010011101011000101001110101100010100111010110001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op1reg[0]~input_o\,
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
-- \inst2|output_signal[0]~15_combout\ = ( \program_counter|tempIncr[0]~62_combout\ & ( \op1reg[0]~input_o\ ) ) # ( !\program_counter|tempIncr[0]~62_combout\ & ( \op1reg[0]~input_o\ & ( (\inst1|state.T3~q\ & (!\instruction_r|t_OP\(1) & 
-- (!\instruction_r|t_OP\(0) & \inst1|Mux11~0_combout\))) ) ) ) # ( \program_counter|tempIncr[0]~62_combout\ & ( !\op1reg[0]~input_o\ & ( (!\inst1|state.T3~q\) # (((!\inst1|Mux11~0_combout\) # (\instruction_r|t_OP\(0))) # (\instruction_r|t_OP\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \instruction_r|ALT_INV_t_OP\(1),
	datac => \instruction_r|ALT_INV_t_OP\(0),
	datad => \inst1|ALT_INV_Mux11~0_combout\,
	datae => \program_counter|ALT_INV_tempIncr[0]~62_combout\,
	dataf => \ALT_INV_op1reg[0]~input_o\,
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

\inst|memory~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~534_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(4) & ((!\program_counter|tempAddress\(1)) # (\program_counter|tempAddress\(2))))) # (\program_counter|tempAddress\(0) & 
-- (\program_counter|tempAddress\(2) & (!\program_counter|tempAddress\(1) $ (\program_counter|tempAddress\(4))))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(2) & ((!\program_counter|tempAddress\(4) & 
-- ((!\program_counter|tempAddress\(1)))) # (\program_counter|tempAddress\(4) & (\program_counter|tempAddress\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010000100011100000000111000000010100001000111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(0),
	datab => \program_counter|ALT_INV_tempAddress\(1),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~534_combout\);

\inst|pm_outdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~534_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(15));

\instruction_r|t_Am[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(15),
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

\op1reg[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(15),
	o => \op1reg[15]~input_o\);

\op1reg[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(14),
	o => \op1reg[14]~input_o\);

\op1reg[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(13),
	o => \op1reg[13]~input_o\);

\op1reg[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(12),
	o => \op1reg[12]~input_o\);

\op1reg[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(11),
	o => \op1reg[11]~input_o\);

\op1reg[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(10),
	o => \op1reg[10]~input_o\);

\op1reg[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(9),
	o => \op1reg[9]~input_o\);

\op1reg[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(8),
	o => \op1reg[8]~input_o\);

\op1reg[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(7),
	o => \op1reg[7]~input_o\);

\op1reg[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(6),
	o => \op1reg[6]~input_o\);

\op1reg[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(5),
	o => \op1reg[5]~input_o\);

\program_counter|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~41_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[5]~42_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[5]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[5]~42_combout\)))) ) + ( GND ) + ( \program_counter|Add1~46\ ))
-- \program_counter|Add1~42\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[5]~42_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[5]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[5]~42_combout\)))) ) + ( GND ) + ( \program_counter|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[5]~42_combout\,
	datad => \ALT_INV_op1reg[5]~input_o\,
	cin => \program_counter|Add1~46\,
	sumout => \program_counter|Add1~41_sumout\,
	cout => \program_counter|Add1~42\);

\inst2|output_signal[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[5]~10_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[5]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[5]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[5]~42_combout\,
	datac => \ALT_INV_op1reg[5]~input_o\,
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
-- \program_counter|Add1~37_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[6]~38_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[6]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[6]~38_combout\)))) ) + ( GND ) + ( \program_counter|Add1~42\ ))
-- \program_counter|Add1~38\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[6]~38_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[6]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[6]~38_combout\)))) ) + ( GND ) + ( \program_counter|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[6]~38_combout\,
	datad => \ALT_INV_op1reg[6]~input_o\,
	cin => \program_counter|Add1~42\,
	sumout => \program_counter|Add1~37_sumout\,
	cout => \program_counter|Add1~38\);

\inst2|output_signal[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[6]~9_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[6]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[6]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[6]~38_combout\,
	datac => \ALT_INV_op1reg[6]~input_o\,
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
-- \program_counter|Add1~33_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[7]~34_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[7]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[7]~34_combout\)))) ) + ( GND ) + ( \program_counter|Add1~38\ ))
-- \program_counter|Add1~34\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[7]~34_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[7]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[7]~34_combout\)))) ) + ( GND ) + ( \program_counter|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[7]~34_combout\,
	datad => \ALT_INV_op1reg[7]~input_o\,
	cin => \program_counter|Add1~38\,
	sumout => \program_counter|Add1~33_sumout\,
	cout => \program_counter|Add1~34\);

\inst2|output_signal[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[7]~8_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[7]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[7]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[7]~34_combout\,
	datac => \ALT_INV_op1reg[7]~input_o\,
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
-- \program_counter|Add1~29_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[8]~30_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[8]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[8]~30_combout\)))) ) + ( GND ) + ( \program_counter|Add1~34\ ))
-- \program_counter|Add1~30\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[8]~30_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[8]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[8]~30_combout\)))) ) + ( GND ) + ( \program_counter|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[8]~30_combout\,
	datad => \ALT_INV_op1reg[8]~input_o\,
	cin => \program_counter|Add1~34\,
	sumout => \program_counter|Add1~29_sumout\,
	cout => \program_counter|Add1~30\);

\inst2|output_signal[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[8]~7_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[8]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[8]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[8]~30_combout\,
	datac => \ALT_INV_op1reg[8]~input_o\,
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

\program_counter|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~25_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[9]~26_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[9]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[9]~26_combout\)))) ) + ( GND ) + ( \program_counter|Add1~30\ ))
-- \program_counter|Add1~26\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[9]~26_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[9]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[9]~26_combout\)))) ) + ( GND ) + ( \program_counter|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[9]~26_combout\,
	datad => \ALT_INV_op1reg[9]~input_o\,
	cin => \program_counter|Add1~30\,
	sumout => \program_counter|Add1~25_sumout\,
	cout => \program_counter|Add1~26\);

\inst2|output_signal[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[9]~6_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[9]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[9]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[9]~26_combout\,
	datac => \ALT_INV_op1reg[9]~input_o\,
	combout => \inst2|output_signal[9]~6_combout\);

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

\program_counter|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~21_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[10]~22_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[10]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[10]~22_combout\)))) ) + ( GND ) + ( \program_counter|Add1~26\ ))
-- \program_counter|Add1~22\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[10]~22_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[10]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[10]~22_combout\)))) ) + ( GND ) + ( \program_counter|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[10]~22_combout\,
	datad => \ALT_INV_op1reg[10]~input_o\,
	cin => \program_counter|Add1~26\,
	sumout => \program_counter|Add1~21_sumout\,
	cout => \program_counter|Add1~22\);

\inst2|output_signal[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[10]~5_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[10]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[10]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[10]~22_combout\,
	datac => \ALT_INV_op1reg[10]~input_o\,
	combout => \inst2|output_signal[10]~5_combout\);

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

\program_counter|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~17_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[11]~18_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[11]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[11]~18_combout\)))) ) + ( GND ) + ( \program_counter|Add1~22\ ))
-- \program_counter|Add1~18\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[11]~18_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[11]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[11]~18_combout\)))) ) + ( GND ) + ( \program_counter|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[11]~18_combout\,
	datad => \ALT_INV_op1reg[11]~input_o\,
	cin => \program_counter|Add1~22\,
	sumout => \program_counter|Add1~17_sumout\,
	cout => \program_counter|Add1~18\);

\inst2|output_signal[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[11]~4_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[11]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[11]~18_combout\,
	datac => \ALT_INV_op1reg[11]~input_o\,
	combout => \inst2|output_signal[11]~4_combout\);

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

\program_counter|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~13_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[12]~14_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[12]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[12]~14_combout\)))) ) + ( GND ) + ( \program_counter|Add1~18\ ))
-- \program_counter|Add1~14\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[12]~14_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[12]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[12]~14_combout\)))) ) + ( GND ) + ( \program_counter|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[12]~14_combout\,
	datad => \ALT_INV_op1reg[12]~input_o\,
	cin => \program_counter|Add1~18\,
	sumout => \program_counter|Add1~13_sumout\,
	cout => \program_counter|Add1~14\);

\inst2|output_signal[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[12]~3_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[12]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[12]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[12]~14_combout\,
	datac => \ALT_INV_op1reg[12]~input_o\,
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
-- \program_counter|Add1~9_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[13]~10_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[13]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[13]~10_combout\)))) ) + ( GND ) + ( \program_counter|Add1~14\ ))
-- \program_counter|Add1~10\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[13]~10_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[13]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[13]~10_combout\)))) ) + ( GND ) + ( \program_counter|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[13]~10_combout\,
	datad => \ALT_INV_op1reg[13]~input_o\,
	cin => \program_counter|Add1~14\,
	sumout => \program_counter|Add1~9_sumout\,
	cout => \program_counter|Add1~10\);

\inst2|output_signal[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[13]~2_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[13]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[13]~10_combout\,
	datac => \ALT_INV_op1reg[13]~input_o\,
	combout => \inst2|output_signal[13]~2_combout\);

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

\program_counter|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~5_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[14]~6_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[14]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[14]~6_combout\)))) ) + ( GND ) + ( \program_counter|Add1~10\ ))
-- \program_counter|Add1~6\ = CARRY(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[14]~6_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[14]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[14]~6_combout\)))) ) + ( GND ) + ( \program_counter|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[14]~6_combout\,
	datad => \ALT_INV_op1reg[14]~input_o\,
	cin => \program_counter|Add1~10\,
	sumout => \program_counter|Add1~5_sumout\,
	cout => \program_counter|Add1~6\);

\inst2|output_signal[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[14]~1_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[14]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[14]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[14]~6_combout\,
	datac => \ALT_INV_op1reg[14]~input_o\,
	combout => \inst2|output_signal[14]~1_combout\);

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

\program_counter|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add1~1_sumout\ = SUM(( (!\inst1|state.T3~q\ & (((\program_counter|tempIncr[15]~2_combout\)))) # (\inst1|state.T3~q\ & ((!\inst1|Mux11~1_combout\ & ((\op1reg[15]~input_o\))) # (\inst1|Mux11~1_combout\ & 
-- (\program_counter|tempIncr[15]~2_combout\)))) ) + ( GND ) + ( \program_counter|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_Mux11~1_combout\,
	datac => \program_counter|ALT_INV_tempIncr[15]~2_combout\,
	datad => \ALT_INV_op1reg[15]~input_o\,
	cin => \program_counter|Add1~6\,
	sumout => \program_counter|Add1~1_sumout\);

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
-- \inst2|output_signal[15]~0_combout\ = (!\inst1|pc_mux_sel~0_combout\ & ((\op1reg[15]~input_o\))) # (\inst1|pc_mux_sel~0_combout\ & (\program_counter|tempIncr[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~0_combout\,
	datab => \program_counter|ALT_INV_tempIncr[15]~2_combout\,
	datac => \ALT_INV_op1reg[15]~input_o\,
	combout => \inst2|output_signal[15]~0_combout\);

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

\inst|memory~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~547_combout\ = ( \program_counter|tempAddress\(0) & ( (\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(2) & \program_counter|tempAddress\(3))) ) ) # ( !\program_counter|tempAddress\(0) & ( (\program_counter|tempAddress\(1) & 
-- (\program_counter|tempAddress\(2) & (!\program_counter|tempAddress\(3) & !\program_counter|tempAddress\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000010000000100010000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(1),
	datab => \program_counter|ALT_INV_tempAddress\(2),
	datac => \program_counter|ALT_INV_tempAddress\(3),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(0),
	combout => \inst|memory~547_combout\);

\inst|pm_outdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(7));

\inst|memory~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~540_combout\ = ( \program_counter|tempAddress\(3) & ( (\program_counter|tempAddress\(2) & ((!\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(0) & !\program_counter|tempAddress\(4))) # (\program_counter|tempAddress\(1) & 
-- ((!\program_counter|tempAddress\(4)) # (\program_counter|tempAddress\(0)))))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(4) & (!\program_counter|tempAddress\(1) $ 
-- (\program_counter|tempAddress\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000100110000000110010000000000000001001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(1),
	datab => \program_counter|ALT_INV_tempAddress\(2),
	datac => \program_counter|ALT_INV_tempAddress\(0),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~540_combout\);

\inst|pm_outdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(6));

\inst|memory~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~546_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) & !\program_counter|tempAddress\(4))) ) ) # ( !\program_counter|tempAddress\(3) & ( 
-- (!\program_counter|tempAddress\(4) & ((!\program_counter|tempAddress\(0) & (\program_counter|tempAddress\(1) & \program_counter|tempAddress\(2))) # (\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) & 
-- !\program_counter|tempAddress\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000000000100010000000000001000010000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(0),
	datab => \program_counter|ALT_INV_tempAddress\(1),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~546_combout\);

\inst|pm_outdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(5));

\inst|memory~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~545_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) & !\program_counter|tempAddress\(4))) ) ) # ( !\program_counter|tempAddress\(3) & ( 
-- (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) $ (((!\program_counter|tempAddress\(2) & \program_counter|tempAddress\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001001000110000000000000011000000010010001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(2),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~545_combout\);

\inst|pm_outdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(4));

\inst|memory~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~544_combout\ = ( \program_counter|tempAddress\(3) & ( (\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(0) & \program_counter|tempAddress\(2))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(4) 
-- & ((\program_counter|tempAddress\(2)) # (\program_counter|tempAddress\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000000000010000000100111111000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(1),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~544_combout\);

\inst|pm_outdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(3));

\inst|memory~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~541_combout\ = ( \program_counter|tempAddress\(3) & ( (\program_counter|tempAddress\(2) & ((!\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(0) & !\program_counter|tempAddress\(4))) # (\program_counter|tempAddress\(1) & 
-- ((!\program_counter|tempAddress\(4)) # (\program_counter|tempAddress\(0)))))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & ((!\program_counter|tempAddress\(1) & (\program_counter|tempAddress\(2) & 
-- \program_counter|tempAddress\(4))) # (\program_counter|tempAddress\(1) & (!\program_counter|tempAddress\(2) $ (!\program_counter|tempAddress\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001100000000100110000000100010000011000000001001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(1),
	datab => \program_counter|ALT_INV_tempAddress\(2),
	datac => \program_counter|ALT_INV_tempAddress\(0),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~541_combout\);

\inst|pm_outdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(2));

\inst|memory~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~543_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) & !\program_counter|tempAddress\(4))) ) ) # ( !\program_counter|tempAddress\(3) & ( 
-- (!\program_counter|tempAddress\(4) & ((!\program_counter|tempAddress\(0) & (!\program_counter|tempAddress\(1) $ (\program_counter|tempAddress\(2)))) # (\program_counter|tempAddress\(0) & ((!\program_counter|tempAddress\(1)) # 
-- (!\program_counter|tempAddress\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011000000000100010000000000011010110000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(0),
	datab => \program_counter|ALT_INV_tempAddress\(1),
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~543_combout\);

\inst|pm_outdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(1));

\inst|memory~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~542_combout\ = ( \program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(0) & (((!\program_counter|tempAddress\(1) & !\program_counter|tempAddress\(4))))) # (\program_counter|tempAddress\(0) & (\program_counter|tempAddress\(2) & 
-- (\program_counter|tempAddress\(1) & \program_counter|tempAddress\(4)))) ) ) # ( !\program_counter|tempAddress\(3) & ( (!\program_counter|tempAddress\(1) & (((!\program_counter|tempAddress\(0) & \program_counter|tempAddress\(4))))) # 
-- (\program_counter|tempAddress\(1) & (!\program_counter|tempAddress\(2) & (!\program_counter|tempAddress\(0) $ (!\program_counter|tempAddress\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001000110000000000000100000010110010001100000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_tempAddress\(2),
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \program_counter|ALT_INV_tempAddress\(4),
	datae => \program_counter|ALT_INV_tempAddress\(3),
	combout => \inst|memory~542_combout\);

\inst|pm_outdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(0));

\instruction_r|t_Operand[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(15),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(15));

\instruction_r|t_Operand[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(14),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(14));

\instruction_r|t_Operand[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(13),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(13));

\instruction_r|t_Operand[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(12),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(12));

\instruction_r|t_Operand[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(11),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(11));

\instruction_r|t_Operand[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(10),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(10));

\instruction_r|t_Operand[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(9),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(9));

\instruction_r|t_Operand[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(8),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(8));

\instruction_r|t_Operand[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(7),
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
	d => \inst|pm_outdata\(6),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(6));

\instruction_r|t_Operand[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(5),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(5));

\instruction_r|t_Operand[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(4),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(4));

\instruction_r|t_Operand[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(3),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(3));

\instruction_r|t_Operand[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(2),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(2));

\instruction_r|t_Operand[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(1),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(1));

\instruction_r|t_Operand[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(0),
	ena => \inst1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Operand\(0));

\instruction_r|t_Rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(3),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(3));

\instruction_r|t_Rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(2),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(2));

\instruction_r|t_Rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(1),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(1));

\instruction_r|t_Rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(0),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rx\(0));

\instruction_r|t_Rz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(7),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(3));

\instruction_r|t_Rz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(6),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(2));

\instruction_r|t_Rz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(5),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(1));

\instruction_r|t_Rz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(4),
	ena => \instruction_r|t_Am[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|t_Rz\(0));

ww_write_pc <= \write_pc~output_o\;

ww_AM(1) <= \AM[1]~output_o\;

ww_AM(0) <= \AM[0]~output_o\;

ww_ir_wr <= \ir_wr~output_o\;

ww_ir_reset <= \ir_reset~output_o\;

ww_ir_operand_set <= \ir_operand_set~output_o\;

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

ww_reset_pc <= \reset_pc~output_o\;

ww_pc_mux_sel <= \pc_mux_sel~output_o\;

ww_OPCode(5) <= \OPCode[5]~output_o\;

ww_OPCode(4) <= \OPCode[4]~output_o\;

ww_OPCode(3) <= \OPCode[3]~output_o\;

ww_OPCode(2) <= \OPCode[2]~output_o\;

ww_OPCode(1) <= \OPCode[1]~output_o\;

ww_OPCode(0) <= \OPCode[0]~output_o\;

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

ww_Rx(3) <= \Rx[3]~output_o\;

ww_Rx(2) <= \Rx[2]~output_o\;

ww_Rx(1) <= \Rx[1]~output_o\;

ww_Rx(0) <= \Rx[0]~output_o\;

ww_Rz(3) <= \Rz[3]~output_o\;

ww_Rz(2) <= \Rz[2]~output_o\;

ww_Rz(1) <= \Rz[1]~output_o\;

ww_Rz(0) <= \Rz[0]~output_o\;
END structure;


