module blocking_nonblocking; 
  
  int a,b,c,d;
  
  
  
  initial begin
    a =10;
    
    $display ("time= %t, a1= %d, b1=%d",$time,a,b);
      b=20;
    
    $display ("time= %t, a2= %d, b2=%d",$time,a,b);
   
    
  end
  
  
    
  initial begin
    c <=19;
    
    $display ("time= %t, c1= %d, d1=%d",$time,c,d);
      d<=30;
    
    $display ("time= %t, c2= %d, d2=%d",$time,c,d);
   
    
  end
  
  endmodule

