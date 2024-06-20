module associative_array;
  
  int array [] [string];
  
  initial begin
    
    array = new[3];
    
    array[0] ='{"key1":3,"key2":4};
    array[1] ='{"key3":5,"key2":6};
    array[2] ='{"key1":7,"key2":8};
    
    foreach(array[i])
      begin
        foreach(array[i][key])
   begin
     $display("array[%d]=> [%s] = %d",i,key,array[i][key]);
      end
      end
  end 
endmodule

