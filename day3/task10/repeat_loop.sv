module repeat_loop;
  
  int a=0;
  int b=5;
  
  initial begin
    repeat(5)
begin
  
  a=a+1;
  b=b-1;
    
end
  $display ("sum = %d and subtractiom = %d", a,b);
  
    
  end
endmodule

