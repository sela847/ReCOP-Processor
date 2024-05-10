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
			pc_mux_sel: out bit_2;
			
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
			ir_r: out bit_1;
			dprr_res: out bit_1;
			dprr_res_reg: out bit_1;
			dprr_wren: out bit_1;
			
		--registers
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
		
		);

end control_unit;

architecture behavior of control_unit is
	type state_trans is (T1, T1A, T2, T3);
	signal state: state_trans;
	begin
		process(clk) is
		begin
		
		if(rising_edge(clk)) then
		
			if(rst) then
				state<= T1;
			--read from PC coutner and convert PC address into a instruction
		
					--PC
						write_pc<='0';
						reset<=	'1';
						
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
						
					--regfile
						init<='1';
						ir_r<='1';
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

			else
				case(state) is
					when T1 =>
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
						alu_op< = "000";
						alu_carry<= '0';
						clr_z_flag<= '0';
						
					--data mem
						data_mem_wren<='0';
						
					--regfile
						init<='1';
						ir_r<='0';
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
						
					state<= T1A;
						
						
					when T1A=>
					
						if(am="01" or "10") then
							ir_operand_set<='1';
						-- set pc_mux to output pc+1
							pc_mux_sel <= "11";
						end if;
						
						state<=T2;
						
					when T2 =>
					
						--PC
						write_pc<='0';
						
					--Instruction Reg
						ir_wr<=	'0';
						ir_reset<=	'0';
						ir_operand_set<=	'0';
						
						
						case(am) is
				
						--am_inherent
							when "00" =>

						--am_immediate
							when "01" =>
							
								if(OpCode = "000000") then ------ldr
									alu_op1_sel<= "01"; --ir_operand
								
								elsif(OpCode = "000010") then ------str
									alu_op1_sel<= "01"; --ir_operand
									alu_op2_sel<="10"; ---rz
									
								elsif(OpCode = "011000") then ------jmp
									alu_op1_sel<= "01"; --ir_operand
															
								elsif(OpCode = "001000") then -----and
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									
								elsif(OpCode = "001100") then -----or
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
								
								elsif(OpCode = "111000") then -----add
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand

								elsif(OpCode = "000100") then ------sub
									alu_op1_sel<="01"; --ir_operand
									alu_op2_sel<="10"; ---rz
									
								elsif(OpCode = "000011") then ------subv
									alu_op1_sel<="01"; --ir_operand
									alu_op2_sel<="00"; ---rx
									
								elsif(OpCode = "010100") then ------sz
									alu_op1_sel<="01"; --ir_operand
									
								elsif(OpCode = "101001") then ------datacall
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									
								elsif(OpCode = "011100") then ------present
									alu_op1_sel<= "01"; --ir_operand
									alu_op2_sel<="10"; ---rz
									
								end if;
					

						--am_direct	
							when "10" =>
							
								if(OpCode = "000000") then -----ldr
									alu_op2_sel<= "01"; --ir_operand
									
								elsif(OpCode = "000010") then ------str
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<= "01"; --ir_operand
									
								elsif(OpCode = "011101") then -----strpc
									alu_op1_sel<="11"; ---pc
									alu_op2_sel<="10"; ---rz
								
								
								end if;

						--am_register
							when "11" =>
							
								if(OpCode = "001000") then ------and
									alu_op1_sel<="10"; ---rz
									alu_op2_sel<="00"; ---rx
									
								elsif(OpCode = "001100") then ------or
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<="10"; ---rz
									
								elsif(OpCode = "111000") then -----add
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<="10"; ---rz
									
								elsif(OpCode = "000000") then -----ldr
									alu_op2_sel<="00"; ---rx
									
								elsif(OpCode = "000010") then -----str
									alu_op1_sel<="00"; ---rx
									alu_op2_sel<="10"; ---rz
								
								elsif(OpCode = "011000") then -----jmp
									alu_op1_sel<="00"; ---rx
								
								elsif(OpCode = "101000") then -----datacall
									alu_op1_sel<="10"; ---rz
									alu_op2_sel<="00"; ---rx
									
								elsif(OpCode = "111010") then -----SSOP
									alu_op1_sel<="00"; ---rx
									
								end if;
								
							when others =>
							
						end case;
						state<=T3;
						
					when T3 =>
						case(am) is
				
						--am_inherent
							when "00" =>
								if(OpCode = "010000") then --clr z
									clr_z_flag<= "1";
								end if;
								
						--am_immediate	
							when "01" =>
								if(OpCode = "000000") then ---ldr
									ld_r<= '1';
									rf_input_sel<="100";
									
								elsif(OpCode = "000010") then -- store
									data_mem_wren <= '1'; --DM[OP2] <=OP1
		
									
								elsif(OpCode = "011000") then -- jmp
									-- when jump, set PC to 
									
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
									
								elsif(OpCode = "010100") then
								
								elsif(OpCode = "101000") then

								elsif(OpCode = "101001") then
									
									
								elsif(OpCode = "011110") then
									
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
			--						constant sres: bit_6 := "101010";
			--						constant datacall: bit_6 := "101000";
			--						constant datacall2: bit_6 := "101001";

							when others =>
						end case;
						state<=T1;
					when others =>
				end case;
			end if;
		end process;




end architecture behavior;


