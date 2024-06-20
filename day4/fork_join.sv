module fork_join;
	initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
		fork
		// Thread 1 
		#30 $display ("[%0t] Thread1 finished", $time);
			
		// Thread 2
          	begin
              	#5 $display ("[%0t] Thread2 ...", $time);
		#10 $display ("[%0t] Thread2 finished", $time);
                end
            
               // Thread 3
	       #20 $display ("[%0t] Thread3 finished", $time);
		join
               $display ("[%0t] Main Thread: Fork join has finished", $time);
	end
endmodule

