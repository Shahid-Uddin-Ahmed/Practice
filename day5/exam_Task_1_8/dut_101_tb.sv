module dut_101_tb;

  //////////////////////////////////////////////////////////////////////////////
  //-SIGNALS
  //////////////////////////////////////////////////////////////////////////////

  logic       clk;  // simulation timing clock

  logic [7:0] data;  // input data
  logic       out;  // parity out

  //////////////////////////////////////////////////////////////////////////////
  //-VARIABLES
  //////////////////////////////////////////////////////////////////////////////

  int         pass;  // number of time results did matched
  int         fail;  // number of time results did not matched

  //////////////////////////////////////////////////////////////////////////////
  //-RTLS
  //////////////////////////////////////////////////////////////////////////////

  dut_101 u_dut_101 (
      .data(data),
      .out (out)
  );

  //////////////////////////////////////////////////////////////////////////////
  //-METHODS
  //////////////////////////////////////////////////////////////////////////////

  // Apply system reset and initialize all inputs
  task static apply_reset();
    #100ns;
    clk  <= '0;
    data <= '0;
    #100ns;
  endtask

  // start toggling system clock forever every 5ns
  task static start_clock();
    fork
      forever begin
        clk <= '1;
        #5ns;
        clk <= '0;
        #5ns;
      end
    join_none
  endtask

  // put random data on every posedge of clk
  task static drive_random_data();
    fork
      forever @(posedge clk) begin
        data <= $urandom;
      end
    join_none
  endtask

  // checks if the DUT output is correct or not
  // this method of checking is extremely poor
  // I don't want to give out idea for DUT design
  task static check_out();
    int ones;
    int is_odd;
    fork
      forever @(negedge clk) begin
        ones = 0;
        foreach (data[i]) if (data[i]) ones++;
        is_odd = (ones % 2);
        if (is_odd === out) pass++;
        else fail++;
      end
    join_none
  endtask

  //////////////////////////////////////////////////////////////////////////////
  //-PROCEDURALS
  //////////////////////////////////////////////////////////////////////////////

  initial begin  // main initial

    apply_reset();
    start_clock();

    drive_random_data();
    check_out();

    // letting things run for 101 posedge of clk
    repeat (101) @(posedge clk);

    // printing out number of passes out of total
    $display("\033[1;33m%0d/%0d PASSED\033[0m", pass, pass + fail);

    // end simulation
    $finish;

  end

endmodule

