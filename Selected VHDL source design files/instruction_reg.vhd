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
		ir_in: in bit_32;
		
		-- Splitting up of the instruction into its parts
		
		
		AM: out bit_2;
		OP: out bit_6;
		Rz: out bit_4;
		Rx: out bit_4;
		Operand: out bit_16
		);
		
end instruction_reg;

architecture behave of instruction_reg is

signal instruction : bit_32;

-- Register for containing the instructions
component reg_32 is
	port(
		signal clk : in std_logic;
		signal wr : in std_logic;
		signal rst: in std_logic;
		signal reg_input: in bit_32;
		signal reg_out: out bit_32
		);
end component;

begin

	inst_reg: reg_32 port map (
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
	
	AM <= instruction(31 downto 30);
	OP <= instruction(29 downto 24);
	Rz <= instruction(23 downto 20);
	Rx <= instruction(19 downto 16);
	Operand <= instruction(15 downto 0);

end behave;