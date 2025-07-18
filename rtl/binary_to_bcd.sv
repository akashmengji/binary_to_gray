
module binary_to_gray #(
    parameter WIDTH = 6  // Define the bit width of the input
) (
    input  wire [WIDTH-1:0] binary_in,
    output wire [WIDTH-1:0] gray_out
);

  // Assign MSB directly
  assign gray_out[WIDTH-1] = binary_in[WIDTH-1];

  // Generate loop for the remaining bits
  genvar i;
  generate
    for (i = 0; i < WIDTH - 1; i = i + 1) begin
      assign gray_out[i] = binary_in[i+1] ^ binary_in[i];
    end
  endgenerate

endmodule
