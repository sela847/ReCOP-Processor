library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity instruction_reg is
	port(
		clk: in std_logic;
		ir_write: in std_logic;
		ir_reset: in std_logic;
		ir_in: in bit_16;
		ir_operand_set: in bit_1; -- From control unit, will tell the IR if needs to append the new insturcion coming in to the bottom operand bits
		
		-- Splitting up of the instruction into its parts
		
		
		AM: out bit_2;
		OP: out bit_6;
		Rz: out bit_4;
		Rx: out bit_4;
		Operand: out bit_16
		);
		
end instruction_reg;

architecture behave of instruction_reg is

signal instruction : bit_16;
signal prev : bit_16;

-- Register for containing the instructions
component reg_16 is
	port(
		signal clk : in std_logic;
		signal wr : in std_logic;
		signal rst: in std_logic;
		signal reg_input: in bit_16;
		signal reg_out: out bit_16
		);
end component;

begin

	inst_reg: reg_16 port map (
		clk => clk,
		wr => ir_write,
		rst => ir_reset,
		reg_input => ir_in,
		reg_out => instruction
		);
		
	-- instruction format
	-- ---------------------------------------------
	-- |AM(2)|OP(6)|Rz(4)|Rx(4)|ADDR/VAL/OTHERs(16)|
	-- ---------------------------------------------
	
	
	
		AM <= instruction(15 downto 14) when (ir_operand_set = '0');
		OP <= instruction(13 downto 8) when (ir_operand_set = '0');
		Rz <= instruction(7 downto 4) when (ir_operand_set = '0');
		Rx <= instruction(3 downto 0) when (ir_operand_set = '0');
		Operand <= instruction(15 downto 0) when (ir_operand_set = '1');
		
		

end behave;