/*
Anthony De Caria - November 04, 2014

This module is a Decoder for a Seven Segment Display.
This module assumes that the SSD works in a logic low.
I.e. sending a 0 to the SSD turns that part on, while a 1 turns it off.
*/

module LogicLowSevenSegmentDisplayDecoder(In, Out);
  input [3:0] In;
  output reg [6:0] Out;
 
  always @(In)
    case (In)
      4'h0: Out = 7'b1000000;
      4'h1: Out = 7'b1111001; 
      4'h2: Out = 7'b0100100;
      4'h3: Out = 7'b0110000;
      4'h4: Out = 7'b0011001;
      4'h5: Out = 7'b0010010;
      4'h6: Out = 7'b0000010;
      4'h7: Out = 7'b1111000;
      4'h8: Out = 7'b0000000;
      4'h9: Out = 7'b0011000;
      4'hA: Out = 7'b0001000;
      4'hB: Out = 7'b0000011;
      4'hC: Out = 7'b1000110;
      4'hD: Out = 7'b0100001;
      4'hE: Out = 7'b0000110;
      4'hF: Out = 7'b0001110;
      default: Out = 7'b0110110;
    endcase
endmodule
