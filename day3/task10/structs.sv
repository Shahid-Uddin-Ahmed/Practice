module structs;
  struct{
  
    string name;
    int age;
	string address;
    
  } person;
  
  initial begin

    person = '{"Shahid", 23, "Mirpur"};
  
    $display ("Information = %p", person);
    
    person.name = "Rakib";
    person.age = 27;
    
    $display ("Information = %p", person);
    
  
  end 
endmodule
