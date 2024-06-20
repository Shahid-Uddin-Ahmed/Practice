module array;
  
  int my_array[5] ='{5, 10, 15, 20, 25};
  
  initial begin
    
    $display("Array sum = %d", my_array.sum());
    
  end
endmodule
