module dut_101 (
  input  logic [7:0] data,  // input data
  output logic       out    // odd parity out
);
  // Your code here

always_comb begin
	out=^data;
end

endmodule
