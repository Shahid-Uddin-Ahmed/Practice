module packed_array;

    // Step 1: Declare a packed array of bits
  logic [3:0] bit_array;

    // Step 2: Write a function that counts the number of '1's in the array
    function int count_ones(logic [3:0] array);
        int count;
        int i;
        begin
            count = 0;
          for (i = 0; i < 4; i = i + 1) begin
                if (array[i] == 1'b1) begin
                    count = count + 1;
                end
            end
            return count;
        end
    endfunction

    initial begin
        // Assign a value to the packed array of bits
        bit_array = 4'b1011;

        // Call the function and display the result
      $display("Number of '1's in bitArray: %0d", count_ones(bit_array));
    end

endmodule

