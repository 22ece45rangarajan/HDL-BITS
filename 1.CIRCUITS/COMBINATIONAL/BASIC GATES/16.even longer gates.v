module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output reg [99:0] out_different );
    integer i,n;
    assign out_both =in[98:0]&in[99:1];
    assign out_any  =in[99:1]|in[98:0];
    always@(*)begin
        for(i=0;i<100;i=i+1)begin
            n=(i+1)%100;
            out_different[i]=(in[i])^(in[n]);
        end
    end

endmodule
