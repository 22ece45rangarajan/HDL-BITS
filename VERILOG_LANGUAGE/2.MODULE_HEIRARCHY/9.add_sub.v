module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0]p,r;
    wire [31:0]a_s;
    wire c1,cout;
    assign  a_s = {32{sub}}^b;
    add16 add1(a[15:0],a_s[15:0],sub,r,c1);
    add16 add2(a[31:16],a_s[31:16],c1,p,cout);
    assign sum={p,r};
endmodule
