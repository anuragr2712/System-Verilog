//Pass by Value : It is making a copy of the variable and send it to the func6ion. //Any change in the copy DOES NOT reflect in the originol variable. The function is working on the COPY of the variable and thus the ORIGINOL variable stays safe


module sv_function;
  function int add_by_two(input int num);
    num = num+2;
    return num;
  endfunction;
  
  initial
    begin
      int a = 3;
      int b;
      
      $display("Before Function Call a = %0d",a);
      b = add_by_two(a);
      $display("After Function Call b = %0d",b);
    end
endmodule
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      