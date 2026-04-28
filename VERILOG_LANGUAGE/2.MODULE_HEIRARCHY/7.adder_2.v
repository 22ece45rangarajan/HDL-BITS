module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0] p,r,k,m,n,s;
    wire cin,cout,c1;
    assign p= a[31:16];
    assign n= a[15:0];
    assign k= b[31:16];
    assign m= b[15:0];
    assign r= sum[31:16];
    assign s=sum[15:0];
    assign cin=1'b0;
    add16 add1(n,m,cin,s,c1);
    add16 add2(p,k,c1,r,cout);
    assign sum = {r,s};
endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );
  
    assign{cout,sum}=a+b+cin;
// Full adder module here

endmodule
