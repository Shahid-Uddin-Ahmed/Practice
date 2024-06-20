module unique_priority;
  int x=5;
  
  initial begin
    
    unique if (x==5)
      $display("  unique_1 x = %d",x);
    else if (x==5)
      $display("  unique_2 x = %d",x);
    else
      $display(" unique_3 x = %d",x);
    
  end
  
    initial begin
    
    priority if (x==5)
      $display(" priority_1 x = %d",x);
    else if (x==5)
      $display(" priority_2 x = %d",x);
    else
      $display(" priority_3 x = %d",x);
    
  end
 endmodule

