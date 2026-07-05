`timescale 1ns / 1ps
module pwm_signal(input [1:0]dty,input clk,input rst,output pwm_out);
reg [1:0] counter;
    always @(posedge clk or posedge rst)
    begin
        if(rst) counter<=2'b0;
        else 
        counter<=counter+1'b1;
    end
    assign pwm_out=(counter<dty)?1'b1:1'b0;
endmodule
