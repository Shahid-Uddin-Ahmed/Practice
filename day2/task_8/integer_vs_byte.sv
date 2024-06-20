module integer_vs_byte;

    // Variable Declarations
    integer int_var1, int_var2, int_result;
    byte byte_var1, byte_var2, byte_result;

    initial begin
        // Assigning values to integer variables
        int_var1 = 100;
        int_var2 = 50;

        // Assigning values to byte variables
        byte_var1 = 8'h1A; // Hexadecimal value for 165
        byte_var2 = 8'h10; // Hexadecimal value for 60

        // Performing arithmetic operations on integer variables
        int_result = int_var1 + int_var2;
        $display("Integer Addition: %0d + %0d = %0d", int_var1, int_var2, int_result);

        int_result = int_var1 - int_var2;
        $display("Integer Subtraction: %0d - %0d = %0d", int_var1, int_var2, int_result);

        int_result = int_var1 * int_var2;
        $display("Integer Multiplication: %0d * %0d = %0d", int_var1, int_var2, int_result);

        int_result = int_var1 / int_var2;
        $display("Integer Division: %0d / %0d = %0d", int_var1, int_var2, int_result);

        // Performing arithmetic operations on byte variables
        byte_result = byte_var1 + byte_var2;
        $display("Byte Addition: %0d + %0d = %0d", byte_var1, byte_var2, byte_result);

        byte_result = byte_var1 - byte_var2;
        $display("Byte Subtraction: %0d - %0d = %0d", byte_var1, byte_var2, byte_result);

        byte_result = byte_var1 * byte_var2;
        $display("Byte Multiplication: %0d * %0d = %0d", byte_var1, byte_var2, byte_result);

        byte_result = byte_var1 / byte_var2;
      $display("Byte Division: %0d / %0d = %0.3f", byte_var1, byte_var2, byte_result);
    end

endmodule

