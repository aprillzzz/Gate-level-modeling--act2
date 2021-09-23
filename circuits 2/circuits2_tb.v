`include "circuits2.v"

module and_not_and_or_gates_tb;
reg a, b, c ;
wire i, m, l, e;

and_not_and_or_gates Instance0 (i, m, l, e, a, b, c);
 initial begin

    a = 0; b = 0; c = 1; 
   #1 a = 0; b = 1; c = 0;
   #1 a = 1; b = 0; c = 0;
   #1 a = 1; b = 1; c = 1;
 end

 
 initial begin
   $monitor ("T=%t |a=%b |b=%b |c=%b |i(and)=%b  |m(not)=%b | l(and)=%b | e(or)=%b", $time, a, b, c, i, m, l, e);
   $dumpfile ("dump.vcd");
   $dumpvars ();
 end
endmodule