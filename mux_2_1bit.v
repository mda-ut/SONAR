/*
Anthony De Caria - November 04, 2014

This module creates a 1-bit two input Mux.
*/

module mux_2_1bit(input data1x, data0x, sel, output result);
	input data1x, data0x;
	input sel; 
	output result

	assign result = (data0x & ~sel) | (data1x & sel);
endmodule
