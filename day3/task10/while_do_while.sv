module while_do_while;

    // Function to print Fibonacci numbers up to a limit
  function void print_fibonacci(int limit);
        int a, b, c;
        a = 0;
        b = 1;
        c = 0;
        $display("Fibonacci series up to %0d:", limit);
    while (c <= limit) begin
      $display("%0d",a);
            c = a + b;
            a = b;
            b = c;
        end
    endfunction

    // Function to prompt user for a valid input using a do-while loop
    function int get_valid_input;
        int value;
        do begin
            value = 13;
        end while (value <= 0);
        return value;
    endfunction

    initial begin
        int limit;
  
      limit = get_valid_input();
    
        print_fibonacci(limit);
    end

endmodule
