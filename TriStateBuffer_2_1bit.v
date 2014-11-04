/*
Anthony De Caria - April 5, 2013

This is a 1-bit tri-state buffer.
*/
module TriStateBuffer_2_1bit (In, Select, Out);
	//	I/Os	//
	input In; 
	input Select;
	output reg Out;
	
	always@(In, Select)
	begin
		if (Select == 0)
		begin
			Out <= 1'bz;
		end
		else
		begin
			Out <= In;
		end
	end
endmodule
