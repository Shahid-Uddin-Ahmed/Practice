module array_manipulation;
  
  int a[4]='{1,2,3,4};
  
 
  
  initial begin
    
     $display ("Previous Array sequence = %p",a);
    a.reverse();
    $display ("Reverse Array sequence = %p",a);
    
  end
endmodule

