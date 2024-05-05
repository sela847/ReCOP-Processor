library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;



entity instr_combine is
	port(
		signal input_instr : in bit_16;
		signal output_instr : out bit_32
		);
end instr_combine;

architecture behave of instr_combine is
signal temp_half : bit_16;
signal get_next_inst : std_logic := '0';
begin
	process(input_instr)
	begin
		if (get_next_inst = '0') then
			get_next_inst <= '1';
			temp_half <= input_instr;
		else
			get_next_inst <= '0';
			output_instr <= input_instr & temp_half;
		end if;
	
	end process;
end behave;

