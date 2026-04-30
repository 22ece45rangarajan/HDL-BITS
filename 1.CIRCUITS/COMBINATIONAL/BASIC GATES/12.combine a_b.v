module top_module (input x, input y, output z);
    wire x1,y1,z1,z2;
    assign x1=x;
     assign y1=y;
    
    //A a1( x1, y1, z1);
    A a2( x1, y1, z1);
    //B b1( x3, y3, z3);
    B b2( x1, y1, z2);
    assign z=((z1|z2)^(z1&z2));
    
endmodule
module A (input x,input y,output p
);
 assign p = (x ^ y) & x;
endmodule
module B(input x,input y,output r);
    assign r=~(x^y);
endmodule
