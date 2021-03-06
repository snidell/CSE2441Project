//Four bit binary to seven-segment decoder. Active Low output

module opCodeDecoder(
    input A,B,C,D, output reg LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT);
	 always @(A,B,C,D) begin
	   case ({A,B,C,D})
		//A=MSB....D=LSB
	      4'b0000: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b10000000000; //turn on LDA	(load Accumulator)
			4'b0001: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b01000000000;//turn on STA	(Store Accumulator)		
			4'b0010: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00100000000;//Turn on ADD 
			4'b0011: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00010000000;//Turn on SUB	
			4'b0100: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00001000000;//Turn on XOR			
			4'b0101: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000000;//---Not used---		
			4'b0110: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000100000;//Turn on INC (Increment Accumulator)
			4'b0111: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000010000;//Turn on CLR	(Clear Accumulator)
			4'b1000: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000001000;//Turn on JMP	(Jump Instruction)		
			4'b1001: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000010;//Turn on JPN	(Jump on Zero)		
			4'b1010: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000000;//--Not Used--
			4'b1011: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000000;//--Not used--
			4'b1100: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000100;//Turn on JPZ   (Jump when negative)
			4'b1101: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000000;//--Not Used--
			4'b1110: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000000;//--Not Used--
			4'b1111: {LDA,STA,ADD,SUB,XOR,INC,CLR,JMP,JPZ,JPN,HLT}= 11'b00000000001;//Turn on HLT   (HALT!)
			endcase			
		end
	endmodule