module typedef_alias;
  int new_data;
  int data;
  
  typedef int unsigned MyUInt;
  
  initial begin
    MyUInt data = 32'hffcc_aabb;
    $display("Before alias = %h",data);
      
  end

  initial begin
  
 alias new_data=data;
  
 new_data = 32'h0011_1100;

  $display("After alias = %h",new_data);
    
  end
endmodule

