`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2024 11:36:35
// Design Name: 
// Module Name: ROM1
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


module ROM1( 
   input [3:0] A,input [2:0]k,

    output reg [14:0] out
    );

//storing for X2,X6,X10,X14    
always @ (*)
begin
    if (k==0) 
        begin
            if( A==4'd0)
            out<=15'b0;
            else if( A==4'd1)
            out<=15'b00000_0011000111;
            else if( A==4'd2)
            out<=15'b00000_1000111000;
            else if( A==4'd3)
            out<=15'b00000_1100000000;
            else if( A==4'd4)
            out<=15'b00000_1101010011;
            else if( A==4'd5)
            out<=15'b00001_0000011011;
            else if( A==4'd6)
            out<=15'b00001_0110001100;
            else if( A==4'd7)
            out<=15'b00001_1001010100;
            else if( A==4'd8)
            out<=15'b00000_1111101100;
            else if( A==4'd9)
            out<=15'b00001_0010110100;
            else if( A==4'd10)
            out<=15'b00001_1000100101;
            else if( A==4'd11)
            out<=15'b00001_1011101100;
            else if( A==4'd12)
            out<=15'b00001_1100111111;
            else if( A==4'd13)
            out<=15'b00010_0000000111;
            else if( A==4'd14)
            out<=15'b00010_0101111000;
            else 
            out<=15'b00010_1001000000;
        end 
    
    else if(k==1)
        begin
            if(A==4'd0)
                out<=15'b000000000000000;
            else if(A==4'd1)
                out<=15'b111110111001000;
            else if(A==4'd2)
                out<=15'b111110000010100;
            else if(A==4'd3)
                out<=15'b111100111011100;
            else if(A==4'd4)
                out<=15'b111111100111001;
            else if(A==4'd5)
                out<=15'b111110100000001;
            else if(A==4'd6)
                out<=15'b111101101001101;
            else if(A==4'd7)
                out<=15'b111100100010101;
            else if(A==4'd8)
                out<=15'b000001101010011;
            else if(A==4'd9)
                out<=15'b000000100011011;
            else if(A==4'd10)
                out<=15'b111111101100111;
            else if(A==4'd11)
                out<=15'b111110100101111;
            else if(A==4'd12)
                out<=15'b000001010001100;
            else if(A==4'd13)
                out<=15'b000000001010100;
            else if(A==4'd14)
                out<=15'b111111010100000;
            else 
                out<=15'b111110001101000;        
        end
        
    else if(k==2)
        begin
            if(A==4'd0)
                out<=15'b000000000000000;
            else if(A==4'd1)
                out<=15'b000001101010011;
            else if(A==4'd2)
                out<=15'b000000011000111;
            else if(A==4'd3)
                out<=15'b000010000011010;
            else if(A==4'd4)
                out<=15'b111110000010100;
            else if(A==4'd5)
                out<=15'b111111101100111;
            else if(A==4'd6)
                out<=15'b111110011011011;
            else if(A==4'd7)
                out<=15'b000000000101110;
            else if(A==4'd8)
                out<=15'b000001000111000;
            else if(A==4'd9)
                out<=15'b000010110001011;
            else if(A==4'd10)
                out<=15'b000001011111111;
            else if(A==4'd11)
                out<=15'b000011001010010;
            else if(A==4'd12)
                out<=15'b111111001001100;
            else if(A==4'd13)
                out<=15'b000000110011111;
            else if(A==4'd14)
                out<=15'b111111100010011;
            else 
                out<=15'b000001001100110;              
        end
        
     //else if(k==3)
     else 
        begin
            if(A==4'd0)
                out<=15'b000000000000000;
            else if(A==4'd1)
                out<=15'b111110000010100;
            else if(A==4'd2)
                out<=15'b000001101010011;
            else if(A==4'd3)
                out<=15'b111111101100111;
            else if(A==4'd4)
                out<=15'b111110111001000;
            else if(A==4'd5)
                out<=15'b111100111011100;
            else if(A==4'd6)
                out<=15'b000000100011011;
            else if(A==4'd7)
                out<=15'b111110100101111;
            else if(A==4'd8)
                out<=15'b000000011000111;
            else if(A==4'd9)
                out<=15'b111110011011011;
            else if(A==4'd10)
                out<=15'b000010000011010;
            else if(A==4'd11)
                out<=15'b000000000101110;
            else if(A==4'd12)
                out<=15'b111111010001111;
            else if(A==4'd13)
                out<=15'b111101010100011;
            else if(A==4'd14)
                out<=15'b000000111100010;
            else 
                out<=15'b111110111110110;      
        end
       
             
end 
endmodule
