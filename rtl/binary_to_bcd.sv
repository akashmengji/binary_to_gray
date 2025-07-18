
module binary_to_gray #(
    parameter WIDTH = 6  // Define the bit width of the input
) (
    input  wire [WIDTH-1:0] binary_in,  
    output reg  [WIDTH-1:0] gray_out   
);

  integer i;
  always @(*) begin
    gray_out[WIDTH-1] = binary_in[WIDTH-1];  

    for (i = WIDTH - 2; i >= 0; i = i - 1) begin
      gray_out[i] = binary_in[i+1] ^ binary_in[i];
    end
  end

endmodule
