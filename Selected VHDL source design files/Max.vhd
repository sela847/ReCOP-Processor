library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity Max is
port (
	clk: in std_logic;
	Rz : in bit_16;
	Rx : in bit_16;
	output : out bit_16
	);

end Max;

architecture behavior of Max is

begin

process(clk)
variable larger: bit_16;
begin
	if(rising_edge(clk)) then
		if(Rz>Rx) then
			larger := Rz;
		else
			larger:= Rx;
		end if;
	end if;

output <= larger;
end process;

end architecture behavior;