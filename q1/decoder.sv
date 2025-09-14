module demux1to16 (
  input logic in,
  input logic [3:0] s,
  output logic [15:0] out
);

always_comb begin
  out = '0;
  out[s] = in;
end

endmodule


module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);

demux1to16 demux_1 (
  .in (1'b1),
  .s(binary),
  .out(one_hot)
);

endmodule

module decoder_v2 (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);

always_comb begin
  one_hot = '0;
  one_hot[binary] = 1'b1;
end

endmodule