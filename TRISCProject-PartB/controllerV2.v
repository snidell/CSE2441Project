module controllerV2( clk, CLR,INCA,CLRA,LDA,STA,ADD,JMP,C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11);

   input clk, CLR, INCA, CLRA, LDA,STA,ADD, JMP;
   output C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11;

   reg [3:0] state;
   reg C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11;

   always @( posedge clk, posedge CLR )
   begin
   if( CLR )
       state <= 3'b000;   
   else
	begin
       case( state )
       3'b0000://State A
       begin
            if(1) state <= 3'b0001;
            else state <= 3'b0001;
       end

       3'b0001://State B
       begin
            if(1)state <= 3'b0010;
            else state <= 3'b0010;
       end

       3'b0010://State C
       begin
            if(1) state <= 3'b0011;
            else state <= 3'b0011;
       end

       3'b0011://State D
       begin
            if(1) state <= 3'b0100;
            else state <= 3'b0100;
       end
		 
		 3'b0100://State E
       
		 begin
            if(INCA)begin
				state <= 3'b0110; //If Increment Accumulator is active, go to state F
            end else if(CLRA) begin
				state <= 3'b0101;// If Clear Accumulator is active, go to State G	
				end else if(LDA) begin
				state <= 3'b0111;//If load go to state H branch later
				end else if(STA) begin
				state <=3'b0111;//If store go to state H branch later
				end else if (ADD)begin
				state <=3'b1101;//If add go to state N
				end else if (JMP) begin
				state <=3'b0001;//If store go to state H branch later
				end else begin
				state <=3'b0001;//if nothing else go to state B
				end
       end		
		 
		 3'b0110://State F
       begin
            if(1) state <= 3'b0001; //go back to B not A
            else state <= 3'b0001;
       end
		 
		 3'b0101://State G
       begin
            if(1) state <= 3'b0001; //go back to B not A
            else state <= 3'b0001;
       end
		 
		 3'b0111://State H
       begin
            if(LDA) begin //If load go to statego to state I
				state <=3'b1000;
				end else if(STA) begin //If Load go to state M
				state <= 3'b1100;
				end else if(JMP) begin //If Jump go back to state C
				state <= 3'b0010;
				end else begin //If neither go back to State B fail-safe for troubleshooting
				state <= 3'b0001;
				end
       end
		 
		 3'b1000://State I
       begin
            if(1) state <= 3'b1001;//Go to state J
            else state <= 3'b0001;
       end
		 
		 3'b1001://State J
       begin
            if(1) state <= 3'b1010;//Go to state K
            else state <= 3'b0001;
       end
		 
		 3'b1010://State K
       begin
            if(1) state <= 3'b1011;//Go to state L
            else state <= 3'b0001;
       end
		 
		 3'b1011://State L
       begin
            if(1) state <= 3'b0001;//Go back to state B for next Instruction
            else state <= 3'b0001;
       end
		 
		 3'b1100://State M
       begin
            if(1) state <= 3'b0001;//Go back to state B for next Instruction
            else state <= 3'b0001;
       end
		 
		 3'b1101://State N
       begin
            if(1) state <= 3'b1110;//Go to State O
            else state <= 3'b0001;
       end
		 
		 3'b1101://State O
       begin
            if(1) state <= 3'b0001;//Go to state L
            else state <= 3'b0001;
       end
		 
		 
       endcase
   end
end


always @(state)begin
  case(state)
  3'b0000: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b1000000000000;//State A activate C0
  3'b0001: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000000000000;//State B activate C3--Off at this point (select PC)
  3'b0010: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0001000000000;//State C activate C4 Read Memory
  3'b0011: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000100000000;//State D activate C42 Transfer memory
  3'b0100: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0100010000000;//S activate C2 and C7
  3'b0110: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000000100000;//State F activate C9
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000001000000;//State G activate C8
  
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0010000000000;//State H activate C3--C3 on at this point (select MDO) (Jump)
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0001000000000;//State I activate C4 Read Memory
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000100000000;//State J activate C42 Transfer memory
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000000000000;//State K activate C10=0 ACC Select<-MDO
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000000000001;//State L activate C11 ACC<-MDI (Load)
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0001000001000;//State M activate C5 C4 Write to memory (Store)
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000000000000;//State N activate C15 and C14 Add=00, 
  3'b0101: {C0,C2,C3,C4,C42,C7,C8,C9,C1,C5,C6,C10,C11}=8'b0000000000010;//State 0 activate C10=1 Select ALU for ACC
 endcase 	
end
endmodule