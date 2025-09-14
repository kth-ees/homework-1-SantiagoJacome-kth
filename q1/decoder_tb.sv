module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );

  initial begin
    binary = 4'b0000;
    #10;
    binary = 4'b0001;
    #10;
    binary = 4'b0010;
    #10;
    binary = 4'b0011;
    #10;
    binary = 4'b0100;
    #10;
    binary = 4'b0101;
    #10;
    binary = 4'b0110;
    #10;
    binary = 4'b0111;
    #10;
    binary = 4'b1000;
    #10;
    binary = 4'b1001;
    #10;
    binary = 4'b1010;
    #10;
    binary = 4'b1011;
    #10;
    binary = 4'b1100;
    #10;
    binary = 4'b1101;
    #10;
    binary = 4'b1110;
    #10;
    binary = 4'b1111;
    #10;
    $finish;
  end

endmodule
