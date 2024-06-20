module control_flow_loops;
 int counter = 0;
    // Initial block to run at the start of the simulation
    initial begin
        // Loop from 1 to 10
      for (int i = 1; i <= 10; i += 1) begin
        counter += 2;
            // Check if the number is even or odd
            if (i % 2 == 0) begin
                $display("Number: %0d is Even", i);
            end else begin
                $display("Number: %0d is Odd", i);
            end
        end
      $display("Count: %0d", counter);
      
    end

endmodule

