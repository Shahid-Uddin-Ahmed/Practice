module queue;
  
  int a[$]={2,3,4,5};
  
  
  initial begin
    
    $display("Before add and remove: %p ",a);
    
    
       a.push_back(6);
    
    
    $display("After add to back: %p ",a);

    
    a.pop_front();
    
    $display("After remove from front: %p ",a);
    
  end
  
endmodule

