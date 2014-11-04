/*
Anthony De Caria - May 22, 2014

This module creates a 14 bit Shift Register with a separate enable signal.
This module uses asynchronous D Flip Flops.
It also can allow data to be put into the flip flops before shifting.
*/

module Shift_Register_14_Enable_Async_Muxed(clk, resetn, enable, select, d, q);
	
	//Define the inputs and outputs
	input	clk;
	input	resetn;
	input	enable;
	input	select;
	input	[13:0] d;
	output	[13:0] q;
	
	wire	[13:1]muxOut;
	
	mux_2_1bit One_mux(.data1x(d[1]), .data0x(q[0]), .sel(select), .result(muxOut[1]) );
	mux_2_1bit Two_mux(.data1x(d[2]), .data0x(q[1]), .sel(select), .result(muxOut[2]) );
	mux_2_1bit Three_mux(.data1x(d[3]), .data0x(q[2]), .sel(select), .result(muxOut[3]) );
	mux_2_1bit Four_mux(.data1x(d[4]), .data0x(q[3]), .sel(select), .result(muxOut[4]) );
	mux_2_1bit Five_mux(.data1x(d[5]), .data0x(q[4]), .sel(select), .result(muxOut[5]) );
	mux_2_1bit Six_mux(.data1x(d[6]), .data0x(q[5]), .sel(select), .result(muxOut[6]) );
	mux_2_1bit Seven_mux(.data1x(d[7]), .data0x(q[6]), .sel(select), .result(muxOut[7]) );
	mux_2_1bit Eight_mux(.data1x(d[8]), .data0x(q[7]), .sel(select), .result(muxOut[8]) );
	mux_2_1bit Nine_mux(.data1x(d[9]), .data0x(q[8]), .sel(select), .result(muxOut[9]) );
	mux_2_1bit Ten_mux(.data1x(d[10]), .data0x(q[9]), .sel(select), .result(muxOut[10]) );
	mux_2_1bit Eleven_mux(.data1x(d[11]), .data0x(q[10]), .sel(select), .result(muxOut[11]) );
	mux_2_1bit Twelve_mux(.data1x(d[12]), .data0x(q[11]), .sel(select), .result(muxOut[12]) );
	mux_2_1bit Thirteen_mux(.data1x(d[13]), .data0x(q[12]), .sel(select), .result(muxOut[13]) );
	
	D_FF_Enable_Async Zero(.clk(clk), .resetn(resetn), .enable(enable), .d(d[0]), .q(q[0]) );
	D_FF_Enable_Async One(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[1]), .q(q[1]) );
	D_FF_Enable_Async Two(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[2]), .q(q[2]) );
	D_FF_Enable_Async Three(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[3]), .q(q[3]) );
	D_FF_Enable_Async Four(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[4]), .q(q[4]) );
	D_FF_Enable_Async Five(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[5]), .q(q[5]) );
	D_FF_Enable_Async Six(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[6]), .q(q[6]) );
	D_FF_Enable_Async Seven(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[7]), .q(q[7]) );
	D_FF_Enable_Async Eight(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[8]), .q(q[8]) );
	D_FF_Enable_Async Nine(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[9]), .q(q[9]) );
	D_FF_Enable_Async Ten(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[10]), .q(q[10]) );
	D_FF_Enable_Async Eleven(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[11]), .q(q[11]) );
	D_FF_Enable_Async Twelve(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[12]), .q(q[12]) );
	D_FF_Enable_Async Thirteen(.clk(clk), .resetn(resetn), .enable(enable), .d(muxOut[13]), .q(q[13]) );

endmodule
