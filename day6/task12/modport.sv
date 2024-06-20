interface ms_if (input clk);
  logic sready;      // Indicates if slave is ready to accept data
  logic rstn;        // Active low reset
  logic [1:0] addr;  // Address 
  logic [7:0] data;  // Data
  
  modport slave ( input addr, data, rstn, clk,
                 output sready);
  
  modport master ( output addr, data,
                  input  clk, sready, rstn);
endinterface

module master ( ms_if.master mif);
  always @ (posedge mif.clk) begin

  	// If reset is applied, set addr and data to default values
    if (! mif.rstn) begin
      mif.addr <= 0;
      mif.data <= 0;

    // Else increment addr, and assign data accordingly if slave is ready
    end else begin
    // Send new addr and data only if slave is ready
      if (mif.sready) begin
      	mif.addr <= mif.addr + 1;
      	mif.data <= (mif.addr * 4);

     // Else maintain current addr and data
      end else begin
        mif.addr <= mif.addr;
        mif.data <= mif.data;
      end
    end
  end
endmodule

module slave (ms_if.slave sif);
  reg [7:0] reg_a;
  reg [7:0]	reg_b;
  reg 		reg_c;
  reg [3:0] reg_d;

  reg		dly;
  reg [3:0] addr_dly;


  always @ (posedge sif.clk) begin
    if (! sif.rstn) begin
      addr_dly <= 0;
    end else begin
      addr_dly <= sif.addr;
    end
  end

  always @ (posedge sif.clk) begin
    if (! sif.rstn) begin
      	reg_a <= 0;
    	reg_b <= 0;
    	reg_c <= 0;
    	reg_d <= 0;
  	end else begin
      case (addr_dly)
        0 : reg_a <= sif.data;
        1 : reg_b <= sif.data;
        2 : reg_c <= sif.data;
        3 : reg_d <= sif.data;
      endcase
    end
  end

  assign sif.sready = ~(sif.addr[1] & sif.addr[0]) | ~dly;

  always @ (posedge sif.clk) begin
    if (! sif.rstn)
      dly <= 1;
    else
      dly <= sif.sready;
  end

endmodule

module modport_ms (ms_if tif);
	// Pass the "master" modport to master
  	master 	m0 (tif.master);

  	// Pass the "slave" modport to slave
  	slave 	s0 (tif.slave);
endmodule

