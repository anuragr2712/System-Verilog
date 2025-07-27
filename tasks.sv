//Task in parenthesis

module task_i;
  int x;
  
  task sum(input int a,b, output int  c);
    c=a+b;
  endtask
  
  initial begin
    sum(1,2,x);
    $display("The value of x is : %d",x);
  end
endmodule
  

//task arguments in declarations and mentioning directions

module task_sv;
  int x;
  
  task sum;
    input int a,b;
    output int c;
    c=a+b;
  endtask
  
  initial
    begin
      sum(10,20,x);
      $display("The value of x is %d", x);
    end
endmodule