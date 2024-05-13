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

-- DATE "05/13/2024 13:17:04"

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
SIGNAL \inst1|next_state.T1A~q\ : std_logic;
SIGNAL \inst1|state~13_combout\ : std_logic;
SIGNAL \inst1|state.T1A~q\ : std_logic;
SIGNAL \inst1|next_state.T2~q\ : std_logic;
SIGNAL \inst1|state~16_combout\ : std_logic;
SIGNAL \inst1|state.T2~q\ : std_logic;
SIGNAL \inst1|next_state.T3~q\ : std_logic;
SIGNAL \inst1|state~14_combout\ : std_logic;
SIGNAL \inst1|state.T3~q\ : std_logic;
SIGNAL \inst1|next_state.T0~q\ : std_logic;
SIGNAL \inst1|state~15_combout\ : std_logic;
SIGNAL \inst1|state.T0~q\ : std_logic;
SIGNAL \inst1|next_state~9_combout\ : std_logic;
SIGNAL \inst1|next_state.T1~q\ : std_logic;
SIGNAL \inst1|state~12_combout\ : std_logic;
SIGNAL \inst1|state.T1~q\ : std_logic;
SIGNAL \inst1|ir_wr~0_combout\ : std_logic;
SIGNAL \inst1|ir_wr~q\ : std_logic;
SIGNAL \op1reg[2]~input_o\ : std_logic;
SIGNAL \program_counter|tempAddress[0]~0_combout\ : std_logic;
SIGNAL \inst1|reset~0_combout\ : std_logic;
SIGNAL \inst1|reset~q\ : std_logic;
SIGNAL \op1reg[0]~input_o\ : std_logic;
SIGNAL \op1reg[1]~input_o\ : std_logic;
SIGNAL \program_counter|Add0~53_sumout\ : std_logic;
SIGNAL \program_counter|Add0~54\ : std_logic;
SIGNAL \program_counter|Add0~49_sumout\ : std_logic;
SIGNAL \inst2|output_signal[2]~12_combout\ : std_logic;
SIGNAL \program_counter|PCreg|reg_out[9]~1_combout\ : std_logic;
SIGNAL \inst2|output_signal[1]~13_combout\ : std_logic;
SIGNAL \op1reg[4]~input_o\ : std_logic;
SIGNAL \op1reg[3]~input_o\ : std_logic;
SIGNAL \program_counter|Add0~50\ : std_logic;
SIGNAL \program_counter|Add0~45_sumout\ : std_logic;
SIGNAL \program_counter|Add0~46\ : std_logic;
SIGNAL \program_counter|Add0~41_sumout\ : std_logic;
SIGNAL \inst2|output_signal[4]~10_combout\ : std_logic;
SIGNAL \inst2|output_signal[3]~11_combout\ : std_logic;
SIGNAL \inst|memory~537_combout\ : std_logic;
SIGNAL \inst1|ir_reset~0_combout\ : std_logic;
SIGNAL \inst1|ir_reset~q\ : std_logic;
SIGNAL \instruction_r|inst_reg|reg_out[15]~0_combout\ : std_logic;
SIGNAL \inst|memory~535_combout\ : std_logic;
SIGNAL \inst1|ir_operand_set~0_combout\ : std_logic;
SIGNAL \inst1|ir_operand_set~q\ : std_logic;
SIGNAL \inst|memory~538_combout\ : std_logic;
SIGNAL \inst|memory~539_combout\ : std_logic;
SIGNAL \inst1|pc_mux_sel~1_combout\ : std_logic;
SIGNAL \inst|memory~550_combout\ : std_logic;
SIGNAL \inst|memory~541_combout\ : std_logic;
SIGNAL \inst|memory~536_combout\ : std_logic;
SIGNAL \inst1|pc_mux_sel~2_combout\ : std_logic;
SIGNAL \inst1|pc_mux_sel~0_combout\ : std_logic;
SIGNAL \inst1|pc_mux_sel~q\ : std_logic;
SIGNAL \inst2|output_signal[0]~14_combout\ : std_logic;
SIGNAL \inst|memory~534_combout\ : std_logic;
SIGNAL \op1reg[15]~input_o\ : std_logic;
SIGNAL \program_counter|PCreg|reg_out~0_combout\ : std_logic;
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
SIGNAL \program_counter|Add0~22\ : std_logic;
SIGNAL \program_counter|Add0~17_sumout\ : std_logic;
SIGNAL \program_counter|Add0~18\ : std_logic;
SIGNAL \program_counter|Add0~13_sumout\ : std_logic;
SIGNAL \program_counter|Add0~14\ : std_logic;
SIGNAL \program_counter|Add0~9_sumout\ : std_logic;
SIGNAL \program_counter|Add0~10\ : std_logic;
SIGNAL \program_counter|Add0~5_sumout\ : std_logic;
SIGNAL \program_counter|Add0~6\ : std_logic;
SIGNAL \program_counter|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|output_signal[14]~0_combout\ : std_logic;
SIGNAL \inst2|output_signal[13]~1_combout\ : std_logic;
SIGNAL \inst2|output_signal[12]~2_combout\ : std_logic;
SIGNAL \inst2|output_signal[11]~3_combout\ : std_logic;
SIGNAL \inst2|output_signal[10]~4_combout\ : std_logic;
SIGNAL \inst2|output_signal[9]~5_combout\ : std_logic;
SIGNAL \inst2|output_signal[8]~6_combout\ : std_logic;
SIGNAL \inst2|output_signal[7]~7_combout\ : std_logic;
SIGNAL \inst2|output_signal[6]~8_combout\ : std_logic;
SIGNAL \inst2|output_signal[5]~9_combout\ : std_logic;
SIGNAL \inst|memory~542_combout\ : std_logic;
SIGNAL \inst|memory~543_combout\ : std_logic;
SIGNAL \inst|memory~549_combout\ : std_logic;
SIGNAL \inst|memory~548_combout\ : std_logic;
SIGNAL \inst|memory~540_combout\ : std_logic;
SIGNAL \inst|memory~544_combout\ : std_logic;
SIGNAL \inst|memory~545_combout\ : std_logic;
SIGNAL \inst|memory~547_combout\ : std_logic;
SIGNAL \inst|memory~546_combout\ : std_logic;
SIGNAL \program_counter|PCreg|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|inst_reg|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|Rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \program_counter|tempAddress\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|pm_outdata\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|AM\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instruction_r|OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \instruction_r|Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|Rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \program_counter|ALT_INV_tempAddress\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst1|ALT_INV_pc_mux_sel~q\ : std_logic;
SIGNAL \inst1|ALT_INV_reset~q\ : std_logic;
SIGNAL \inst1|ALT_INV_ir_operand_set~q\ : std_logic;
SIGNAL \inst1|ALT_INV_ir_reset~q\ : std_logic;
SIGNAL \inst1|ALT_INV_ir_wr~q\ : std_logic;
SIGNAL \instruction_r|inst_reg|ALT_INV_reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \program_counter|PCreg|ALT_INV_reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|ALT_INV_Rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_r|ALT_INV_Rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_r|ALT_INV_Operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_r|ALT_INV_OP\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \instruction_r|ALT_INV_AM\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALT_INV_pc_mux_sel~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_pc_mux_sel~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state.T2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state.T0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state.T3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state.T1A~q\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state.T1~q\ : std_logic;
SIGNAL \inst|ALT_INV_memory~540_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_output_signal[0]~14_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1A~q\ : std_logic;
SIGNAL \inst1|ALT_INV_state.T1~q\ : std_logic;
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
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_in~input_o\ : std_logic;

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
incrAddr <= ww_incrAddr;
instruction <= ww_instruction;
Operand <= ww_Operand;
Rx <= ww_Rx;
Rz <= ww_Rz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\program_counter|ALT_INV_tempAddress\(9) <= NOT \program_counter|tempAddress\(9);
\program_counter|ALT_INV_tempAddress\(10) <= NOT \program_counter|tempAddress\(10);
\program_counter|ALT_INV_tempAddress\(11) <= NOT \program_counter|tempAddress\(11);
\program_counter|ALT_INV_tempAddress\(12) <= NOT \program_counter|tempAddress\(12);
\program_counter|ALT_INV_tempAddress\(13) <= NOT \program_counter|tempAddress\(13);
\program_counter|ALT_INV_tempAddress\(14) <= NOT \program_counter|tempAddress\(14);
\inst1|ALT_INV_pc_mux_sel~q\ <= NOT \inst1|pc_mux_sel~q\;
\inst1|ALT_INV_reset~q\ <= NOT \inst1|reset~q\;
\inst1|ALT_INV_ir_operand_set~q\ <= NOT \inst1|ir_operand_set~q\;
\inst1|ALT_INV_ir_reset~q\ <= NOT \inst1|ir_reset~q\;
\inst1|ALT_INV_ir_wr~q\ <= NOT \inst1|ir_wr~q\;
\instruction_r|inst_reg|ALT_INV_reg_out\(0) <= NOT \instruction_r|inst_reg|reg_out\(0);
\instruction_r|inst_reg|ALT_INV_reg_out\(1) <= NOT \instruction_r|inst_reg|reg_out\(1);
\instruction_r|inst_reg|ALT_INV_reg_out\(2) <= NOT \instruction_r|inst_reg|reg_out\(2);
\instruction_r|inst_reg|ALT_INV_reg_out\(3) <= NOT \instruction_r|inst_reg|reg_out\(3);
\instruction_r|inst_reg|ALT_INV_reg_out\(4) <= NOT \instruction_r|inst_reg|reg_out\(4);
\instruction_r|inst_reg|ALT_INV_reg_out\(5) <= NOT \instruction_r|inst_reg|reg_out\(5);
\instruction_r|inst_reg|ALT_INV_reg_out\(6) <= NOT \instruction_r|inst_reg|reg_out\(6);
\instruction_r|inst_reg|ALT_INV_reg_out\(7) <= NOT \instruction_r|inst_reg|reg_out\(7);
\instruction_r|inst_reg|ALT_INV_reg_out\(8) <= NOT \instruction_r|inst_reg|reg_out\(8);
\instruction_r|inst_reg|ALT_INV_reg_out\(9) <= NOT \instruction_r|inst_reg|reg_out\(9);
\instruction_r|inst_reg|ALT_INV_reg_out\(10) <= NOT \instruction_r|inst_reg|reg_out\(10);
\instruction_r|inst_reg|ALT_INV_reg_out\(11) <= NOT \instruction_r|inst_reg|reg_out\(11);
\instruction_r|inst_reg|ALT_INV_reg_out\(12) <= NOT \instruction_r|inst_reg|reg_out\(12);
\instruction_r|inst_reg|ALT_INV_reg_out\(13) <= NOT \instruction_r|inst_reg|reg_out\(13);
\instruction_r|inst_reg|ALT_INV_reg_out\(14) <= NOT \instruction_r|inst_reg|reg_out\(14);
\instruction_r|inst_reg|ALT_INV_reg_out\(15) <= NOT \instruction_r|inst_reg|reg_out\(15);
\program_counter|PCreg|ALT_INV_reg_out\(0) <= NOT \program_counter|PCreg|reg_out\(0);
\program_counter|PCreg|ALT_INV_reg_out\(1) <= NOT \program_counter|PCreg|reg_out\(1);
\program_counter|PCreg|ALT_INV_reg_out\(2) <= NOT \program_counter|PCreg|reg_out\(2);
\program_counter|PCreg|ALT_INV_reg_out\(3) <= NOT \program_counter|PCreg|reg_out\(3);
\program_counter|PCreg|ALT_INV_reg_out\(4) <= NOT \program_counter|PCreg|reg_out\(4);
\program_counter|PCreg|ALT_INV_reg_out\(15) <= NOT \program_counter|PCreg|reg_out\(15);
\instruction_r|ALT_INV_Rz\(0) <= NOT \instruction_r|Rz\(0);
\instruction_r|ALT_INV_Rz\(1) <= NOT \instruction_r|Rz\(1);
\instruction_r|ALT_INV_Rz\(2) <= NOT \instruction_r|Rz\(2);
\instruction_r|ALT_INV_Rz\(3) <= NOT \instruction_r|Rz\(3);
\instruction_r|ALT_INV_Rx\(0) <= NOT \instruction_r|Rx\(0);
\instruction_r|ALT_INV_Rx\(1) <= NOT \instruction_r|Rx\(1);
\instruction_r|ALT_INV_Rx\(2) <= NOT \instruction_r|Rx\(2);
\instruction_r|ALT_INV_Rx\(3) <= NOT \instruction_r|Rx\(3);
\instruction_r|ALT_INV_Operand\(0) <= NOT \instruction_r|Operand\(0);
\instruction_r|ALT_INV_Operand\(1) <= NOT \instruction_r|Operand\(1);
\instruction_r|ALT_INV_Operand\(2) <= NOT \instruction_r|Operand\(2);
\instruction_r|ALT_INV_Operand\(3) <= NOT \instruction_r|Operand\(3);
\instruction_r|ALT_INV_Operand\(4) <= NOT \instruction_r|Operand\(4);
\instruction_r|ALT_INV_Operand\(5) <= NOT \instruction_r|Operand\(5);
\instruction_r|ALT_INV_Operand\(6) <= NOT \instruction_r|Operand\(6);
\instruction_r|ALT_INV_Operand\(7) <= NOT \instruction_r|Operand\(7);
\instruction_r|ALT_INV_Operand\(8) <= NOT \instruction_r|Operand\(8);
\instruction_r|ALT_INV_Operand\(9) <= NOT \instruction_r|Operand\(9);
\instruction_r|ALT_INV_Operand\(10) <= NOT \instruction_r|Operand\(10);
\instruction_r|ALT_INV_Operand\(11) <= NOT \instruction_r|Operand\(11);
\instruction_r|ALT_INV_Operand\(12) <= NOT \instruction_r|Operand\(12);
\instruction_r|ALT_INV_Operand\(13) <= NOT \instruction_r|Operand\(13);
\instruction_r|ALT_INV_Operand\(14) <= NOT \instruction_r|Operand\(14);
\instruction_r|ALT_INV_Operand\(15) <= NOT \instruction_r|Operand\(15);
\instruction_r|ALT_INV_OP\(0) <= NOT \instruction_r|OP\(0);
\instruction_r|ALT_INV_OP\(1) <= NOT \instruction_r|OP\(1);
\instruction_r|ALT_INV_OP\(2) <= NOT \instruction_r|OP\(2);
\instruction_r|ALT_INV_OP\(3) <= NOT \instruction_r|OP\(3);
\instruction_r|ALT_INV_OP\(4) <= NOT \instruction_r|OP\(4);
\instruction_r|ALT_INV_OP\(5) <= NOT \instruction_r|OP\(5);
\instruction_r|ALT_INV_AM\(0) <= NOT \instruction_r|AM\(0);
\instruction_r|ALT_INV_AM\(1) <= NOT \instruction_r|AM\(1);
\inst1|ALT_INV_pc_mux_sel~2_combout\ <= NOT \inst1|pc_mux_sel~2_combout\;
\inst1|ALT_INV_pc_mux_sel~1_combout\ <= NOT \inst1|pc_mux_sel~1_combout\;
\inst1|ALT_INV_next_state.T2~q\ <= NOT \inst1|next_state.T2~q\;
\inst1|ALT_INV_next_state.T0~q\ <= NOT \inst1|next_state.T0~q\;
\inst1|ALT_INV_next_state.T3~q\ <= NOT \inst1|next_state.T3~q\;
\inst1|ALT_INV_next_state.T1A~q\ <= NOT \inst1|next_state.T1A~q\;
\inst1|ALT_INV_next_state.T1~q\ <= NOT \inst1|next_state.T1~q\;
\inst|ALT_INV_memory~540_combout\ <= NOT \inst|memory~540_combout\;
\inst2|ALT_INV_output_signal[0]~14_combout\ <= NOT \inst2|output_signal[0]~14_combout\;
\inst1|ALT_INV_state.T0~q\ <= NOT \inst1|state.T0~q\;
\inst1|ALT_INV_state.T3~q\ <= NOT \inst1|state.T3~q\;
\inst1|ALT_INV_state.T1A~q\ <= NOT \inst1|state.T1A~q\;
\inst1|ALT_INV_state.T1~q\ <= NOT \inst1|state.T1~q\;
\program_counter|ALT_INV_tempAddress\(0) <= NOT \program_counter|tempAddress\(0);
\program_counter|ALT_INV_tempAddress\(1) <= NOT \program_counter|tempAddress\(1);
\program_counter|ALT_INV_tempAddress\(2) <= NOT \program_counter|tempAddress\(2);
\program_counter|ALT_INV_tempAddress\(3) <= NOT \program_counter|tempAddress\(3);
\program_counter|ALT_INV_tempAddress\(4) <= NOT \program_counter|tempAddress\(4);
\program_counter|ALT_INV_tempAddress\(5) <= NOT \program_counter|tempAddress\(5);
\program_counter|ALT_INV_tempAddress\(6) <= NOT \program_counter|tempAddress\(6);
\program_counter|ALT_INV_tempAddress\(7) <= NOT \program_counter|tempAddress\(7);
\program_counter|ALT_INV_tempAddress\(8) <= NOT \program_counter|tempAddress\(8);
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
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_reset_in~input_o\ <= NOT \reset_in~input_o\;

\write_pc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ir_wr~q\,
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
	i => \instruction_r|AM\(1),
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
	i => \instruction_r|AM\(0),
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
	i => \inst1|ir_wr~q\,
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
	i => \inst1|ir_reset~q\,
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
	i => \inst1|ir_operand_set~q\,
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
	i => \program_counter|PCreg|reg_out\(15),
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
	i => \program_counter|PCreg|reg_out\(14),
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
	i => \program_counter|PCreg|reg_out\(13),
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
	i => \program_counter|PCreg|reg_out\(12),
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
	i => \program_counter|PCreg|reg_out\(11),
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
	i => \program_counter|PCreg|reg_out\(10),
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
	i => \program_counter|PCreg|reg_out\(9),
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
	i => \program_counter|PCreg|reg_out\(8),
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
	i => \program_counter|PCreg|reg_out\(7),
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
	i => \program_counter|PCreg|reg_out\(6),
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
	i => \program_counter|PCreg|reg_out\(5),
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
	i => \program_counter|PCreg|reg_out\(4),
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
	i => \program_counter|PCreg|reg_out\(3),
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
	i => \program_counter|PCreg|reg_out\(2),
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
	i => \program_counter|PCreg|reg_out\(1),
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
	i => \program_counter|PCreg|reg_out\(0),
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
	i => \inst1|reset~q\,
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
	i => \inst1|pc_mux_sel~q\,
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
	i => \instruction_r|OP\(5),
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
	i => \instruction_r|OP\(4),
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
	i => \instruction_r|OP\(3),
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
	i => \instruction_r|OP\(2),
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
	i => \instruction_r|OP\(1),
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
	i => \instruction_r|OP\(0),
	devoe => ww_devoe,
	o => \OPCode[0]~output_o\);

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
	i => \program_counter|tempAddress\(14),
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
	i => \program_counter|tempAddress\(13),
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
	i => \program_counter|tempAddress\(12),
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
	i => \program_counter|tempAddress\(11),
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
	i => \program_counter|tempAddress\(10),
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
	i => \program_counter|tempAddress\(9),
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
	i => \program_counter|tempAddress\(8),
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
	i => \program_counter|tempAddress\(7),
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
	i => \program_counter|tempAddress\(6),
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
	i => \program_counter|tempAddress\(5),
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
	i => \program_counter|tempAddress\(4),
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
	i => \program_counter|tempAddress\(3),
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
	i => \program_counter|tempAddress\(2),
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
	i => \program_counter|tempAddress\(1),
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
	i => \program_counter|tempAddress\(0),
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
	i => \instruction_r|Operand\(15),
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
	i => \instruction_r|Operand\(14),
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
	i => \instruction_r|Operand\(13),
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
	i => \instruction_r|Operand\(12),
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
	i => \instruction_r|Operand\(11),
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
	i => \instruction_r|Operand\(10),
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
	i => \instruction_r|Operand\(9),
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
	i => \instruction_r|Operand\(8),
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
	i => \instruction_r|Operand\(7),
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
	i => \instruction_r|Operand\(6),
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
	i => \instruction_r|Operand\(5),
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
	i => \instruction_r|Operand\(4),
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
	i => \instruction_r|Operand\(3),
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
	i => \instruction_r|Operand\(2),
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
	i => \instruction_r|Operand\(1),
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
	i => \instruction_r|Operand\(0),
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
	i => \instruction_r|Rx\(3),
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
	i => \instruction_r|Rx\(2),
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
	i => \instruction_r|Rx\(1),
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
	i => \instruction_r|Rx\(0),
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
	i => \instruction_r|Rz\(3),
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
	i => \instruction_r|Rz\(2),
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
	i => \instruction_r|Rz\(1),
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
	i => \instruction_r|Rz\(0),
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

\inst1|next_state.T1A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state.T1~q\,
	ena => \ALT_INV_reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|next_state.T1A~q\);

\inst1|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~13_combout\ = (!\reset_in~input_o\ & \inst1|next_state.T1A~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_in~input_o\,
	datab => \inst1|ALT_INV_next_state.T1A~q\,
	combout => \inst1|state~13_combout\);

\inst1|state.T1A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T1A~q\);

\inst1|next_state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state.T1A~q\,
	ena => \ALT_INV_reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|next_state.T2~q\);

\inst1|state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~16_combout\ = (!\reset_in~input_o\ & \inst1|next_state.T2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_in~input_o\,
	datab => \inst1|ALT_INV_next_state.T2~q\,
	combout => \inst1|state~16_combout\);

\inst1|state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T2~q\);

\inst1|next_state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state.T2~q\,
	ena => \ALT_INV_reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|next_state.T3~q\);

\inst1|state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~14_combout\ = (!\reset_in~input_o\ & \inst1|next_state.T3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_in~input_o\,
	datab => \inst1|ALT_INV_next_state.T3~q\,
	combout => \inst1|state~14_combout\);

\inst1|state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T3~q\);

\inst1|next_state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	ena => \ALT_INV_reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|next_state.T0~q\);

\inst1|state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~15_combout\ = (!\reset_in~input_o\ & \inst1|next_state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_in~input_o\,
	datab => \inst1|ALT_INV_next_state.T0~q\,
	combout => \inst1|state~15_combout\);

\inst1|state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.T0~q\);

\inst1|next_state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|next_state~9_combout\ = (!\inst1|state.T0~q\) # (\inst1|state.T3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_state.T3~q\,
	datab => \inst1|ALT_INV_state.T0~q\,
	combout => \inst1|next_state~9_combout\);

\inst1|next_state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|next_state~9_combout\,
	ena => \ALT_INV_reset_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|next_state.T1~q\);

\inst1|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|state~12_combout\ = (!\reset_in~input_o\ & \inst1|next_state.T1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_in~input_o\,
	datab => \inst1|ALT_INV_next_state.T1~q\,
	combout => \inst1|state~12_combout\);

\inst1|state.T1\ : dffeas
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
	q => \inst1|state.T1~q\);

\inst1|ir_wr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ir_wr~0_combout\ = ( \inst1|state.T3~q\ & ( (!\reset_in~input_o\ & ((\inst1|state.T1~q\) # (\inst1|ir_wr~q\))) ) ) # ( !\inst1|state.T3~q\ & ( (!\reset_in~input_o\ & (((\inst1|ir_wr~q\ & \inst1|state.T1A~q\)) # (\inst1|state.T1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001100010011000100110000001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ir_wr~q\,
	datab => \ALT_INV_reset_in~input_o\,
	datac => \inst1|ALT_INV_state.T1~q\,
	datad => \inst1|ALT_INV_state.T1A~q\,
	datae => \inst1|ALT_INV_state.T3~q\,
	combout => \inst1|ir_wr~0_combout\);

\inst1|ir_wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|ir_wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_wr~q\);

\op1reg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(2),
	o => \op1reg[2]~input_o\);

\program_counter|tempAddress[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|tempAddress[0]~0_combout\ = !\inst2|output_signal[0]~14_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_output_signal[0]~14_combout\,
	combout => \program_counter|tempAddress[0]~0_combout\);

\inst1|reset~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|reset~0_combout\ = ((!\inst1|state.T0~q\) # ((\inst1|reset~q\ & !\inst1|state.T1~q\))) # (\reset_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110011111111110111001111111111011100111111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_reset~q\,
	datab => \ALT_INV_reset_in~input_o\,
	datac => \inst1|ALT_INV_state.T1~q\,
	datad => \inst1|ALT_INV_state.T0~q\,
	combout => \inst1|reset~0_combout\);

\inst1|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reset~q\);

\program_counter|tempAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|tempAddress[0]~0_combout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(0));

\op1reg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(0),
	o => \op1reg[0]~input_o\);

\op1reg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(1),
	o => \op1reg[1]~input_o\);

\program_counter|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~53_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[0]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(0))) ) + ( (!\inst1|pc_mux_sel~q\ & ((\op1reg[1]~input_o\))) # (\inst1|pc_mux_sel~q\ & 
-- (\program_counter|tempAddress\(1))) ) + ( !VCC ))
-- \program_counter|Add0~54\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[0]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(0))) ) + ( (!\inst1|pc_mux_sel~q\ & ((\op1reg[1]~input_o\))) # (\inst1|pc_mux_sel~q\ & 
-- (\program_counter|tempAddress\(1))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \program_counter|ALT_INV_tempAddress\(1),
	datad => \ALT_INV_op1reg[0]~input_o\,
	dataf => \ALT_INV_op1reg[1]~input_o\,
	cin => GND,
	sumout => \program_counter|Add0~53_sumout\,
	cout => \program_counter|Add0~54\);

\program_counter|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~53_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(1));

\program_counter|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~49_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[2]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(2))) ) + ( GND ) + ( \program_counter|Add0~54\ ))
-- \program_counter|Add0~50\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[2]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(2))) ) + ( GND ) + ( \program_counter|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(2),
	datad => \ALT_INV_op1reg[2]~input_o\,
	cin => \program_counter|Add0~54\,
	sumout => \program_counter|Add0~49_sumout\,
	cout => \program_counter|Add0~50\);

\program_counter|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~49_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(2));

\inst2|output_signal[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[2]~12_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[2]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(2),
	datac => \ALT_INV_op1reg[2]~input_o\,
	combout => \inst2|output_signal[2]~12_combout\);

\program_counter|PCreg|reg_out[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|PCreg|reg_out[9]~1_combout\ = (\inst1|reset~q\) # (\inst1|ir_wr~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ir_wr~q\,
	datab => \inst1|ALT_INV_reset~q\,
	combout => \program_counter|PCreg|reg_out[9]~1_combout\);

\program_counter|PCreg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[2]~12_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(2));

\inst2|output_signal[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[1]~13_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[1]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(1),
	datac => \ALT_INV_op1reg[1]~input_o\,
	combout => \inst2|output_signal[1]~13_combout\);

\program_counter|PCreg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[1]~13_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(1));

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

\program_counter|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~45_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[3]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(3))) ) + ( GND ) + ( \program_counter|Add0~50\ ))
-- \program_counter|Add0~46\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[3]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(3))) ) + ( GND ) + ( \program_counter|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(3),
	datad => \ALT_INV_op1reg[3]~input_o\,
	cin => \program_counter|Add0~50\,
	sumout => \program_counter|Add0~45_sumout\,
	cout => \program_counter|Add0~46\);

\program_counter|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~45_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(3));

\program_counter|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~41_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[4]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(4))) ) + ( GND ) + ( \program_counter|Add0~46\ ))
-- \program_counter|Add0~42\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[4]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(4))) ) + ( GND ) + ( \program_counter|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(4),
	datad => \ALT_INV_op1reg[4]~input_o\,
	cin => \program_counter|Add0~46\,
	sumout => \program_counter|Add0~41_sumout\,
	cout => \program_counter|Add0~42\);

\program_counter|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~41_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(4));

\inst2|output_signal[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[4]~10_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[4]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(4),
	datac => \ALT_INV_op1reg[4]~input_o\,
	combout => \inst2|output_signal[4]~10_combout\);

\program_counter|PCreg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[4]~10_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(4));

\inst2|output_signal[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[3]~11_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[3]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(3),
	datac => \ALT_INV_op1reg[3]~input_o\,
	combout => \inst2|output_signal[3]~11_combout\);

\program_counter|PCreg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[3]~11_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(3));

\inst|memory~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~537_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( !\program_counter|PCreg|reg_out\(4) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(2) & (!\program_counter|PCreg|reg_out\(1) & 
-- (!\program_counter|PCreg|reg_out\(0) $ (\program_counter|PCreg|reg_out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000111111110000000010000000010000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~537_combout\);

\inst|pm_outdata[12]\ : dffeas
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
	q => \inst|pm_outdata\(12));

\inst1|ir_reset~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ir_reset~0_combout\ = ( \inst1|state.T0~q\ & ( ((\inst1|ir_reset~q\ & ((\inst1|state.T3~q\) # (\inst1|state.T1A~q\)))) # (\reset_in~input_o\) ) ) # ( !\inst1|state.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001101110111011111111111111111110011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ir_reset~q\,
	datab => \ALT_INV_reset_in~input_o\,
	datac => \inst1|ALT_INV_state.T1A~q\,
	datad => \inst1|ALT_INV_state.T3~q\,
	datae => \inst1|ALT_INV_state.T0~q\,
	combout => \inst1|ir_reset~0_combout\);

\inst1|ir_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|ir_reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_reset~q\);

\instruction_r|inst_reg|reg_out[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|inst_reg|reg_out[15]~0_combout\ = (\inst1|ir_reset~q\) # (\inst1|ir_wr~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ir_wr~q\,
	datab => \inst1|ALT_INV_ir_reset~q\,
	combout => \instruction_r|inst_reg|reg_out[15]~0_combout\);

\instruction_r|inst_reg|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(12),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(12));

\inst|memory~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~535_combout\ = ( !\program_counter|PCreg|reg_out\(4) & ( (!\program_counter|PCreg|reg_out\(3) & (((!\program_counter|PCreg|reg_out\(1)) # (!\program_counter|PCreg|reg_out\(0))))) # (\program_counter|PCreg|reg_out\(3) & 
-- (((!\program_counter|PCreg|reg_out\(1) & !\program_counter|PCreg|reg_out\(0))) # (\program_counter|PCreg|reg_out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011010101000000000000000011111100110101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(4),
	combout => \inst|memory~535_combout\);

\inst|pm_outdata[14]\ : dffeas
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
	q => \inst|pm_outdata\(14));

\instruction_r|inst_reg|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(14),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(14));

\instruction_r|AM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|AM\(0) = ( \instruction_r|AM\(0) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|AM\(0) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(14) ) ) ) # ( !\instruction_r|AM\(0) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(14),
	datae => \instruction_r|ALT_INV_AM\(0),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|AM\(0));

\inst1|ir_operand_set~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ir_operand_set~0_combout\ = ( \inst1|state.T1A~q\ & ( \inst1|state.T3~q\ & ( (!\reset_in~input_o\ & ((!\instruction_r|AM\(1) $ (!\instruction_r|AM\(0))) # (\inst1|ir_operand_set~q\))) ) ) ) # ( !\inst1|state.T1A~q\ & ( \inst1|state.T3~q\ & ( 
-- (\inst1|ir_operand_set~q\ & !\reset_in~input_o\) ) ) ) # ( \inst1|state.T1A~q\ & ( !\inst1|state.T3~q\ & ( (!\reset_in~input_o\ & ((!\instruction_r|AM\(1) $ (!\instruction_r|AM\(0))) # (\inst1|ir_operand_set~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011011110000000000001111000000000110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_AM\(1),
	datab => \instruction_r|ALT_INV_AM\(0),
	datac => \inst1|ALT_INV_ir_operand_set~q\,
	datad => \ALT_INV_reset_in~input_o\,
	datae => \inst1|ALT_INV_state.T1A~q\,
	dataf => \inst1|ALT_INV_state.T3~q\,
	combout => \inst1|ir_operand_set~0_combout\);

\inst1|ir_operand_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|ir_operand_set~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ir_operand_set~q\);

\instruction_r|OP[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|OP\(4) = ( \instruction_r|OP\(4) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|OP\(4) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(12) ) ) ) # ( !\instruction_r|OP\(4) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(12),
	datae => \instruction_r|ALT_INV_OP\(4),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|OP\(4));

\inst|memory~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~538_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(4) & ((\program_counter|PCreg|reg_out\(2)) # (\program_counter|PCreg|reg_out\(1))))) # 
-- (\program_counter|PCreg|reg_out\(0) & ((!\program_counter|PCreg|reg_out\(2) & ((!\program_counter|PCreg|reg_out\(4)))) # (\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(1))))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( 
-- (!\program_counter|PCreg|reg_out\(2) & ((!\program_counter|PCreg|reg_out\(0) & ((!\program_counter|PCreg|reg_out\(4)))) # (\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000001000000011110110000000111100000010000000111101100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~538_combout\);

\inst|pm_outdata[11]\ : dffeas
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
	q => \inst|pm_outdata\(11));

\instruction_r|inst_reg|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(11),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(11));

\instruction_r|OP[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|OP\(3) = ( \instruction_r|OP\(3) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|OP\(3) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(11) ) ) ) # ( !\instruction_r|OP\(3) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(11),
	datae => \instruction_r|ALT_INV_OP\(3),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|OP\(3));

\inst|memory~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~539_combout\ = ( \program_counter|PCreg|reg_out\(4) & ( (!\program_counter|PCreg|reg_out\(1) & (\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(2) & !\program_counter|PCreg|reg_out\(3)))) ) ) # ( 
-- !\program_counter|PCreg|reg_out\(4) & ( (!\program_counter|PCreg|reg_out\(3) & (!\program_counter|PCreg|reg_out\(1) & (!\program_counter|PCreg|reg_out\(0) $ (!\program_counter|PCreg|reg_out\(2))))) # (\program_counter|PCreg|reg_out\(3) & 
-- (((!\program_counter|PCreg|reg_out\(2)) # (\program_counter|PCreg|reg_out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100011110011001000000000000000101000111100110010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(4),
	combout => \inst|memory~539_combout\);

\inst|pm_outdata[10]\ : dffeas
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
	q => \inst|pm_outdata\(10));

\instruction_r|inst_reg|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(10),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(10));

\instruction_r|OP[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|OP\(2) = ( \instruction_r|OP\(2) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|OP\(2) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(10) ) ) ) # ( !\instruction_r|OP\(2) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(10),
	datae => \instruction_r|ALT_INV_OP\(2),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|OP\(2));

\inst1|pc_mux_sel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|pc_mux_sel~1_combout\ = ( \inst1|state.T3~q\ & ( \inst1|state.T1A~q\ & ( (\inst1|pc_mux_sel~q\ & (((!\instruction_r|AM\(0)) # (\instruction_r|AM\(1))) # (\reset_in~input_o\))) ) ) ) # ( !\inst1|state.T3~q\ & ( \inst1|state.T1A~q\ & ( 
-- ((!\reset_in~input_o\ & (!\instruction_r|AM\(1) $ (!\instruction_r|AM\(0))))) # (\inst1|pc_mux_sel~q\) ) ) ) # ( \inst1|state.T3~q\ & ( !\inst1|state.T1A~q\ & ( (\inst1|pc_mux_sel~q\ & (((!\instruction_r|AM\(0)) # (\instruction_r|AM\(1))) # 
-- (\reset_in~input_o\))) ) ) ) # ( !\inst1|state.T3~q\ & ( !\inst1|state.T1A~q\ & ( \inst1|pc_mux_sel~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010001010101011101110101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \ALT_INV_reset_in~input_o\,
	datac => \instruction_r|ALT_INV_AM\(1),
	datad => \instruction_r|ALT_INV_AM\(0),
	datae => \inst1|ALT_INV_state.T3~q\,
	dataf => \inst1|ALT_INV_state.T1A~q\,
	combout => \inst1|pc_mux_sel~1_combout\);

\inst|memory~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~550_combout\ = ( \program_counter|PCreg|reg_out\(2) & ( (\program_counter|PCreg|reg_out\(3) & ((!\program_counter|PCreg|reg_out\(4)) # ((\program_counter|PCreg|reg_out\(0) & \program_counter|PCreg|reg_out\(1))))) ) ) # ( 
-- !\program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(4) & (\program_counter|PCreg|reg_out\(3) & ((!\program_counter|PCreg|reg_out\(0)) # (!\program_counter|PCreg|reg_out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010001100100010001000000010001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(2),
	combout => \inst|memory~550_combout\);

\inst|pm_outdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|memory~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pm_outdata\(9));

\instruction_r|inst_reg|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(9),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(9));

\instruction_r|OP[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|OP\(1) = ( \instruction_r|OP\(1) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|OP\(1) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(9) ) ) ) # ( !\instruction_r|OP\(1) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(9),
	datae => \instruction_r|ALT_INV_OP\(1),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|OP\(1));

\inst|memory~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~541_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(1) & (!\program_counter|PCreg|reg_out\(4) & ((\program_counter|PCreg|reg_out\(0)) # (\program_counter|PCreg|reg_out\(2))))) # 
-- (\program_counter|PCreg|reg_out\(1) & (\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(0) & \program_counter|PCreg|reg_out\(4)))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(2) & 
-- (\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(1) & \program_counter|PCreg|reg_out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000011100000000000100000000001000000111000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~541_combout\);

\inst|pm_outdata[8]\ : dffeas
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
	q => \inst|pm_outdata\(8));

\instruction_r|inst_reg|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(8),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(8));

\instruction_r|OP[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|OP\(0) = ( \instruction_r|OP\(0) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|OP\(0) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(8) ) ) ) # ( !\instruction_r|OP\(0) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(8),
	datae => \instruction_r|ALT_INV_OP\(0),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|OP\(0));

\inst|memory~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~536_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( !\program_counter|PCreg|reg_out\(4) $ (((\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(0) & \program_counter|PCreg|reg_out\(1))))) ) ) # ( 
-- !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(2) & (!\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(1) & !\program_counter|PCreg|reg_out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000111111100000000110000000000000001111111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~536_combout\);

\inst|pm_outdata[13]\ : dffeas
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
	q => \inst|pm_outdata\(13));

\instruction_r|inst_reg|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(13),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(13));

\instruction_r|OP[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|OP\(5) = ( \instruction_r|OP\(5) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|OP\(5) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(13) ) ) ) # ( !\instruction_r|OP\(5) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(13),
	datae => \instruction_r|ALT_INV_OP\(5),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|OP\(5));

\inst1|pc_mux_sel~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|pc_mux_sel~2_combout\ = (!\instruction_r|OP\(1) & (!\instruction_r|OP\(0) & !\instruction_r|OP\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_r|ALT_INV_OP\(1),
	datab => \instruction_r|ALT_INV_OP\(0),
	datac => \instruction_r|ALT_INV_OP\(5),
	combout => \inst1|pc_mux_sel~2_combout\);

\inst1|pc_mux_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|pc_mux_sel~0_combout\ = ( \inst1|pc_mux_sel~1_combout\ & ( \inst1|pc_mux_sel~2_combout\ ) ) # ( !\inst1|pc_mux_sel~1_combout\ & ( \inst1|pc_mux_sel~2_combout\ & ( (\inst1|pc_mux_sel~q\ & ((!\instruction_r|OP\(4)) # ((!\instruction_r|OP\(3)) # 
-- (\instruction_r|OP\(2))))) ) ) ) # ( \inst1|pc_mux_sel~1_combout\ & ( !\inst1|pc_mux_sel~2_combout\ ) ) # ( !\inst1|pc_mux_sel~1_combout\ & ( !\inst1|pc_mux_sel~2_combout\ & ( \inst1|pc_mux_sel~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010100010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \instruction_r|ALT_INV_OP\(4),
	datac => \instruction_r|ALT_INV_OP\(3),
	datad => \instruction_r|ALT_INV_OP\(2),
	datae => \inst1|ALT_INV_pc_mux_sel~1_combout\,
	dataf => \inst1|ALT_INV_pc_mux_sel~2_combout\,
	combout => \inst1|pc_mux_sel~0_combout\);

\inst1|pc_mux_sel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|pc_mux_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pc_mux_sel~q\);

\inst2|output_signal[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[0]~14_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[0]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(0),
	datac => \ALT_INV_op1reg[0]~input_o\,
	combout => \inst2|output_signal[0]~14_combout\);

\program_counter|PCreg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[0]~14_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(0));

\inst|memory~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~534_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(4) & ((!\program_counter|PCreg|reg_out\(1)) # (\program_counter|PCreg|reg_out\(2))))) # 
-- (\program_counter|PCreg|reg_out\(0) & (\program_counter|PCreg|reg_out\(2) & (!\program_counter|PCreg|reg_out\(1) $ (\program_counter|PCreg|reg_out\(4))))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(2) & 
-- ((!\program_counter|PCreg|reg_out\(4) & ((!\program_counter|PCreg|reg_out\(1)))) # (\program_counter|PCreg|reg_out\(4) & (\program_counter|PCreg|reg_out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010000100011100000000111000000010100001000111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
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

\instruction_r|inst_reg|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(15),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(15));

\instruction_r|AM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|AM\(1) = ( \instruction_r|AM\(1) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|AM\(1) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(15) ) ) ) # ( !\instruction_r|AM\(1) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(15),
	datae => \instruction_r|ALT_INV_AM\(1),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|AM\(1));

\op1reg[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1reg(15),
	o => \op1reg[15]~input_o\);

\program_counter|PCreg|reg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|PCreg|reg_out~0_combout\ = (!\inst1|ir_wr~q\ & (\program_counter|PCreg|reg_out\(15))) # (\inst1|ir_wr~q\ & (((!\inst1|pc_mux_sel~q\ & \op1reg[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100010011100100010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ir_wr~q\,
	datab => \program_counter|PCreg|ALT_INV_reg_out\(15),
	datac => \inst1|ALT_INV_pc_mux_sel~q\,
	datad => \ALT_INV_op1reg[15]~input_o\,
	combout => \program_counter|PCreg|reg_out~0_combout\);

\program_counter|PCreg|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|PCreg|reg_out~0_combout\,
	sclr => \inst1|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(15));

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

\program_counter|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~37_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[5]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(5))) ) + ( GND ) + ( \program_counter|Add0~42\ ))
-- \program_counter|Add0~38\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[5]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(5))) ) + ( GND ) + ( \program_counter|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(5),
	datad => \ALT_INV_op1reg[5]~input_o\,
	cin => \program_counter|Add0~42\,
	sumout => \program_counter|Add0~37_sumout\,
	cout => \program_counter|Add0~38\);

\program_counter|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~37_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(5));

\program_counter|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~33_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[6]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(6))) ) + ( GND ) + ( \program_counter|Add0~38\ ))
-- \program_counter|Add0~34\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[6]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(6))) ) + ( GND ) + ( \program_counter|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(6),
	datad => \ALT_INV_op1reg[6]~input_o\,
	cin => \program_counter|Add0~38\,
	sumout => \program_counter|Add0~33_sumout\,
	cout => \program_counter|Add0~34\);

\program_counter|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~33_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(6));

\program_counter|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~29_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[7]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(7))) ) + ( GND ) + ( \program_counter|Add0~34\ ))
-- \program_counter|Add0~30\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[7]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(7))) ) + ( GND ) + ( \program_counter|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(7),
	datad => \ALT_INV_op1reg[7]~input_o\,
	cin => \program_counter|Add0~34\,
	sumout => \program_counter|Add0~29_sumout\,
	cout => \program_counter|Add0~30\);

\program_counter|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~29_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(7));

\program_counter|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~25_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[8]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(8))) ) + ( GND ) + ( \program_counter|Add0~30\ ))
-- \program_counter|Add0~26\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[8]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(8))) ) + ( GND ) + ( \program_counter|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(8),
	datad => \ALT_INV_op1reg[8]~input_o\,
	cin => \program_counter|Add0~30\,
	sumout => \program_counter|Add0~25_sumout\,
	cout => \program_counter|Add0~26\);

\program_counter|tempAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~25_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(8));

\program_counter|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~21_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[9]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(9))) ) + ( GND ) + ( \program_counter|Add0~26\ ))
-- \program_counter|Add0~22\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[9]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(9))) ) + ( GND ) + ( \program_counter|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(9),
	datad => \ALT_INV_op1reg[9]~input_o\,
	cin => \program_counter|Add0~26\,
	sumout => \program_counter|Add0~21_sumout\,
	cout => \program_counter|Add0~22\);

\program_counter|tempAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~21_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(9));

\program_counter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~17_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[10]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(10))) ) + ( GND ) + ( \program_counter|Add0~22\ ))
-- \program_counter|Add0~18\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[10]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(10))) ) + ( GND ) + ( \program_counter|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(10),
	datad => \ALT_INV_op1reg[10]~input_o\,
	cin => \program_counter|Add0~22\,
	sumout => \program_counter|Add0~17_sumout\,
	cout => \program_counter|Add0~18\);

\program_counter|tempAddress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~17_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(10));

\program_counter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~13_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[11]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(11))) ) + ( GND ) + ( \program_counter|Add0~18\ ))
-- \program_counter|Add0~14\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[11]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(11))) ) + ( GND ) + ( \program_counter|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(11),
	datad => \ALT_INV_op1reg[11]~input_o\,
	cin => \program_counter|Add0~18\,
	sumout => \program_counter|Add0~13_sumout\,
	cout => \program_counter|Add0~14\);

\program_counter|tempAddress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~13_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(11));

\program_counter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~9_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[12]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(12))) ) + ( GND ) + ( \program_counter|Add0~14\ ))
-- \program_counter|Add0~10\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[12]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(12))) ) + ( GND ) + ( \program_counter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(12),
	datad => \ALT_INV_op1reg[12]~input_o\,
	cin => \program_counter|Add0~14\,
	sumout => \program_counter|Add0~9_sumout\,
	cout => \program_counter|Add0~10\);

\program_counter|tempAddress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~9_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(12));

\program_counter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~5_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[13]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(13))) ) + ( GND ) + ( \program_counter|Add0~10\ ))
-- \program_counter|Add0~6\ = CARRY(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[13]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(13))) ) + ( GND ) + ( \program_counter|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(13),
	datad => \ALT_INV_op1reg[13]~input_o\,
	cin => \program_counter|Add0~10\,
	sumout => \program_counter|Add0~5_sumout\,
	cout => \program_counter|Add0~6\);

\program_counter|tempAddress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~5_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(13));

\program_counter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|Add0~1_sumout\ = SUM(( (!\inst1|pc_mux_sel~q\ & ((\op1reg[14]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(14))) ) + ( GND ) + ( \program_counter|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datac => \program_counter|ALT_INV_tempAddress\(14),
	datad => \ALT_INV_op1reg[14]~input_o\,
	cin => \program_counter|Add0~6\,
	sumout => \program_counter|Add0~1_sumout\);

\program_counter|tempAddress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \program_counter|Add0~1_sumout\,
	clrn => \inst1|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|tempAddress\(14));

\inst2|output_signal[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[14]~0_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[14]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(14),
	datac => \ALT_INV_op1reg[14]~input_o\,
	combout => \inst2|output_signal[14]~0_combout\);

\program_counter|PCreg|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[14]~0_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(14));

\inst2|output_signal[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[13]~1_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[13]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(13),
	datac => \ALT_INV_op1reg[13]~input_o\,
	combout => \inst2|output_signal[13]~1_combout\);

\program_counter|PCreg|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[13]~1_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(13));

\inst2|output_signal[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[12]~2_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[12]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(12),
	datac => \ALT_INV_op1reg[12]~input_o\,
	combout => \inst2|output_signal[12]~2_combout\);

\program_counter|PCreg|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[12]~2_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(12));

\inst2|output_signal[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[11]~3_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[11]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(11),
	datac => \ALT_INV_op1reg[11]~input_o\,
	combout => \inst2|output_signal[11]~3_combout\);

\program_counter|PCreg|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[11]~3_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(11));

\inst2|output_signal[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[10]~4_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[10]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(10),
	datac => \ALT_INV_op1reg[10]~input_o\,
	combout => \inst2|output_signal[10]~4_combout\);

\program_counter|PCreg|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[10]~4_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(10));

\inst2|output_signal[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[9]~5_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[9]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(9),
	datac => \ALT_INV_op1reg[9]~input_o\,
	combout => \inst2|output_signal[9]~5_combout\);

\program_counter|PCreg|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[9]~5_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(9));

\inst2|output_signal[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[8]~6_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[8]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(8),
	datac => \ALT_INV_op1reg[8]~input_o\,
	combout => \inst2|output_signal[8]~6_combout\);

\program_counter|PCreg|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[8]~6_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(8));

\inst2|output_signal[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[7]~7_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[7]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(7),
	datac => \ALT_INV_op1reg[7]~input_o\,
	combout => \inst2|output_signal[7]~7_combout\);

\program_counter|PCreg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[7]~7_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(7));

\inst2|output_signal[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[6]~8_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[6]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(6),
	datac => \ALT_INV_op1reg[6]~input_o\,
	combout => \inst2|output_signal[6]~8_combout\);

\program_counter|PCreg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[6]~8_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(6));

\inst2|output_signal[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|output_signal[5]~9_combout\ = (!\inst1|pc_mux_sel~q\ & ((\op1reg[5]~input_o\))) # (\inst1|pc_mux_sel~q\ & (\program_counter|tempAddress\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_pc_mux_sel~q\,
	datab => \program_counter|ALT_INV_tempAddress\(5),
	datac => \ALT_INV_op1reg[5]~input_o\,
	combout => \inst2|output_signal[5]~9_combout\);

\program_counter|PCreg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst2|output_signal[5]~9_combout\,
	sclr => \inst1|reset~q\,
	ena => \program_counter|PCreg|reg_out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|PCreg|reg_out\(5));

\inst|memory~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~542_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(1) & \program_counter|PCreg|reg_out\(0))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( 
-- (\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(1) & (!\program_counter|PCreg|reg_out\(0) & !\program_counter|PCreg|reg_out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000010000000100010000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~542_combout\);

\inst|pm_outdata[7]\ : dffeas
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
	q => \inst|pm_outdata\(7));

\inst|memory~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~543_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (\program_counter|PCreg|reg_out\(2) & ((!\program_counter|PCreg|reg_out\(1) & (\program_counter|PCreg|reg_out\(0) & !\program_counter|PCreg|reg_out\(4))) # 
-- (\program_counter|PCreg|reg_out\(1) & ((!\program_counter|PCreg|reg_out\(4)) # (\program_counter|PCreg|reg_out\(0)))))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(4) & 
-- (!\program_counter|PCreg|reg_out\(1) $ (\program_counter|PCreg|reg_out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000100110000000110010000000000000001001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~543_combout\);

\inst|pm_outdata[6]\ : dffeas
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
	q => \inst|pm_outdata\(6));

\inst|memory~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~549_combout\ = ( \program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(4) & (!\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(3) $ (!\program_counter|PCreg|reg_out\(1))))) ) ) # ( 
-- !\program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(4) & (!\program_counter|PCreg|reg_out\(1) & (!\program_counter|PCreg|reg_out\(3) $ (!\program_counter|PCreg|reg_out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000001000001000000000101000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(2),
	combout => \inst|memory~549_combout\);

\inst|pm_outdata[5]\ : dffeas
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
	q => \inst|pm_outdata\(5));

\inst|memory~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~548_combout\ = ( \program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(1) & ((!\program_counter|PCreg|reg_out\(4)) # (!\program_counter|PCreg|reg_out\(3))))) ) ) # ( 
-- !\program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(0) & ((!\program_counter|PCreg|reg_out\(4) & ((!\program_counter|PCreg|reg_out\(1)))) # (\program_counter|PCreg|reg_out\(4) & (!\program_counter|PCreg|reg_out\(3) & 
-- \program_counter|PCreg|reg_out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001000000111000000000000010100000010000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(2),
	combout => \inst|memory~548_combout\);

\inst|pm_outdata[4]\ : dffeas
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
	q => \inst|pm_outdata\(4));

\inst|memory~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~540_combout\ = (\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(1) & \program_counter|PCreg|reg_out\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	combout => \inst|memory~540_combout\);

\inst|memory~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~544_combout\ = ( \program_counter|PCreg|reg_out\(4) & ( (\inst|memory~540_combout\ & \program_counter|PCreg|reg_out\(3)) ) ) # ( !\program_counter|PCreg|reg_out\(4) & ( (!\program_counter|PCreg|reg_out\(3) & 
-- (((\program_counter|PCreg|reg_out\(0))) # (\program_counter|PCreg|reg_out\(2)))) # (\program_counter|PCreg|reg_out\(3) & (((\inst|memory~540_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100001111000000000000111101110111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datac => \inst|ALT_INV_memory~540_combout\,
	datad => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(4),
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

\inst|memory~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~545_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (\program_counter|PCreg|reg_out\(2) & ((!\program_counter|PCreg|reg_out\(1) & (\program_counter|PCreg|reg_out\(0) & !\program_counter|PCreg|reg_out\(4))) # 
-- (\program_counter|PCreg|reg_out\(1) & ((!\program_counter|PCreg|reg_out\(4)) # (\program_counter|PCreg|reg_out\(0)))))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(0) & ((!\program_counter|PCreg|reg_out\(1) & 
-- (\program_counter|PCreg|reg_out\(2) & \program_counter|PCreg|reg_out\(4))) # (\program_counter|PCreg|reg_out\(1) & (!\program_counter|PCreg|reg_out\(2) $ (!\program_counter|PCreg|reg_out\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001100000000100110000000100010000011000000001001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~545_combout\);

\inst|pm_outdata[2]\ : dffeas
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
	q => \inst|pm_outdata\(2));

\inst|memory~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~547_combout\ = ( \program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(4) & ((!\program_counter|PCreg|reg_out\(3) & (!\program_counter|PCreg|reg_out\(0) $ (!\program_counter|PCreg|reg_out\(1)))) # 
-- (\program_counter|PCreg|reg_out\(3) & (!\program_counter|PCreg|reg_out\(0) & !\program_counter|PCreg|reg_out\(1))))) ) ) # ( !\program_counter|PCreg|reg_out\(2) & ( (!\program_counter|PCreg|reg_out\(4) & ((!\program_counter|PCreg|reg_out\(0) & 
-- ((!\program_counter|PCreg|reg_out\(1)))) # (\program_counter|PCreg|reg_out\(0) & (!\program_counter|PCreg|reg_out\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000001000001010001000000010101000000010000010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(3),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(2),
	combout => \inst|memory~547_combout\);

\inst|pm_outdata[1]\ : dffeas
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
	q => \inst|pm_outdata\(1));

\inst|memory~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|memory~546_combout\ = ( \program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(0) & (((!\program_counter|PCreg|reg_out\(1) & !\program_counter|PCreg|reg_out\(4))))) # (\program_counter|PCreg|reg_out\(0) & 
-- (\program_counter|PCreg|reg_out\(2) & (\program_counter|PCreg|reg_out\(1) & \program_counter|PCreg|reg_out\(4)))) ) ) # ( !\program_counter|PCreg|reg_out\(3) & ( (!\program_counter|PCreg|reg_out\(1) & (((!\program_counter|PCreg|reg_out\(0) & 
-- \program_counter|PCreg|reg_out\(4))))) # (\program_counter|PCreg|reg_out\(1) & (!\program_counter|PCreg|reg_out\(2) & (!\program_counter|PCreg|reg_out\(0) $ (!\program_counter|PCreg|reg_out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001000110000000000000100000010110010001100000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|PCreg|ALT_INV_reg_out\(2),
	datab => \program_counter|PCreg|ALT_INV_reg_out\(0),
	datac => \program_counter|PCreg|ALT_INV_reg_out\(1),
	datad => \program_counter|PCreg|ALT_INV_reg_out\(4),
	datae => \program_counter|PCreg|ALT_INV_reg_out\(3),
	combout => \inst|memory~546_combout\);

\inst|pm_outdata[0]\ : dffeas
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
	q => \inst|pm_outdata\(0));

\instruction_r|Operand[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(15) = ( \instruction_r|Operand\(15) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(15) ) ) ) # ( !\instruction_r|Operand\(15) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(15) ) ) ) # ( 
-- \instruction_r|Operand\(15) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(15),
	datae => \instruction_r|ALT_INV_Operand\(15),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(15));

\instruction_r|Operand[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(14) = ( \instruction_r|Operand\(14) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(14) ) ) ) # ( !\instruction_r|Operand\(14) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(14) ) ) ) # ( 
-- \instruction_r|Operand\(14) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(14),
	datae => \instruction_r|ALT_INV_Operand\(14),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(14));

\instruction_r|Operand[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(13) = ( \instruction_r|Operand\(13) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(13) ) ) ) # ( !\instruction_r|Operand\(13) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(13) ) ) ) # ( 
-- \instruction_r|Operand\(13) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(13),
	datae => \instruction_r|ALT_INV_Operand\(13),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(13));

\instruction_r|Operand[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(12) = ( \instruction_r|Operand\(12) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(12) ) ) ) # ( !\instruction_r|Operand\(12) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(12) ) ) ) # ( 
-- \instruction_r|Operand\(12) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(12),
	datae => \instruction_r|ALT_INV_Operand\(12),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(12));

\instruction_r|Operand[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(11) = ( \instruction_r|Operand\(11) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(11) ) ) ) # ( !\instruction_r|Operand\(11) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(11) ) ) ) # ( 
-- \instruction_r|Operand\(11) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(11),
	datae => \instruction_r|ALT_INV_Operand\(11),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(11));

\instruction_r|Operand[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(10) = ( \instruction_r|Operand\(10) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(10) ) ) ) # ( !\instruction_r|Operand\(10) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(10) ) ) ) # ( 
-- \instruction_r|Operand\(10) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(10),
	datae => \instruction_r|ALT_INV_Operand\(10),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(10));

\instruction_r|Operand[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(9) = ( \instruction_r|Operand\(9) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(9) ) ) ) # ( !\instruction_r|Operand\(9) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(9) ) ) ) # ( 
-- \instruction_r|Operand\(9) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(9),
	datae => \instruction_r|ALT_INV_Operand\(9),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(9));

\instruction_r|Operand[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(8) = ( \instruction_r|Operand\(8) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(8) ) ) ) # ( !\instruction_r|Operand\(8) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(8) ) ) ) # ( 
-- \instruction_r|Operand\(8) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(8),
	datae => \instruction_r|ALT_INV_Operand\(8),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(8));

\instruction_r|inst_reg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(7),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(7));

\instruction_r|Operand[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(7) = ( \instruction_r|Operand\(7) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(7) ) ) ) # ( !\instruction_r|Operand\(7) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(7) ) ) ) # ( 
-- \instruction_r|Operand\(7) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(7),
	datae => \instruction_r|ALT_INV_Operand\(7),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(7));

\instruction_r|inst_reg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(6),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(6));

\instruction_r|Operand[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(6) = ( \instruction_r|Operand\(6) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(6) ) ) ) # ( !\instruction_r|Operand\(6) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(6) ) ) ) # ( 
-- \instruction_r|Operand\(6) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(6),
	datae => \instruction_r|ALT_INV_Operand\(6),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(6));

\instruction_r|inst_reg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(5),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(5));

\instruction_r|Operand[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(5) = ( \instruction_r|Operand\(5) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(5) ) ) ) # ( !\instruction_r|Operand\(5) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(5) ) ) ) # ( 
-- \instruction_r|Operand\(5) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(5),
	datae => \instruction_r|ALT_INV_Operand\(5),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(5));

\instruction_r|inst_reg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(4),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(4));

\instruction_r|Operand[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(4) = ( \instruction_r|Operand\(4) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(4) ) ) ) # ( !\instruction_r|Operand\(4) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(4) ) ) ) # ( 
-- \instruction_r|Operand\(4) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(4),
	datae => \instruction_r|ALT_INV_Operand\(4),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(4));

\instruction_r|inst_reg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(3),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(3));

\instruction_r|Operand[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(3) = ( \instruction_r|Operand\(3) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(3) ) ) ) # ( !\instruction_r|Operand\(3) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(3) ) ) ) # ( 
-- \instruction_r|Operand\(3) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(3),
	datae => \instruction_r|ALT_INV_Operand\(3),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(3));

\instruction_r|inst_reg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(2),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(2));

\instruction_r|Operand[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(2) = ( \instruction_r|Operand\(2) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(2) ) ) ) # ( !\instruction_r|Operand\(2) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(2) ) ) ) # ( 
-- \instruction_r|Operand\(2) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(2),
	datae => \instruction_r|ALT_INV_Operand\(2),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(2));

\instruction_r|inst_reg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(1),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(1));

\instruction_r|Operand[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(1) = ( \instruction_r|Operand\(1) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(1) ) ) ) # ( !\instruction_r|Operand\(1) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(1) ) ) ) # ( 
-- \instruction_r|Operand\(1) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(1),
	datae => \instruction_r|ALT_INV_Operand\(1),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(1));

\instruction_r|inst_reg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|pm_outdata\(0),
	sclr => \inst1|ir_reset~q\,
	ena => \instruction_r|inst_reg|reg_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_r|inst_reg|reg_out\(0));

\instruction_r|Operand[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Operand\(0) = ( \instruction_r|Operand\(0) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(0) ) ) ) # ( !\instruction_r|Operand\(0) & ( \inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(0) ) ) ) # ( 
-- \instruction_r|Operand\(0) & ( !\inst1|ir_operand_set~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(0),
	datae => \instruction_r|ALT_INV_Operand\(0),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Operand\(0));

\instruction_r|Rx[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rx\(3) = ( \instruction_r|Rx\(3) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rx\(3) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(3) ) ) ) # ( !\instruction_r|Rx\(3) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(3),
	datae => \instruction_r|ALT_INV_Rx\(3),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rx\(3));

\instruction_r|Rx[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rx\(2) = ( \instruction_r|Rx\(2) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rx\(2) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(2) ) ) ) # ( !\instruction_r|Rx\(2) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(2),
	datae => \instruction_r|ALT_INV_Rx\(2),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rx\(2));

\instruction_r|Rx[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rx\(1) = ( \instruction_r|Rx\(1) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rx\(1) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(1) ) ) ) # ( !\instruction_r|Rx\(1) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(1),
	datae => \instruction_r|ALT_INV_Rx\(1),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rx\(1));

\instruction_r|Rx[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rx\(0) = ( \instruction_r|Rx\(0) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rx\(0) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(0) ) ) ) # ( !\instruction_r|Rx\(0) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(0),
	datae => \instruction_r|ALT_INV_Rx\(0),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rx\(0));

\instruction_r|Rz[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rz\(3) = ( \instruction_r|Rz\(3) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rz\(3) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(7) ) ) ) # ( !\instruction_r|Rz\(3) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(7),
	datae => \instruction_r|ALT_INV_Rz\(3),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rz\(3));

\instruction_r|Rz[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rz\(2) = ( \instruction_r|Rz\(2) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rz\(2) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(6) ) ) ) # ( !\instruction_r|Rz\(2) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(6),
	datae => \instruction_r|ALT_INV_Rz\(2),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rz\(2));

\instruction_r|Rz[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rz\(1) = ( \instruction_r|Rz\(1) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rz\(1) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(5) ) ) ) # ( !\instruction_r|Rz\(1) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(5),
	datae => \instruction_r|ALT_INV_Rz\(1),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rz\(1));

\instruction_r|Rz[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction_r|Rz\(0) = ( \instruction_r|Rz\(0) & ( \inst1|ir_operand_set~q\ ) ) # ( \instruction_r|Rz\(0) & ( !\inst1|ir_operand_set~q\ & ( \instruction_r|inst_reg|reg_out\(4) ) ) ) # ( !\instruction_r|Rz\(0) & ( !\inst1|ir_operand_set~q\ & ( 
-- \instruction_r|inst_reg|reg_out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instruction_r|inst_reg|ALT_INV_reg_out\(4),
	datae => \instruction_r|ALT_INV_Rz\(0),
	dataf => \inst1|ALT_INV_ir_operand_set~q\,
	combout => \instruction_r|Rz\(0));

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


