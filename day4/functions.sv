module functions;
   int val=1;
  int i;
  int x=5;
  
  initial begin
    
 fact(x);
    
    $display ("factorial of %d is = %d",x,val);
    
  end
  
  function int fact (int x);
   
    for(i=1;i<=x;i++)
    val =i*val;
  endfunction
  
endmodule

