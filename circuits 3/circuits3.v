module xor_xornot_and_gates (output d, j, f, k, input a, b, c);
  xor (d, a, b);   // d is the output, a and b are inputs
  xor (j, b, c);  // j is the output, b and c are inputs
  not (f, a);  // f is the output, a is the input
  and (k, a, b, c);  //y is the output , a and b and c are inputs
endmodule