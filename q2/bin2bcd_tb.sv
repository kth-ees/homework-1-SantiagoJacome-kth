module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;

  // complete your 
  bin2bcd DUT (
    .binary(binary),
    .bcd(bcd),
    .carry(carry)
  );

initial begin

for(int i = 0; i<16; i++) begin
  binary = i;
  #10;
end

#10
$finish
end

endmodule
