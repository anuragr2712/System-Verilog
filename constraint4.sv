//Constraint to generate 5 -10 15 -20 30 -35

class cons;
  rand int a[];
  constraint x{a.size() == 10;}
  constraint y{foreach (a[i])
    if (i%2 == 0)
      a[i] == (i*5) + 5;
	else 
      a[i] == -5*(i +1);}
  function void post_randomize();
    $display("The randomized data is:%0p",a);
             endfunction
             endclass
             
cons c;
module top;
  initial begin
    c=new();
    assert(c.randomize());
  end
endmodule
