class Counter;
  static int total_count = 0;
  int my_count = 0;

  function new();
    total_count++;
    my_count++;
  endfunction

  function void show();
    $display("total_count = %0d, my_count = %0d", total_count, my_count);
  endfunction
endclass

module test;
  initial begin
    Counter c1 = new();  // Correct object creation. Use parentheses!
    Counter c2 = new();
    Counter c3 = new();

    c1.show();
    c2.show();
    c3.show();
  end
endmodule