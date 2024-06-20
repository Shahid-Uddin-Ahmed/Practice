module dynamic_array;
  
  int d_array[];
  int sum=0;
  int i;
  
  initial begin
    
    d_array=new [6];
    
    d_array ='{1,2,3,1,2,3};
    
    
    for( i=0; i<d_array.size(); i++)
      sum= sum+d_array[i];

 $display("Array Sum =%d",sum);

  end
     
endmodule

