library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;

entity control_unit is
	port(
		clk: in std_logic;
		z_flag: in bit_1;
		Opcode: in bit_6;
		am: in bit_2;
		rst: in bit_1;
		
		
		-- Splitting up of the instruction into its parts
		--general variables used across many components
		reset: out bit_1;
		
		--to ALU
		alu_operation: out bit_3;
		alu_op1_sel : out bit_2;
		alu_op2_sel : out bit_1;
		alu_carry : out bit_1;
		clr_z_flag : out bit_1;
		
		--to memoryArbiter
		master_we: out bit_1;
		master_en: out bit_1;
		recop_we: out bit_1;
		
		--to memory
		dm_wr: out bit_1;
		
		
		--To regFile
		init: out bit_1;
		ld_r: out bit_1;
		er_temp: out bit_1;
		dppr_res: out bit_1;
		dppr_res_reg: out bit_1;
		dppr_wren: out bit_1;
		rf_input_sel: out bit_3;
		
		--data_mem
		wren: out bit_1;
		
		);

end control_unit;

architecture behavior of control_unit is
	type state_trans is (T1, T2, T3);
	signal state: state_trans;
	begin
		process(clk) is
		begin
		
		if(rising_edge(clk)) then
		
			if(rst) then
				state<= T1;
				-- Splitting up of the instruction into its parts
				--general variables used across many components
				reset<= '0';
				
				--to ALU
				alu_operation<= '0';
				alu_op1_sel<= '0';
				alu_op2_sel<= '0';
				alu_carry<= '0';
				clr_z_flag<= '0';
				
				--to memoryArbiter
				master_we<= '0';
				master_en<= '0';
				recop_we<= '0';
				
				--to memory
				dm_wr<= '0';
				
				
				--To regFile
				init<= '0';
				ld_r<= '0';
				er_temp<= '0';
				dppr_res<= '0';
				dppr_res_reg<= '0';
				dppr_wren<= '0';

			else
				case(state) is
					when T1 =>
					
						state<=T2;
					when T2 =>
						case(am) is
				
						--am_inherent
							when "00" =>
								if(OpCode = "010000") then
									clr_z_flag<= "1";
								elsif(OpCode = "110100") then
									-- dont do anything?
								end if;
			--						constant clfz: bit_6 := "010000";
			--						constant noop: bit_6 := "110100";
								
						--am_immediate	
							when "01" =>
							
								if(OpCode = "000000") then
								
								elsif(OpCode = "000010") then

								elsif(OpCode = "011000") then
									
								elsif(OpCode = "001000") then
									
								elsif(OpCode = "001100") then
								
								elsif(OpCode = "111000") then

								elsif(OpCode = "000100") then
									
								elsif(OpCode = "000011") then
									
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
						state<=T3;
					when T3 =>
						case(am) is
				
						--am_inherent
							when "00" =>
								if(OpCode = "010000") then
									clr_z_flag<= "1";
								elsif(OpCode = "110100") then
									-- dont do anything?
								end if;
			--						constant clfz: bit_6 := "010000";
			--						constant noop: bit_6 := "110100";
								
						--am_immediate	
							when "01" =>
							
								if(OpCode = "000000") then
									rf_input_sel<="000";
									ld_r<= '1';
								elsif(OpCode = "000010") then
									wren<= '1';
									--DM[OP2] <=OP1
		
								elsif(OpCode = "011000") then
									
								elsif(OpCode = "001000") then
									
								elsif(OpCode = "001100") then
								
								elsif(OpCode = "111000") then

								elsif(OpCode = "000100") then
									
								elsif(OpCode = "000011") then
									
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


