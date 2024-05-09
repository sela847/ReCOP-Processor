library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity dpcr is
port (
	clk: in bit_1;
	input_data: in bit_32;
	output_data: out bit_32;
	dpcr_w: in bit_1
	);

end dpcr;

architecture behavior of dpcr is

begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				if(dpcr_w ='1') then
				output_data<=input_data;
				end if;
			end if;
	end process;
end architecture behavior;