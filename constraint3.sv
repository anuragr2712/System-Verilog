//Write a constraint to generate below pattern 9 19 29 39 49 59 69 79

class cons;
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach (a[i])
    a[i] == (i*10) + 9;}
  function void post_randomize();
    $display("The randomized data is %0p",a);
  endfunction
endclass

cons c;
module top;
  initial begin
    c=new();
    assert(c.randomize());
      end
      endmodule
