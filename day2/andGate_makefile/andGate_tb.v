module and_gate_tb;
    reg a, b;
    wire out;

    // Instantiate the AND gate
    and_gate u1 (.a(a), .b(b), .out(out));

    initial begin
	$dumpfile("dump.vcd");
	$dumpvars(0);
        // Test all possible input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // Finish the simulation
        $finish;
    end

    initial begin
        $monitor("a = %b, b = %b, out = %b", a, b, out);
    end
endmodule





















