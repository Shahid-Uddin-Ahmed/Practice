module break_continue;
  // Define an array of strings
  string string_array[] = {"short", "tiny", "adequate", "enough"};

  // Define an integer to iterate through the array
  int i;

  initial begin
    // Loop through the array of strings
    for (i = 0; i < string_array.size(); i++) begin
      // Check if the length of the string exceeds 5 characters
      if (string_array[i].len() > 5) begin
        $display("String exceeding 5 characters found: %s", string_array[i]);
        break;  // Exit the loop
      end else begin
        continue;
        $display("String length is 5 or less: %s", string_array[i]);
      end
    end
  end
endmodule

