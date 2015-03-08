module accController( clk, CLR,INCA,CLRA,C0,C2,C3,C4,C42,C7,C8,C9);

   input clk, CLR, INCA, CLRA;
   output C0,C2,C3,C4,C42,C7,C8,C9;

   reg [2:0] state;
   reg C0,C2,C3,C4,C42,C7,C8,C9;

   always @( posedge clk, posedge CLR )
   begin
   if( CLR )
       state <= 3'b000;
   else if((INCA==1 && CLRA==1) || (INCA==0 && CLRA==0))
		 state <= 3'b111;//We only care about INC=0 CLRA=1 and INCA=1 and CLRA=0. So 00 and 11 are going to keep all outputs off state H
		                 //Have to clear to get out of this state
   else
	begin
       case( state )
       3'b000://State A
       begin
            if(1) state <= 3'b001;
            else state <= 3'b001;
       end

       3'b001://State B
       begin
            if(1)
				state <= 3'b010;
            else state <= 3'b010;
       end

       3'b010://State C
       begin
            if(1) state <= 3'b011;
            else state <= 3'b011;
       end

       3'b011://State D
       begin
            if(1) state <= 3'b100;
            else state <= 3'b100;
       end
		 
		 3'b100://State E
       begin
            if(INCA) state <= 3'b110; //If Increment Accumulator is active, go to state F
            else if(CLRA) state <= 3'b101;// If Clear Accumulator is active, go to State G
				
       end
		 
		 3'b110://State F
       begin
            if(1) state <= 3'b001; //go back to B not A
            else state <= 3'b001;
       end
		 
		 3'b101://State G
       begin
            if(1) state <= 3'b001; //go back to B not A
            else state <= 3'b001;
       end
       endcase
   end
end


always @(state)begin
  case(state)
  3'b000: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b10000000;//State A activate C0
  3'b001: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b00100000;//State B activate C3
  3'b010: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b00010000;//State C activate C4
  3'b011: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b00001000;//State D activate C42
  3'b100: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b01000100;//S activate C2 and C7
  3'b110: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b00000001;//State F activate C9
  3'b101: {C0,C2,C3,C4,C42,C7,C8,C9}=8'b00000010;//State G activate C8
  3'b111: {C0,C2,C3,C4,C42,C7,C8,C9}=8'bzzzzzzzz;//State H keep all outputs off
 endcase 	
end
endmodule