// Functions in Parenthesis

module sv_func;
  int x;
  
  function int sum(input int a,b);
    sum = a+b;
  endfunction
  
  initial begin
    x=sum(10,100);
    $display("The value of x is %0d",x);
  end
endmodule


// Functions in Decarations and mentioning Directions
  

module func_sv;
  int x;
  function int sum(input int s,d);
    sum = s+d;
  endfunction
  
  initial begin
    x=sum(12,12);
    $display("The value of x is : %0d", x);
  end
endmodule


//Function using return keyword.

module return_sv;
  int x;
  
  function int sum;
    input int c,e;
    return c+e;
  endfunction
  
  initial begin
    x=sum(13,13);
    $display("The value of x is : %0d", x);
  end
endmodule


//Function using Void.

module void_sv;
int x;
  function void simulation_time;
    $display("The current simulation time is : %0d",$time);
  endfunction
  
  initial
    begin
      #10;
      simulation_time();
      #20;
      simulation_time();
    end
  endmodule

//function call as an expression

module expression_sv;
  int x;
  
  function int sum;
    input int w,r;
    sum = w+r;
  endfunction
  
initial
  begin
    x=12+sum(3,5);
    $display("The value os x is %0d",x);
  end
endmodule







