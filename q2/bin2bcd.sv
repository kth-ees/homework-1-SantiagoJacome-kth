module mux16to1 (
  input logic[15:0] in,
  input logic[3:0] s,
  output logic out
);

assign out = in[s];

endmodule

module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  
mux16to1 mux_3(
  .in(16'b0000001100000000),
  .s(binary),
  .out(bcd[3])
);

mux16to1 mux_2(
  .in(16'b1100000011110000),
  .s(binary),
  .out(bcd[2])
);

mux16to1 mux_1(
  .in(16'b0011000011001100),
  .s(binary),
  .out(bcd[1])
);

mux16to1 mux_0(
  .in(16'b1010101010101010),
  .s(binary),
  .out(bcd[0])
);

mux16to1 mux_carry(
  .in(16'b1111110000000000),
  .s(binary),
  .out(carry)
);

endmodule
