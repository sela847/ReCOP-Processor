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
		
		--read from PC coutner and convert PC address into a instruction
					
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
			
		--address_reg
			AR_sel: out bit_1;
			ar_rst: out bit_1;
			ar_wr: out bit_1;
			
			currentSignal: out bit_3
		
		);

end control_unit;

architecture behavior of control_unit is
	type state_trans is (T0,T1, T1A, T2, T3);
	signal state: state_trans := T0;
	signal next_state: state_trans:= T0;
	begin
	
	
		SwitchStates: process(clk) is
		begin
			if(rising_edge(clk)) then
				if(rst = '1') then
					State<=T0;
				else
					State<=next_state;
				end if;	
			end if;
		end process SwitchStates;
		
		VariableChanging: process(state, am, Opcode) is
		begin
				case(state) is
					when T0 =>
						next_state <= T1;
						--PC
						write_pc<='0';
						reset<=	'1';
						pc_mux_sel<='1';
						
					--Instruction Reg
						ir_wr<=	'0';
						ir_reset<=	'1';
						ir_operand_set<=	'0';
						
					--ALU
						alu_op1_sel<= "00";
						alu_op2_sel<= "00";
						alu_op<= "000";
						alu_carry<= '0';
						clr_z_flag<= '1';
						
					--data mem
						data_mem_wren<='0';
						
						rf_input_sel<= "000";
					--registers
						op1_wr<= '0';
						op2_wr<= '0';
					--regfile
						init<='1';
						ld_r<='1';
						dprr_res<='0';
						dprr_res_reg<='0';
						dprr_wren<='0';
						
					--registers
						dpcr_lsb_sel<='0';
						dpcr_wr<='0';
						sop_wr<='0';
						irq_wr<='0';
						irq_clr<='1';
						result_wren<='0';
						result<='0';
						
					--address_reg
						AR_sel<='0';
						ar_rst<='1';
						ar_wr<='0';
						
					when T1 =>
						rf_input_sel<= "000";
					--registers
						op1_wr<= '0';
						op2_wr<= '0';
					
					--read from PC coutner and convert PC address into a instruction
					--PC
						write_pc<='1';
						reset<=	'0';
						
						
					--Instruction Reg
						ir_wr<=	'1';
						ir_reset<=	'0';
						ir_operand_set<=	'0';
						
					--ALU
						alu_op1_sel<= "00";
						alu_op2_sel<= "00";
						alu_op <= "000";
						alu_carry<= '0';
						clr_z_flag<= '0';
						
					--data mem
						data_mem_wren<='0';
						
					--regfile
						init<='1';
						ld_r<='0';
						dprr_res<='0';
						dprr_res_reg<='0';
						dprr_wren<='0';
						
					--registers
						dpcr_lsb_sel<='0';
						dpcr_wr<='0';
						sop_wr<='0';
						irq_wr<='0';
						irq_clr<='0';
						result_wren<='0';
						result<='0';
						
					--address_reg
						AR_sel<='0';
						ar_rst<='0';
						ar_wr<='0';
						
						next_state<= T1A;
						
						pc_mux_sel<='1';
					when T1A=>

						rf_input_sel<= "000";
					--registers
						op1_wr<= '0';
						op2_wr<= '0';
						--PC
						pc_mux_sel<='1';
						write_pc<='0';
						reset<='0';
						
						--Instruction Reg
						ir_wr <= '0';
						ir_operand_set<='0';
						ir_reset<='0';
						
						--ALU
						alu_op1_sel<="00";
						alu_op2_sel<="00";
						alu_op<="000";
						alu_carry<='0';
						clr_z_flag<='0';
						
						--data mem
						data_mem_wren<='0';
						
						--regfile
						init<='0';
						ld_r<='0';
						dprr_res<='0';
						dprr_res_reg<='0';
						dprr_wren<='0';
						
						--registers
						dpcr_lsb_sel<='0';
						dpcr_wr<='0';
						sop_wr<='0';
						irq_wr<='0';
						irq_clr<='0';
						result_wren<='0';
						result<='0';
						
						--address_reg
						AR_sel<='0';
						ar_rst<='0';
						ar_wr<='0';
						
						if(am="01" or am="10") then
							write_pc<='1';
							ir_operand_set<='1';
						-- set pc_mux to output pc+1
							pc_mux_sel <= '1';
							ir_wr <= '1';
						end if;
						
						next_state<=T2;
						
					when T2 =>
						rf_input_sel<= "000";
					--registers
						op1_wr<= '0';
						op2_wr<= '0';
					
					--PC
						pc_mux_sel<='1';
						write_pc<='0';
						reset<='0';
						
						--Instruction Reg
						ir_wr <= '0';
						ir_operand_set<='0';
						ir_reset<='0';
						
						--ALU
						alu_op1_sel<="00";
						alu_op2_sel<="00";
						alu_op<="000";
						alu_carry<='0';
						clr_z_flag<='0';
						
						--data mem
						data_mem_wren<='0';
						
						--regfile
						init<='0';
						ld_r<='0';
						dprr_res<='0';
						dprr_res_reg<='0';
						dprr_wren<='0';
						
						--registers
						dpcr_lsb_sel<='0';
						dpcr_wr<='0';
						sop_wr<='0';
						irq_wr<='0';
						irq_clr<='0';
						result_wren<='0';
						result<='0';
						
						--address_reg
						AR_sel<='0';
						ar_rst<='0';
						ar_wr<='0';
						
						case(am) is
				
						--am_inherent
							when "00" =>
								op1_wr <= '0';
								op2_wr <= '0';
						--am_immediate
							when "01" =>
								
								if(OpCode = "000000") then ------ldr
									alu_op1_sel<= "01"; --ir_operand
									op1_wr <= '1';
								
								elsif(OpCode = "000010") then ------str
									alu_op1_sel<= "01"; --ir_operand
									alu_op2_sel<="10"; ---rz
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "011000") then ------jmp
									alu_op1_sel<= "01"; --ir_operand
									op1_wr <= '1';
															
								elsif(OpCode = "001000") then -----and
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "001100") then -----or
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									op1_wr <= '1';
									op2_wr <= '1';
								
								elsif(OpCode = "111000") then -----add
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									op1_wr <= '1';
									op2_wr <= '1';

								elsif(OpCode = "000100") then ------sub
									alu_op1_sel<="01"; --ir_operand
									alu_op2_sel<="10"; ---rz
									op1_wr <= '1';
									op2_wr <= '1';
								elsif(OpCode = "000011") then ------subv
									alu_op1_sel<="01"; --ir_operand
									alu_op2_sel<="00"; ---rx
									op1_wr <= '1';
									op2_wr <= '1';
								elsif(OpCode = "010100") then ------sz
									alu_op1_sel<="01"; --ir_operand
									op1_wr <= '1';
									
								elsif(OpCode = "101001") then ------datacall
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "011100") then ------present
									alu_op1_sel<= "01"; --ir_operand
									alu_op2_sel<="10"; ---rz
									op1_wr <= '1';
									op2_wr <= '1';
									
								end if;
					

						--am_direct	
							when "10" =>
							
								if(OpCode = "000000") then -----ldr
									alu_op2_sel<= "01"; --ir_operand
									op1_wr <= '1';

									
								elsif(OpCode = "000010") then ------str
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "011101") then -----strpc
									alu_op1_sel<="11"; ---pc
									alu_op2_sel<="10"; ---rz
								
									op1_wr <= '1';
									op2_wr <= '1';
								
								end if;

						--am_register
							when "11" =>
							
								if(OpCode = "001000") then ------and
									alu_op1_sel<="10"; ---rz
									alu_op2_sel<="00"; ---rx
									
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "001100") then ------or
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<="10"; ---rz
									
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "111000") then -----add
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<="10"; ---rz
									
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "000000") then -----ldr
									alu_op2_sel<="00"; ---rx
									
									
									op2_wr <= '1';
									
								elsif(OpCode = "000010") then -----str
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<="10"; ---rz
									
									op1_wr <= '1';
									op2_wr <= '1';
								
								elsif(OpCode = "011000") then -----jmp
									alu_op1_sel<="00"; ---rx
									
									op1_wr <= '1';
									
								
								elsif(OpCode = "101000") then -----datacall
									alu_op1_sel<="10"; ---rz
									alu_op2_sel<="00"; ---rx
									
									op1_wr <= '1';
									op2_wr <= '1';
									
								elsif(OpCode = "111010") then -----SSOP
									alu_op1_sel<="00"; ---rx
									
									op1_wr <= '1';
						
								end if;
								
							when others =>
							
						end case;
						next_state<=T3;
						
					when T3 =>
						rf_input_sel<= "000";
					--registers
						op1_wr<= '0';
						op2_wr<= '0';
						--PC
						pc_mux_sel<='1';
						write_pc<='0';
						reset<='0';
						
						--Instruction Reg
						ir_wr <= '0';
						ir_operand_set<='0';
						ir_reset<='0';
						
						--ALU
						alu_op1_sel<="00";
						alu_op2_sel<="00";
						alu_op<="000";
						alu_carry<='0';
						clr_z_flag<='0';
						
						--data mem
						data_mem_wren<='0';
						
						--regfile
						init<='0';
						ld_r<='0';
						dprr_res<='0';
						dprr_res_reg<='0';
						dprr_wren<='0';
						
						--registers
						dpcr_lsb_sel<='0';
						dpcr_wr<='0';
						sop_wr<='0';
						irq_wr<='0';
						irq_clr<='0';
						result_wren<='0';
						result<='0';
						
						--address_reg
						AR_sel<='0';
						ar_rst<='0';
						ar_wr<='0';
					
						case(am) is
				
						--am_inherent
							when "00" =>
								if(OpCode = "010000") then --clr z
									clr_z_flag<= '1';
								end if;
								
						--am_immediate	
							when "01" =>
								if(OpCode = "000000") then ---ldr
									ld_r<= '1';
									rf_input_sel<="100";
									
								elsif(OpCode = "000010") then -- store
									data_mem_wren <= '1'; --DM[OP2] <=OP1
		
									
								elsif(OpCode = "011000") then -- jmp
									-- when jump, set PC to OP
									pc_mux_sel <= '0'; 
									
								elsif(OpCode = "001000") then ----and
									ld_r<= '1';
									alu_op<= alu_and;
									rf_input_sel<= "011"; --- RZ = ALUOUT
									
								elsif(OpCode = "001100") then --- or
									ld_r<= '1';
									alu_op <= alu_or;
									rf_input_sel<= "011";  --- RZ = ALUOUT
									
								elsif(OpCode = "111000") then ----add
									ld_r<= '1';
									alu_op<=alu_add;
									rf_input_sel<= "011";  --- RZ = ALUOUT
									
								elsif(OpCode = "000100") then ----sub
									alu_op<=alu_sub;
									-- not assigned a stored variable ? rf_input_sel<= "011";  --- RZ = ALUOUT
									
								elsif(OpCode = "000011") then --subv
									ld_r<= '1';
									alu_op<=alu_sub;
									rf_input_sel<= "011";  --- RZ = ALUOUT
									
								elsif(OpCode = "011100") then -- Present
									ld_r <= '0'; -- Don't load anything
									alu_op <= alu_checkZero;
									if (z_flag = '1') then
										pc_mux_sel <= '0';
									else
										pc_mux_sel <= '1';
									end if;
									
								elsif(OpCode = "101001") then -- Datacall immediate
									-- DPCR <= OP1 & OP2
									dpcr_lsb_sel<='1'; -- Becomes Rz & OPERAND
									DPCR_wr <= '1';
									-- DPRR(1) <= '0'
									iqr_clr <= '1';
									pc_mux_sel <= '1';

								elsif(OpCode = "101001") then -- SZ
									if (z_flag = '1') then
										pc_mux_sel <= '0';
									else
										pc_mux_sel <= '1';
									end if;

								end if;
			--						constant ldr: bit_6 := "000000";
			--						constant str: bit_6 := "000010";
			--						constant jmp: bit_6 := "011000";
			--						constant andr: bit_6 := "001000"; --  AND Rz Rx Op
			--						constant orr : bit_6 := "001100"; --  OR Rz Rx Op
			--						constant addr: bit_6 := "111000"; --  ADD Rz Rx Op
			--						constant subr: bit_6  := "000100"; --  SUB Rz Op
			--						constant subvr: bit_6 := "000011"; -- SUBV RZ Rx Op
			--						constant  sz : bit_6 := "010100";
			--						constant datacall: bit_6 := "101000";
			--						constant datacall2: bit_6 := "101001";
			--						constant max: bit_6 := "011110";

						--am_direct	
							when "10" =>
							
								if (OPcode = ldr) then
									ld_r<= '1';
									data_mem_wren <= '0';
									rf_input_sel<= "111"; --- RZ = DM[OP2]
									pc_mux_sel <= '1';
								else if (Opcode = str) then
									data_mem_wren <= '1';
									-- DM[OP2] <= OP1
									
									pc_mux_sel <= '1';
								else if (Opcode = strpc) then
									
									--DM[OP2] <= OP1
									
									data_mem_wren <= '1';
									pc_mux_sel <= '1';
									
								
								end if;
			--						constant ldr: bit_6 := "000000";
			--						constant str: bit_6 := "000010";
			--						constant jmp: bit_6 := "011000";
			--						constant present: bit_6 := "011100";
			--						constant andr: bit_6 := "001000"; --  AND Rz Rx Op
			--						constant orr : bit_6 := "001100"; --  OR Rz Rx Op
			--						constant addr: bit_6 := "111000"; --  ADD Rz Rx Op
			--						constant subr: bit_6  := "000100"; --  SUB Rz Op
			--						constant subvr: bit_6 := "000011"; -- SUBV RZ Rx Op
			--						constant ssop: bit_6 := "111010";
			--						constant lsip: bit_6 := "110111";
			--						constant strpc: bit_6 := "011101";

						--am_register
							when "11" =>
							
								if (opcode = andr) then -- AND
									-- RZ <= ALU OP1 AND ALU OP2
									alu_op <= alu_and;
									rf_input_sel<= "011";
									pc_mux_sel <= '1';
								else if (opcode = orr) then -- OR
								
									pc_mux_sel <= '1';
									alu_op <= alu_or;
									rf_input_sel <= "011";
									
								else if (opcode = addr) then -- ADD
								
									pc_mux_sel <= '1';
									alu_op <= alu_add;
									rf_input_sel <= "011";
									
									
								else if (opcode = Ldr) then -- loadr
									ld_r<= '1';
									data_mem_wren <= '0';
									rf_input_sel<= "111"; --- RZ = DM[OP2]
									pc_mux_sel <= '1';
								else if (opcode = str) then -- store
									data_mem_wren <= '1';
									pc_mux_sel <= '1';
									
								else if (opcode = jmp) then -- jump Rx
									
									pc_mux_sel <= '0'; -- set to OP1
									
								else if (opcode = "101000") then -- Datacall
									
									-- DPCR <= OP1 & OP2
									dpcr_lsb_sel<='0'; -- Becomes Rz & R7
									DPCR_wr <= '1';
									-- DPRR(1) <= '0'
									iqr_clr <= '1';
									pc_mux_sel <= '1';
								
								else if (opcode = LSIP) then
									-- RZ <= SIP
									ld_r <= '1';
									rf_input_sel <= "101";
									
									
								else if (opcode = SSOP) then
									-- Set SOP to OP1
									sop_wr <= '1';
									pc_mux_sel <= '1';
								end if;
			--						constant sres: bit_6 := "101010";
			--						constant datacall: bit_6 := "101000";
			--						constant datacall2: bit_6 := "101001";

							when others =>
						end case;
						next_state<=T1;
					when others =>
				end case;
		end process VariableChanging;
		
		currentsignal<= "000" when state = T0 else "001" when state = T1 else "010" when state = T1A else "011" when state = T2 else "111";



end architecture behavior;


