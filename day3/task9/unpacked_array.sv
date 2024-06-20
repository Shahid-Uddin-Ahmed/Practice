module unpacked_array;
  
  int my_array[5] ='{5, 10, 15, 20, 25};
  int m[];
  
  initial begin
    
    //m=my_array.max();
    
    $display("Array max = %p",my_array.max());
    
  end
endmodule

