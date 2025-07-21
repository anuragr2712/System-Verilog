/* Blocking Statements : It blocks the execution of the next statement until the completition of current assignment execution. */

// Example 1: 
module top;
int a,b;
initial begin	
	a = 10;
    b = 20;
    
    $display("\t Before Assignment : Vaue of a is %0d", a);
     $display("\t Before Assignment : Vaue of b is %0d", b);
     
  a = b;
  b = 25;
  $display ("\t After Assignment : Vcalue of a is :",a);
  $display ("\t After Assignment : Vcalue of b is :",b);
end 
endmodule

//Example 2 :


module ten;
  int a,b;
  int x,y;
  
  initial begin
    a = 10;
    b=25;
    
    $display("\t Value of a Before : ",a);
    $display("\t Value of b Before : ",b);
    
    x = a+b;
    y =a+b+10;
    
    $display("\t Value of x : ",x);
    $display("\t Value of y : ",y);
  end 
endmodule