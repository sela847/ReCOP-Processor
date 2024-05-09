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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
-- CREATED		"Thu May 09 15:44:13 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY pc_test IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		write_pc :  IN  STD_LOGIC;
		addr :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		incrAddr :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		instAddr :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END pc_test;

ARCHITECTURE bdf_type OF pc_test IS 

COMPONENT pc
	PORT(write_pc : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 inputAddress : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 instAddress : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 instAddressIncremented : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : pc
PORT MAP(write_pc => write_pc,
		 rst => reset,
		 clk => clk,
		 inputAddress => addr,
		 instAddress => instAddr,
		 instAddressIncremented => incrAddr);


END bdf_type;