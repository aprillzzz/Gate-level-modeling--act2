`include "halfadder.v"
module halfadder_tb;
 reg a, b;
    wire sum;
    wire carry;

halfadder Instance0(a, b, sum, carry);

initial begin

    $monitor ("time=%d:%b   %b  sum = %b\n",$time,a,b,sum,carry);
    $dumpfile("dump.vcd");
    $dumpvars();

    
    a = 0; b = 0;
    #20 a = 0; b = 1;
    #20 a = 1; b = 1;
    

    $display("test complete Half-Adder");
end

endmodule