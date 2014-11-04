/*
Anthony De Caria - March 17, 2014

This module creates a 14-bit Shift Register with a separate enable signal.
Using asynchronous D Flip Flops.
*/

module Shift_Register_14_Enable_Async_Muxed(clk, resetn, enable, d, q);
	
	//Define the inputs and outputs
	input clk;
	input resetn;
	input enable;
	input d;
	output [13:0] q;
	
	D_FF_Enable_Async Zero(clk, resetn, enable, d, q[0]);
	D_FF_Enable_Async One(clk, resetn, enable, q[0], q[1]);
	D_FF_Enable_Async Two(clk, resetn, enable, q[1], q[2]);
	D_FF_Enable_Async Three(clk, resetn, enable, q[2], q[3]);
	D_FF_Enable_Async Four(clk, resetn, enable, q[3], q[4]);
	D_FF_Enable_Async Five(clk, resetn, enable, q[4], q[5]);
	D_FF_Enable_Async Six(clk, resetn, enable, q[5], q[6]);
	D_FF_Enable_Async Seven(clk, resetn, enable, q[6], q[7]);
	D_FF_Enable_Async Eight(clk, resetn, enable, q[7], q[8]);
	D_FF_Enable_Async Nine(clk, resetn, enable, q[8], q[9]);
	D_FF_Enable_Async Ten(clk, resetn, enable, q[9], q[10]);
	D_FF_Enable_Async Eleven(clk, resetn, enable, q[10], q[11]);
	D_FF_Enable_Async Twelve(clk, resetn, enable, q[11], q[12]);
	D_FF_Enable_Async Thirteen(clk, resetn, enable, q[12], q[13]);

endmodule
