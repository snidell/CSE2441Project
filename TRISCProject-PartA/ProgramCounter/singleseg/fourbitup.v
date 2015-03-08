//Behavioral description of four-bit binary counter
module fourbitup(CLK,CLEAR,COUNT);
	input CLK, CLEAR;
	output reg [3:0] COUNT;
	always @ (posedge CLK, negedge CLEAR)
	  if(CLEAR==0) COUNT <=4'b0; //count is loaded with binary 0000
	  else
	    begin
		  if (COUNT == 4'b1111)
		     COUNT <= 4'b0; //Once count hits F cycle back to zero
		  else
		    COUNT<=COUNT+ 1'b1; //increment count by 1
		end
	endmodule
	