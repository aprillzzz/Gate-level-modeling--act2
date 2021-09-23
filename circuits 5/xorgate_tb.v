`include "xorgate.v"

module OR_NOT_AND_XOR;
reg a, b;
wire c, d, e, f;
xor_gate Instance0 (c, d, e, f, a, b);
 initial begin
      a = 0; b = 0;
   #1 a = 0; b = 1; 
   #1 a = 1; b = 0;
   #1 a = 1; b = 1;
 end
 initial begin
   $monitor ("T=%t |a=%b  |b=%b  |c(or)=%b  |d(and)=%b  |e(not)=%b  |f(xor)=%b", $time, a, b, c, d, e,f);
   $dumpfile ("dumpxor.vcd");
   $dumpvars ();
 end
endmodule