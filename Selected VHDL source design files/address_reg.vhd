LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
entity address_reg is
    Port (
        operandInput : in bit_16;
		  Ry		: in bit_16;
        AR_sel: in std_logic;
		  rst				: in STD_LOGIC;
        clk : in STD_LOGIC;
		  wr_AR: in std_logic;
		  
		  dm_addr : out bit_16
    );
end entity address_reg;


architecture behave of address_reg is

begin

end behave;