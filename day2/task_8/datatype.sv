module datatype;

    // Declare variables with different SystemVerilog datatypes
    logic [7:0] logic_var1, logic_var2, logic_result;
    bit [3:0] bit_var1, bit_var2, bit_result;
    integer int_var1, int_var2, int_result;
    byte byte_var1, byte_var2, byte_result;
    

    initial begin
        // Initialize variables
        logic_var1 = 8'b10101010;
        logic_var2 = 8'b01010101;
        
        bit_var1 = 4'b1100;
        bit_var2 = 4'b0011;
        
        int_var1 = 8'h0A;
        int_var2 = 8'h05;
        
        byte_var1 = 16; // 170 in decimal
        byte_var2 = 2; // 85 in decimal
        
        

        // Perform arithmetic operations
        // Logic operations
        logic_result = logic_var1 + logic_var2;
        $display("logic result (addition): %b", logic_result);

        // Bit operations
        bit_result = bit_var1 - bit_var2;
        $display("bit result (subtraction): %b", bit_result);

        // Integer operations
        int_result = int_var1 * int_var2;
        $display("integer result (multiplication): %d", int_result);
	// Byte operations
	byte_result = byte_var1 / byte_var2;
        $display("byte result (division): %d", byte_result);

 
end

endmodule

