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

signal t_Operand : bit_16;
signal  t_Am: bit_2;
signal t_OP: bit_6;
signal t_Rz: bit_4;
signal t_Rx: bit_4;
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
--
--	inst_reg: reg_16 port map (
--		clk => clk,
--		wr => ir_write,
--		rst => ir_reset,
--		reg_input => ir_in,
--		reg_out => instruction
--		);
		
	-- instruction format
	-- ---------------------------------------------
	-- |AM(2)|OP(6)|Rz(4)|Rx(4)|ADDR/VAL/OTHERs(16)|
	-- ---------------------------------------------
	
		process(clk, ir_write, ir_operand_set)
		variable v_Operand : bit_16;
		variable  v_Am: bit_2;
		variable v_OP: bit_6;
		variable v_Rz: bit_4;
		variable v_Rx: bit_4;
		begin
		if(rising_edge(clk)) then
			if (ir_write = '1') then
				if (ir_operand_set = '1') then
					v_Operand := ir_in(15 downto 0);
					t_operand <= v_operand;
				else
					v_AM := ir_in(15 downto 14);
					v_OP := ir_in(13 downto 8);
					v_Rz := ir_in(7 downto 4);
					v_Rx := ir_in(3 downto 0);
					
					t_AM <= v_AM;
					T_OP <= V_OP;
					T_RZ <= V_RZ;
					T_RX <= V_RX;
					
				end if;
			end if;
		end if;
		end process;
		
--		AM <= instruction(15 downto 14) when (ir_operand_set = '0');
--		OP <= instruction(13 downto 8) when (ir_operand_set = '0');
--		Rz <= instruction(7 downto 4) when (ir_operand_set = '0');
--		Rx <= instruction(3 downto 0) when (ir_operand_set = '0');
--		Operand <= instruction(15 downto 0) when (ir_operand_set = '1');
--		
		AM <= t_AM;
		OP <= T_OP;
		RZ <= T_RZ;
		RX <= T_RX;
		OPERAND <= T_OPERAND;

end behave;