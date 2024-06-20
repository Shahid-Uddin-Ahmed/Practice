class Packet;
   int addr;

   function new (int addr);
      this.addr = addr;
   endfunction

   // Here the function is declared as "virtual"
   // so that a different definition can be given
   // in any child class
   virtual function void display ();
		$display ("[Base] addr=0x%0h", addr);
	endfunction
endclass

module virtual_methods;
   Packet bc;
   ExtPacket sc;

	initial begin
        sc = new (32'hfeed_feed, 32'h1234_5678);	

        bc = sc; 
		bc.display ();
	end
endmodule

