`include "circuits1.v"

module and_nor_nand_gates_tb;
reg a, b;
wire c, d, e, g;
and_nor_nand_gates Instance0 (c, d, e, g, a, b);
 initial begin
      a = 0; b = 0;
   #1 a = 0; b = 1; 
   #1 a = 1; b = 0;
   #1 a = 1; b = 1;
 end
 initial begin
   $monitor ("T=%t |a=%b |b=%b |c(and)=%b |d(nor)=%b |e(and)=%b |g(nand)=%b", $time, a, b, c, d, e,g);
   $dumpfile ("dump.vcd");
   $dumpvars ();
 end
endmodule