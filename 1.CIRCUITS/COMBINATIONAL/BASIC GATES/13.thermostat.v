module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    assign heater=((too_cold==1)&(mode==1));
    assign aircon=((too_hot==1)&(mode==0));
    assign fan   =(fan_on?1:0)|((heater==1)|(aircon==1));
endmodule
