//Constraint to generate the pattern 1234554321

class cons;
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
    if(i<5)
      a[i] == i+1;
    else 
      a[i] == 10 - i;}
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