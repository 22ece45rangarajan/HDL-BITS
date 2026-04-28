module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]s1,s2,p,r;
    wire cout;
    add16 add1(a[15:0],b[15:0],1'b0,r,cout);
    add16 add2(a[31:16],b[31:16],1'b0,s1,1'b0);
    add16 add3(a[31:16],b[31:16],1'b1,s2,1'b0);
    assign p=cout?s2:s1;
    assign sum={p,r};
endmodule
