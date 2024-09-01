`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2024 00:48:10
// Design Name: 
// Module Name: add_up
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


module add_up(
    input [14:0] in,
    output reg [17:0] out1,output reg [17:0] out2,
    output reg [17:0] out4,output reg [17:0] out3,
    input clk,
    input rst
    );
    
wire done,done1,done2,done3;
wire [2:0]k,k1,k2,k3;
wire [17:0]ou1,ou4,ou2,ou3;

calling x1(in,ou1,done,clk,rst,k); 
calling1 x2(in,ou2,done1,clk,rst,k1);
calling2 x3(in,ou3,done2,clk,rst,k2);
calling3 x4(in,ou4,done3,clk,rst,k3);

////assign out1=(done ==1 && k<5) ? ou1 : 0;
//assign out1=(k<5) ? ou1 : 0;
//assign out2=(done1 ==1 && k<5) ? ou2 : 0;
//assign out3=(done2 ==1 && k<5) ? ou3 : 0;
//assign out4=(done3 ==1 && k<5) ? ou4 : 0;


always @(*)
begin
if(done ==1)
    begin
    out1<=ou1;out2<=ou2;out3<=ou3;out4<=ou4;
    end    
end      
endmodule
