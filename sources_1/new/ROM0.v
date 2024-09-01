`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 19:25:00
// Design Name: 
// Module Name: ROM0
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


module ROM0(
    input [3:0] A,input [2:0]k,
    output reg [14:0] out
    );
    //for 0,4,8,12 
always @ (*)
begin
    if (k==0) 
        begin
            if(A==4'd1 || A==4'd2 || A==4'd4 || A==4'd8)
                out<=15'b00000_1011010011;  // A
                
            else if (A==4'd3 || A==4'd5 ||A==4'd6 || A==4'd9 || A==4'd10 || A==4'd12 )
                out<=15'b00001_0110101000;   //2A
                
            else if(A==4'd7 || A==4'd11 || A==4'd13 || A==4'd14)
                out<=15'b00010_0001111100;    //3A
                 
            else if(A==4'd15)
                out<=15'b00010_1101010000;     // 4A
            else 
                out<=0;
        end 
    
    else if(k==1)
        begin
            if(A==4'd0 || A==4'd6 || A==4'd9 || A==4'd15)
                out<=0;
                
            else if(A==4'd8 || A==4'd14)
                out<=15'b00000_1110110010; //b
            
            else if(A==4'd4 || A==4'd13)
                out<=15'b00000_0110000111; //c
                
             else if(A==4'd1 || A==4'd7)
                out<=15'b11111_0001001110; // -b
                
             else if(A==4'd2 || A==4'd11)
                out<=15'b11111_1001111001; //-c
                
             else if(A==4'd12)
                out<=15'b00001_0100111001;    //b+c
                
             else if(A==4'd3)
                out<=15'b11110_1011000111; // -(b+c)
                
             else if(A==4'd10)
                out<=15'b00000_1000101010; //b-c
             
             else 
                out<=15'b11111_0111010110;      // -(b-c)         
        end
        
    else if(k==2)
        begin
            if(A==4'd0 || A==4'd3 || A==4'd5 || A==4'd10 || A==4'd12 || A==4'd15)
                out<=0;   //0
                
            else if( A==4'd1 || A==4'd8 || A==4'd11 || A==4'd13)
                out<=15'b00000_1011010011;  // A
            
            else if(A==4'd2  || A==4'd4  || A==4'd7 || A==4'd14)
                out<=15'b11111_0100101101;   // -A
                
             else if(A==9)
                out<=15'b00001_0110101000;   // 2A
             
             else 
                out<=15'b11110_1001011000;   // -2A            
        end
        
     //else if(k==3)
     else 
        begin
            if(A==4'd0 || A==4'd6 || A==4'd9 || A==4'd15)
                out<=0;
                
            else if(A==4'd8 || A==4'd14)
                out<=15'b00000_0110000111; //c
               
            else if(A==4'd4 || A==4'd13)
                out<=15'b11111_0001001110; // -b
                
             else if(A==4'd1 || A==4'd7)
                 out<=15'b11111_1001111001; //-c
                
             else if(A==4'd2 || A==4'd11)
              out<=15'b00000_1110110010; //b
                
             else if(A==4'd10)
                out<=15'b00001_0100111001;    //b+c
                
             else if(A==4'd5)
                out<=15'b11110_1011000111; // -(b+c)
                
             else if(A==4'd3)
                out<=15'b00000_1000101010; //b-c
             
             else 
                out<=15'b11111_0111010110;      // -(b-c)         
        end
       
             
end    
endmodule
