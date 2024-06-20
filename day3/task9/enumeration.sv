module enumeration;
  
  typedef enum {friday, saturday, sunday, monday, tuesday, wednesday, thursday} weekdays;
  
  initial begin
    weekdays days;
    
    days = 3;
    
    $display ("today = %s", days.name);
    
  end
endmodule
