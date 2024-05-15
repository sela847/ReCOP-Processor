LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;

entity PC is
    Port (
        inputAddress : in bit_16;
        write_pc     : in std_logic;
        rst          : in std_logic;
        instAddress : out bit_16;
        instAddressIncremented: out bit_16;
        clk : in std_logic
    );
end entity PC;

architecture a1 of PC is
    signal tempAddress : bit_16;
	 signal tempIncr : bit_16;

begin
    -- Process for PC operation, triggered by clock with asynchronous reset
   process(clk, rst)
	variable outputAddr : bit_16;
	variable incrAddr: bit_16;
    begin
        if (rst = '1') then
            tempAddress <= (others => '0');
				--tempIncr <= (others => '0');
				tempIncr <= x"0001";
        elsif (rising_edge(clk)) then
            if (write_pc = '1') then
                outputAddr:= inputAddress;
					 incrAddr := std_logic_vector((unsigned(outputAddr(15 downto 0)) + 1));
					 
					 tempAddress <= inputAddress;
					 tempIncr <= incrAddr;
            end if;
            -- Increment address by 1 (not by 4 as commented in your question)
        end if;
		 
    end process;
	 instAddress <= tempAddress;
	 instAddressIncremented <= tempIncr;
end architecture a1;
