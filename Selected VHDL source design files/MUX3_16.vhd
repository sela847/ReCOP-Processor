library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity MUX3_16 is
    port(
        mux_sel       : in  bit_2;
        input_a       : in  bit_16;
        input_b       : in  bit_16;
        input_c       : in  bit_16;
        output_signal : out bit_16
    );
end MUX3_16;

architecture arch of MUX3_16 is

begin
    process(mux_sel, input_a, input_b, input_c)
    begin
        case mux_sel is
            when "00" =>
                output_signal <= input_a;
            when "01" =>
                output_signal <= input_b;
            when others =>
                output_signal <= input_c;
        end case;
    end process;

end arch;
