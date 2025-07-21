// Unique if throws an error if more than one condition is true and if no condition is true.

module top;
  int a,b,c;
  initial begin
    a=10;
    b=20;
    c=30;
    
    unique if(a<b) $display("\t a is less than b");
    else if (a <c) $display("\t a is less than c");
                            else $display("\t a is greater than b and c");
                            
                            end 
                            endmodule
    
//example 2

module top;
  int a,b,c;
  initial begin
    a=50;
    b=20;
    c=30;
    
    unique if(a<b) $display("\t a is less than b");
    else if (a <c) $display("\t a is less than c");
                            else $display("\t a is greater than b and c");
                            
                            end 
                            endmodule