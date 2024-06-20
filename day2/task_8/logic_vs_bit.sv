module logic_vs_bit;

    // Variable Declarations
    logic logic_var1, logic_var2;
    bit bit_var1, bit_var2;

    initial begin
        // Assigning values
        logic_var1 = 1'b1;
        logic_var2 = 1'bX; // Assigning unknown value to logic
        bit_var1 = 1'b1;
        bit_var2 = 1'bX;   // Assigning unknown value to bit

        // Displaying values
        $display("Initial values:");
        $display("logic_var1 = %b, logic_var2 = %b", logic_var1, logic_var2);
        $display("bit_var1 = %b, bit_var2 = %b", bit_var1, bit_var2);

        // Assigning high-impedance
        logic_var1 = 1'bZ; // Assigning high-impedance to logic
        bit_var1 = 1'bZ;   // Assigning high-impedance to bit

        // Displaying values after assigning high-impedance
        $display("After assigning high-impedance:");
        $display("logic_var1 = %b, logic_var2 = %b", logic_var1, logic_var2);
        $display("bit_var1 = %b, bit_var2 = %b", bit_var1, bit_var2);
    end

endmodule

