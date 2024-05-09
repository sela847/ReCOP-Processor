
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
entity PC is
    Port (
        inputAddress : in bit_16;
		  write_pc		: in std_logic;
		  rst				: in STD_LOGIC;
        instAddress : out bit_16;
		  instAddressIncremented: out bit_16;
        clk : in STD_LOGIC
    );
end entity PC;

architecture a1 of PC is
    signal tempAddress : STD_LOGIC_VECTOR(14 downto 0);
	 
	 --signal reg_write : std_logic := '0';
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
	
	PCreg: reg_16 port map (
	clk => clk,
	wr => write_pc,
	rst => rst,
	reg_input => inputAddress,
	reg_out => instAddress
	);
    -- Process triggered by the clock
    process(clk)
    begin
		  if(rst = '1') then
		      tempAddress<=(others=>'0');
		  elsif (rising_edge(clk)) then
            -- Increment the input address by 4 and store in a temporary signal
            tempAddress <= std_logic_vector((unsigned(inputAddress(14 downto 0)) + 1));
        end if;
    end process;
	 instAddressIncremented <= '0' & tempAddress;
    
end architecture a1;
