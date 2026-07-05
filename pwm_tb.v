`timescale 1ns / 1ps
module pwm_tb();
    reg clk,rst;
    wire pwm_out;
    reg [1:0] dty;
    pwm_signal c1(dty,clk,rst,pwm_out);
    always #1 clk=~clk;
    initial 
    begin
    rst=1;clk=0;
    #2 rst=0;dty=2'b01;
    #150 dty=2'b11;
    #400 $finish;
    end
endmodule
