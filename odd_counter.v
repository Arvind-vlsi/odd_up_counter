`timescale 1ns / 1ps

module odd_counter(input clk,input reset,output [3:0]dout);
reg [2:0]temp=1;
always@(posedge clk)
begin
    if(reset==1'b1)
        temp<=1;
     else
        temp<=temp+2;
end
assign dout=temp;
endmodule
