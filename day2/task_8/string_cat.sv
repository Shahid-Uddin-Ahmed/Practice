module string_cat;

    // Variable Declarations
    string str1, str2, str_result;

    initial begin
        // Assigning values to strings
        str1 = "Hello";
        str2 = "World!";

        // Concatenating strings
      str_result = {str1," ",str2};

        // Displaying the result
        $display("Concatenated String: %s", str_result);
    end

endmodule
