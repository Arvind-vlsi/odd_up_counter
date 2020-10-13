`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 09:30:38 AM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();

reg clk=0;
reg reset=0;
wire [2:0]dout;
odd_counter dut(clk,reset,dout);
always #5 clk=~clk;
initial begin
    #50 reset=1;
    #10 $stop;
end


endmodule
