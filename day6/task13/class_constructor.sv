class Packet;
  bit [31:0] addr;
 
  function new ();
    addr = 32'hfade_cafe;
  endfunction
endclass
 
module class_constructor;
  
  // Create a class handle called "pkt" and instantiate the class object
  initial begin
    // The class's constructor new() fn is called when the object is instantiated
    Packet pkt = new;   
    
    // Display the class variable - Because constructor was called during 
    // instantiation, this variable is expected to have 32'hfade_cafe;
    $display ("addr=0x%0h", pkt.addr);
  end
endmodule

