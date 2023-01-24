`timescale 1ns / 1ps
module lfsr2tb();
reg clk, rst;
wire [0:3]q;
//wire feedback;
 lfsr r1(q, clk, rst);
//assign feedback=q[2]^q[3];
initial
 begin
 clk=0;
 rst=0;
 end
 always
  #5 clk=~clk;
 initial
 #150 $stop;
 
 endmodule
