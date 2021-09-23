module mux21 (input D0, D1, S, output Y);

wire T1;
//T1 = D1(S)
wire T2;
//T2 = D0(S)
wire k;
//k = S' 

and (T1, D1, S);
and (T2, D0, k);
not (k, S);
or (Y, T1, T2);

endmodule