//Constraint to generate 0101010101

class cons;
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach (a[i])
    if(i%2 == 0)
      a[i] == 0;
	else 
      a[i] == 1;}
  function void post_randomize();
    $display("The randomized data is %0p", a);
  endfunction
endclass

cons c;
module top;
  initial begin
  c=new();
  assert(c.randomize());
  end
endmodule
