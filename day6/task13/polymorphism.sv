module polymorphism;
	Packet      bc; 	// bc stands for BaseClass
	ExtPacket   sc; 	// sc stands for SubClass

	initial begin
		sc = new (32'hfeed_feed, 32'h1234_5678);
		
		// Assign sub-class to base-class handle
		bc = sc;
      
		bc.display ();
		sc.display ();
	end
endmodule

