/* Non- Blocking Assignments : Here the evaluation of RHS will happen in Active Region but updation happens in NBA region. Here all assignments occur during end of simulation timestamp.*/
module top;
  int a,b;
  initial begin
    a = 10;
    b = 20;
    
    $display("\t Before : ", a);
    $display("\t Before : ", b);
    
    a <= b;
    b <= 26;
    
    $display("\t After value a : ",a);
    $display("\t After value b : ",b);
    
    $strobe("\t After value a : ",a);
    $monitor("\t After value b : ",b);
    
  end 
endmodule 


//Example 2 :


module ten;
  int a,b;
  int x,y;
  
  initial begin
    a = 10;
    b=15;
    
    $display("\t Value of a Before : ",a);
    $display("\t Value of b Before : ",b);
    
    x <= a+b;
    y <=a+b+x;
    
    $display("\t Value of x : ",x);
    $display("\t Value of y : ",y);
    
        
    $strobe("\t After value a : ",x);
    $monitor("\t After value b : ",y);
  end 
endmodule
    
