module events_sensitivity;
  
  // Create an event variable that processes can use to trigger and wait
  event clk_event;
  
  // Thread1: Triggers the event using "->" operator
  initial begin
    #20 ->clk_event;
    $display ("[%0t] Thread1: triggered event_a", $time);
  end
  
  // Thread2: Waits for the event using "@" operator
  initial begin
    $display ("[%0t] Thread2: waiting for trigger ", $time);
    @(clk_event);
    $display ("[%0t] Thread2: received event_a trigger ", $time);
  end
  
endmodule	


