library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity reg_32 is
	port(
		signal clk : in std_logic;
		signal wr : in std_logic;
		signal rst: in std_logic;
		signal reg_input: in bit_32;
		signal reg_out: out bit_32
		);
end reg_32;

architecture behave of reg_32 is
begin
	process(clk) is
	begin
	
		if rising_edge(clk) then
			-- If reset is set to one, it has highest priority so must make the register = 0;, else we check if we write to the register and alter the output
			if (rst = '1') then
				reg_out <=(others=>'0');
			elsif (wr = '1') then
				reg_out <= reg_input;
			end if;
		end if;
	end process;
end behave;