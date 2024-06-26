library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;

entity control_unit is
    port(
        clk: in std_logic;
        z_flag: in bit_1;
        Opcode: in bit_6;
        am: in bit_2;
        rst: in bit_1;
        
        --read from PC counter and convert PC address into an instruction
        
        --PC
        write_pc: out bit_1;
        reset: out bit_1;
        
        --PC Mux
        pc_mux_sel: out bit_1;
        
        --Instruction Reg
        ir_wr: out bit_1;
        ir_reset: out bit_1;
        ir_operand_set: out bit_1;
        
        --ALU
        alu_op1_sel: out bit_2;
        alu_op2_sel: out bit_2;
        alu_op: out bit_3;
        alu_carry: out bit_1;
        clr_z_flag: out bit_1;
        
        --data mem
        data_mem_wren: out bit_1;
        
        --regfile
        init: out bit_1;
        ld_r: out bit_1;
        dprr_res: out bit_1;
        dprr_res_reg: out bit_1;
        dprr_wren: out bit_1;
        rf_input_sel: out bit_3;
        
        --registers
        op1_wr: out bit_1;
        op2_wr: out bit_1;
        
        dpcr_lsb_sel: out bit_1;
        dpcr_wr: out bit_1;
        sop_wr: out bit_1;
        irq_wr: out bit_1;
        irq_clr: out bit_1;
        result_wren: out bit_1;
        result: out bit_1;
        
       
        
        currentSignal: out bit_3
    );
end control_unit;

architecture behavior of control_unit is
    type state_trans is (T0, T1, T1A, T2, T3);
    signal state: state_trans := T0;
    signal next_state: state_trans := T0;
begin
    SwitchStates: process(clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= T0;
            else
                state <= next_state;
            end if;    
        end if;
    end process SwitchStates;
    
    VariableChanging: process(state, am, Opcode, z_flag) is
    begin
        case state is
            when T0 =>
                next_state <= T1;
                --PC
                write_pc <= '0';
                reset <= '1';
                pc_mux_sel <= '1';
                
                --Instruction Reg
                ir_wr <= '0';
                ir_reset <= '1';
                ir_operand_set <= '0';
                
                --ALU
                alu_op1_sel <= "00";
                alu_op2_sel <= "00";
                alu_op <= "000";
                alu_carry <= '0';
                clr_z_flag <= '1';
                
                --data mem
                data_mem_wren <= '0';
                
                --regfile
                rf_input_sel <= "000";
                init <= '1';
                ld_r <= '0';
                dprr_res <= '0';
                dprr_res_reg <= '0';
                dprr_wren <= '0';
                
                --registers
                op1_wr <= '0';
                op2_wr <= '0';
                dpcr_lsb_sel <= '0';
                dpcr_wr <= '0';
                sop_wr <= '0';
                irq_wr <= '0';
                irq_clr <= '1';
                result_wren <= '0';
                result <= '0';
                
                
            when T1 =>
                rf_input_sel <= "000";
                --registers
                op1_wr <= '0';
                op2_wr <= '0';
                
                --read from PC counter and convert PC address into an instruction
                --PC
                write_pc <= '1';
                reset <= '0';
                
                --Instruction Reg
                ir_wr <= '1';
                ir_reset <= '0';
                ir_operand_set <= '0';
                
                --ALU
                alu_op1_sel <= "00";
                alu_op2_sel <= "00";
                alu_op <= "100";
                alu_carry <= '0';
                clr_z_flag <= '0';
                
                --data mem
                data_mem_wren <= '0';
                
                --regfile
                init <= '0';
                ld_r <= '0';
                dprr_res <= '0';
                dprr_res_reg <= '0';
                dprr_wren <= '0';
                
                --registers
                dpcr_lsb_sel <= '0';
                dpcr_wr <= '0';
                sop_wr <= '0';
                irq_wr <= '0';
                irq_clr <= '0';
                result_wren <= '0';
                result <= '0';
                
                next_state <= T1A;
                pc_mux_sel <= '1';
                
            when T1A =>
                rf_input_sel <= "000";
                --registers
                op1_wr <= '0';
                op2_wr <= '0';
                --PC
                pc_mux_sel <= '1';
                write_pc <= '0';
                reset <= '0';
                
                --Instruction Reg
                ir_wr <= '0';
                ir_operand_set <= '0';
                ir_reset <= '0';
                
                --ALU
                alu_op1_sel <= "00";
                alu_op2_sel <= "00";
                alu_op <= "100";
                alu_carry <= '0';
                clr_z_flag <= '0';
                
                --data mem
                data_mem_wren <= '0';
                
                --regfile
                init <= '0';
                ld_r <= '0';
                dprr_res <= '0';
                dprr_res_reg <= '0';
                dprr_wren <= '0';
                
                --registers
                dpcr_lsb_sel <= '0';
                dpcr_wr <= '0';
                sop_wr <= '0';
                irq_wr <= '0';
                irq_clr <= '0';
                result_wren <= '0';
                result <= '0';
                
              
                
                if am = "01" or am = "10" then
                    write_pc <= '1';
                    ir_operand_set <= '1';
                    -- set pc_mux to output pc+1
                    pc_mux_sel <= '1';
                    ir_wr <= '1';
                end if;
                
                next_state <= T2;
                
            when T2 =>
                rf_input_sel <= "000";
                --registers
                op1_wr <= '0';
                op2_wr <= '0';
                
                --PC
                pc_mux_sel <= '1';
                write_pc <= '0';
                reset <= '0';
                
                --Instruction Reg
                ir_wr <= '0';
                ir_operand_set <= '0';
                ir_reset <= '0';
                
                --ALU
                alu_op1_sel <= "00";
                alu_op2_sel <= "00";
                alu_op <= "100";
                alu_carry <= '0';
                clr_z_flag <= '0';
                
                --data mem
                data_mem_wren <= '0';
                
                --regfile
                init <= '0';
                ld_r <= '0';
                dprr_res <= '0';
                dprr_res_reg <= '0';
                dprr_wren <= '0';
                
                --registers
                dpcr_lsb_sel <= '0';
                dpcr_wr <= '0';
                sop_wr <= '0';
                irq_wr <= '0';
                irq_clr <= '0';
                result_wren <= '0';
                result <= '0';
                
                case am is
                    --am_inherent
                    when "00" =>
                        op1_wr <= '0';
                        op2_wr <= '0';
                    --am_immediate
                    when "01" =>
                        if Opcode = "000000" then -- ldr
									 ld_r<='1';
                            alu_op1_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                        elsif Opcode = "000010" then -- str
                            alu_op1_sel <= "01"; -- ir_operand
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "011000" then -- jmp
                            alu_op1_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                        elsif Opcode = "001000" then -- and
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "001100" then -- or
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "111000" then -- add
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "000100" then -- sub
                            alu_op1_sel <= "01"; -- ir_operand
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "000011" then -- subv
                            alu_op1_sel <= "01"; -- ir_operand
                            alu_op2_sel <= "00"; -- rx
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "010100" then -- sz
                            alu_op1_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                        elsif Opcode = "101000" then -- datacall
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "011100" then -- present
                            alu_op1_sel <= "01"; -- ir_operand
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
									 alu_op <= alu_checkZero;
                        end if;
                    --am_direct
                    when "10" =>
                        if Opcode = "000000" then -- ldr
                            alu_op2_sel <= "01"; -- ir_operand
                            op2_wr <= '1';
                        elsif Opcode = "000010" then -- str
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "01"; -- ir_operand
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "011101" then -- strpc
                            alu_op1_sel <= "11"; -- pc
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
                        end if;
                    --am_register
                    when "11" =>
                        if Opcode = "001000" then -- and
                            alu_op1_sel <= "10"; -- rz
                            alu_op2_sel <= "00"; -- rx
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "001100" then -- or
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "111000" then -- add
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "000000" then -- ldr
                            alu_op2_sel <= "00"; -- rx
                            op2_wr <= '1';
                        elsif Opcode = "000010" then -- str
                            alu_op1_sel <= "00"; -- rx
                            alu_op2_sel <= "10"; -- rz
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "011000" then -- jmp
                            alu_op1_sel <= "00"; -- rx
                            op1_wr <= '1';
                        elsif Opcode = "101000" then -- datacall
                            alu_op1_sel <= "10"; -- rz
                            alu_op2_sel <= "00"; -- rx
                            op1_wr <= '1';
                            op2_wr <= '1';
                        elsif Opcode = "111010" then -- SSOP
                            alu_op1_sel <= "00"; -- rx
                            op1_wr <= '1';
								elsif Opcode = "110111" then
									 
                        end if;
                    when others =>
								   --PC
									 write_pc <= '0';
									 reset <= '1';
									 pc_mux_sel <= '1';
									 
									 --Instruction Reg
									 ir_wr <= '0';
									 ir_reset <= '1';
									 ir_operand_set <= '0';
									 
									 --ALU
									 alu_op1_sel <= "00";
									 alu_op2_sel <= "00";
									 alu_op <= "100";
									 alu_carry <= '0';
									 clr_z_flag <= '0';
									 
									 --data mem
									 data_mem_wren <= '0';
									 
									 --regfile
									 rf_input_sel <= "000";
									 init <= '0';
									 ld_r <= '0';
									 dprr_res <= '0';
									 dprr_res_reg <= '0';
									 dprr_wren <= '0';
									 
									 --registers
									 op1_wr <= '0';
									 op2_wr <= '0';
									 dpcr_lsb_sel <= '0';
									 dpcr_wr <= '0';
									 sop_wr <= '0';
									 irq_wr <= '0';
									 irq_clr <= '1';
									 result_wren <= '0';
									 result <= '0';
									 
									 
                end case;
                next_state <= T3;
                
            when T3 =>
                rf_input_sel <= "000";
                --registers
                op1_wr <= '0';
                op2_wr <= '0';
                --PC
                pc_mux_sel <= '1';
                write_pc <= '0';
                reset <= '0';
                
                --Instruction Reg
                ir_wr <= '0';
                ir_operand_set <= '0';
                ir_reset <= '0';
                
                --ALU
                alu_op1_sel <= "00";
                alu_op2_sel <= "00";
                alu_op <= "100";
                alu_carry <= '0';
                clr_z_flag <= '0';
                
                --data mem
                data_mem_wren <= '0';
                
                --regfile
                init <= '0';
                ld_r <= '0';
                dprr_res <= '0';
                dprr_res_reg <= '0';
                dprr_wren <= '0';
                
                --registers
                dpcr_lsb_sel <= '0';
                dpcr_wr <= '0';
                sop_wr <= '0';
                irq_wr <= '0';
                irq_clr <= '0';
                result_wren <= '0';
                result <= '0';
                
                
                
                case am is
                    --am_inherent
                    when "00" =>
                        if Opcode = "010000" then -- clr z
                            clr_z_flag <= '1';
                        end if;
                    --am_immediate
                    when "01" =>
                        if Opcode = "000000" then -- ldr
                            rf_input_sel <= "100";
                        elsif Opcode = "000010" then -- store
                            data_mem_wren <= '1'; -- DM[OP2] <= OP1
                        elsif Opcode = "011000" then -- jmp
                            -- when jump, set PC to OP
									 write_pc<='1';
                            pc_mux_sel <= '0'; 
                        elsif Opcode = "001000" then -- and
                            ld_r <= '1';
                            alu_op <= alu_and;
                            rf_input_sel <= "011"; -- RZ = ALUOUT
                        elsif Opcode = "001100" then -- or
                            ld_r <= '1';
                            alu_op <= alu_or;
                            rf_input_sel <= "011"; -- RZ = ALUOUT
                        elsif Opcode = "111000" then -- add
                           ld_r <= '1';
                            alu_op <= alu_add;
                            rf_input_sel <= "011"; -- RZ = ALUOUT
                        elsif Opcode = "000100" then -- sub
                            alu_op <= alu_sub;
                            -- not assigned a stored variable
                            -- rf_input_sel <= "011"; -- RZ = ALUOUT
                        elsif Opcode = "000011" then -- subv
                            ld_r <= '1';
                            alu_op <= alu_sub;
                            rf_input_sel <= "011"; -- RZ = ALUOUT
                        elsif Opcode = "011100" then -- present
                            ld_r <= '0'; -- Don't load anything
                            
                            if z_flag = '1' then
										  write_pc <= '1';
                                pc_mux_sel <= '0';
                            else
                                pc_mux_sel <= '1';
                            end if;
                        elsif Opcode = "101000" then -- datacall immediate
                            -- DPCR <= OP1 & OP2
                            dpcr_lsb_sel <= '1'; -- Becomes Rz & OPERAND
                            dpcr_wr <= '1';
                            -- DPRR(1) <= '0'
                            irq_clr <= '1';
                            pc_mux_sel <= '1';
                        elsif Opcode = "010100" then -- SZ
									 
                            if z_flag = '1' then
										  write_pc <= '1';
                                pc_mux_sel <= '0';
                            else
                                pc_mux_sel <= '1';
                            end if;
                        end if;
                    --am_direct
                    when "10" =>
                        if Opcode = "000000" then -- ldr
                            ld_r<= '1';
                            data_mem_wren <= '0';
                            rf_input_sel <= "111"; -- RZ = DM[OP2]
                            pc_mux_sel <= '1';
                        elsif Opcode = "000010" then -- str
                            data_mem_wren <= '1';
                            -- DM[OP2] <= OP1
                            pc_mux_sel <= '1';
                        elsif Opcode = "011101" then -- strpc
                            --DM[OP2] <= OP1
                            data_mem_wren <= '1';
                            pc_mux_sel <= '1';
                        end if;
                    --am_register
                    when "11" =>
                        if Opcode = "001000" then -- and
                            -- RZ <= ALU OP1 AND ALU OP2
									 ld_r<='1';
                            alu_op <= alu_and;
                            rf_input_sel <= "011";
                            pc_mux_sel <= '1';
                        elsif Opcode = "001100" then -- or
									 ld_r<='1';
                            pc_mux_sel <= '1';
                            alu_op <= alu_or;
                            rf_input_sel <= "011";
                        elsif Opcode = "111000" then -- add
									 ld_r<='1';
                            pc_mux_sel <= '1';
                            alu_op <= alu_add;
                            rf_input_sel <= "011";
                        elsif Opcode = "000000" then -- ldr
                            ld_r <= '1';
                            data_mem_wren <= '0';
                            rf_input_sel <= "111"; -- RZ = DM[OP2]
                            pc_mux_sel <= '1';
                        elsif Opcode = "000010" then -- str
                            data_mem_wren <= '1';
                            pc_mux_sel <= '1';
                        elsif Opcode = "011000" then -- jmp
									 write_pc<='1';
                            pc_mux_sel <= '0'; -- set to OP1
                        elsif Opcode = "101000" then -- datacall
                            -- DPCR <= OP1 & OP2
                            dpcr_lsb_sel <= '0'; -- Becomes Rz & R7
                            dpcr_wr <= '1';
                            -- DPRR(1) <= '0'
                            irq_clr <= '1';
                            pc_mux_sel <= '1';
                        elsif Opcode = "110111" then -- LSIP
                            -- RZ <= SIP
                           ld_r <= '1';
                           rf_input_sel <= "101";
                        elsif Opcode = "111010" then -- SSOP
                            -- Set SOP to OP1
                            sop_wr <= '1';
                            pc_mux_sel <= '1';
                        end if;
                    when others =>
								   --PC
									 write_pc <= '0';
									 reset <= '1';
									 pc_mux_sel <= '1';
									 
									 --Instruction Reg
									 ir_wr <= '0';
									 ir_reset <= '1';
									 ir_operand_set <= '0';
									 
									 --ALU
									 alu_op1_sel <= "00";
									 alu_op2_sel <= "00";
									 alu_op <= "100";
									 alu_carry <= '0';
									 clr_z_flag <= '0';
									 
									 --data mem
									 data_mem_wren <= '0';
									 
									 --regfile
									 rf_input_sel <= "000";
									 init <= '0';
									 ld_r <= '0';
									 dprr_res <= '0';
									 dprr_res_reg <= '0';
									 dprr_wren <= '0';
									 
									 --registers
									 op1_wr <= '0';
									 op2_wr <= '0';
									 dpcr_lsb_sel <= '0';
									 dpcr_wr <= '0';
									 sop_wr <= '0';
									 irq_wr <= '0';
									 irq_clr <= '1';
									 result_wren <= '0';
									 result <= '0';
                end case;
                next_state<=T1;
            when others =>
					 next_state<=T0;
        end case;
    end process VariableChanging;
    
    currentSignal <= "000" when state = T0 else "001" when state = T1 else "010" when state = T1A else "011" when state = T2 else "111";
end architecture behavior;