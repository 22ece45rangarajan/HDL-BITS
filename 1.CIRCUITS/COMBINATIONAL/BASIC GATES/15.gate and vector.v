module top_module( 
    input [3:0] in,
    output reg[2:0] out_both,
    output reg[3:1] out_any,
    output reg[3:0] out_different );
    integer i,n;
    always@(*)begin
        for(i=0;i<3;i=i+1)begin
            out_both[i]     =(in[i]==1)&(in[i+1]==1);
        end
        for(i=1;i<4;i=i+1)begin
            out_any [i]     =(in[i]==1)|(in[i-1]==1);
        end
        for(i=0;i<4;i=i+1)begin
            n=(i+1)%4;
            out_different[i]=(in[i])^(in[n]);
        end
    end

endmodule
