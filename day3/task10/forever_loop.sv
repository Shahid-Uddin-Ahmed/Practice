module forever_loop;
  // Declare output signal
  reg out_signal;

  // Clock signal for controlling the frequency
  reg clk;

  // Time period for toggling (can be adjusted as needed)
  parameter TOGGLE_PERIOD = 2;

  // Generate a clock signal with a period of TOGGLE_PERIOD
  initial begin
    clk = 0;
    forever begin
      #(TOGGLE_PERIOD / 2) clk = ~clk;  // Generate clock signal
    end
  end

  // Toggling the output signal based on the clock
  initial begin
    out_signal = 0;
    forever begin
      @(posedge clk);  // Wait for the positive edge of the clock
      out_signal = ~out_signal;  // Toggle the output signal
    end
  end

  // Monitor the output signal (for demonstration purposes)
  initial begin
    $monitor("Time: %0t, out_signal: %b", $time, out_signal);
  end
endmodule

