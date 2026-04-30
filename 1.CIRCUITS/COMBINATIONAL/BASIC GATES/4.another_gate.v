module top_module (
    input in1,
    input in2,
    output out);
    wire nin2;
    assign nin2=~in2;
    assign out=(in1&nin2);

endmodule
