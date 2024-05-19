start NOOP ;starting the program
		ADD R2 R2 #10
		ADD R4 R4 #100
		STR R4 R2
count		NOOP
		PRESENT R4 start ;if R4=0 go to start
		ADD R2 R2 R2 ;”double” the number
		LDR R3 $64
		LDR R7 count
		DATACALL R0 #13
		SSOP R3
		JMP R7
ENDPROG
END