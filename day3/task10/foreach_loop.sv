module foreach_loop;
  
  int array[4] = '{2,4,6,8};
  initial begin
    
    foreach(array[i])
      $display ("array[%d] = %d",i,array[i]);
    
  end 
  
endmodule

