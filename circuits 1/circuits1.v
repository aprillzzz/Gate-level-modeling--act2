module and_nor_nand_gates (output c, d, e, g, input a, b);
  and (c, a, b);   // c is the output, a and b are inputs
  nor (d, a, b);  // d is the output, a and b are inputs
  and (e, a, b);  // e is the output, a and b are inputs
  nand(g, a, b);  //g is the output , a and b are inputs
endmodule