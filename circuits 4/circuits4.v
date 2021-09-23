module circuit4 (input X, Y, Z, output M);
    wire g1;
    // g1 = Y'
    wire g2;
    // g2 = XY'

    not (g1,Y);
    and (g2,X,g1);
    or (M,g2,Z);
    
endmodule