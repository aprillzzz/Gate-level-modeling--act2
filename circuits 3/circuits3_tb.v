`include "circuits3.v"

module xor_xornot_and_gates_tb;
reg a, b, c;
wire  d, j, f, k;
xor_xornot_and_gates Instance0 ( d, j, f, k, a, b,c);
 initial begin
      a = 0; b = 0; c = 1; 
   #1 a = 0; b = 1; c = 0;
   #1 a = 1; b = 0; c = 0;
   #1 a = 1; b = 1; c = 1;
 end
 initial begin
   $monitor ("T=%t |a=%b |b=%b |c=%b |d(xor)=%b |j(xor)=%b |f(not)=%b | k(and)=%b", $time, a, b, c, d, j,f,k);
   $dumpfile ("dump.vcd");
   $dumpvars ();
 end
endmodule