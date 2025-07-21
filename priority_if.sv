// Priority if : Issues a error if no condition is true or when we donot find a final else.

//Example 1 : 

module top;
  int a;
  int b,c;
  
  initial begin;
    a = 10;
    b = 2;
    c = 1;
    
    priority if (a<b) $display("\t a is less than b");
    else 	if (a<c)  $display("\t a is less than c");
    //else $display("a is smallest");
    
  end
endmodule