library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity dprr is
port (
	clk: in bit_1;
	input_data_from_noc: in bit_32;
	output_data: out bit_32;
	dprr_w: in bit_1
	);

end dprr;

architecture behavior of dprr is
begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				if(dprr_w ='1') then
				output_data<=input_data_from_noc;
				end if;
			end if;
	end process;
end architecture behavior;