module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    wire [31:0] p;
    wire [7:0]  A,B,C,D;
    assign p={a,b,c,d,e,f,2'b11};
    assign A={a,b[4],b[3],b[2]};
    assign B={b[1],b[0],c,d[4]};
    assign C={d[3],d[2],d[1],d[0],e[4],e[3],e[2],e[1]};
    assign D={e[0],f,2'b11};
    assign w=A;
    assign x=B;
    assign y=C;
    assign z=D;

endmodule
