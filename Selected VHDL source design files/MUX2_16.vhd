library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity MUX2_16 is
    port(
        mux_sel       : in  std_logic;
        input_a       : in  bit_16;
        input_b       : in  bit_16;
        output_signal : out bit_16
    );
end MUX2_16;

architecture arch of MUX2_16 is

begin
    process(mux_sel, input_a, input_b)
    begin
        case mux_sel is
            when '0' =>
                output_signal <= input_a;
            when others =>
                output_signal <= input_b;
        end case;
    end process;

end arch;
