module tasks;      
   int x=5, y=2 , z;
   
   initial begin
   
     sum (x, y, z);
     $display ("Sum of %d and %d is = %d",x,y,z);
   end

   task sum (input [7:0] a, b, output [7:0] c);
	begin
	 c = a + b;
	end
   endtask

endmodule


