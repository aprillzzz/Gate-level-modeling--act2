module and_not_and_or_gates (output i, m, l, e, input a, b, c);
  and (i, a,b);   // i= ignition is the output, a and b are inputs
  not (m, b);  // m = motor is the output, b are inputs
  and (l, a, b, c);  // l= remote * locked is the output, a and b, c are inputs
  or  (e,  a, b);  //r = or(engine) is the output , a and b are inputs
endmodule