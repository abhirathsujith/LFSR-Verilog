`timescale 1ns / 1ps
module lfsr (q, clk, rst);
input clk, rst;
output reg [0:3]q;
initial 
q=4'b1010;
wire feedback;
assign feedback = q[3] ^ q[2];
always @(posedge clk)
 begin
 if (rst==1)
 q = 4'b0000;
 else
q = {feedback , q[0],q[1],q[2]};
end
endmodule
