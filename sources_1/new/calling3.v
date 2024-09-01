`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2024 01:00:53
// Design Name: 
// Module Name: calling3
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


module calling3(
    input [14:0] in,
    output reg [17:0] out,output reg done,
    input clk,
    input rst,output reg [2:0] k
    );
       
reg [14:0]dum[15:0];    
reg [4:0]i,j;
//reg [2:0]k;
parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
reg [3:0]state,nxtstate;
reg [7:0]in1;
reg [15:0]x1,x2,x3,x4,x5,x6,x7,x8;
reg [17:0]in2;
wire [14:0]c;

ROM4 h1(in1,k,c);

always @(posedge clk)
begin
    if(rst)
        begin
            i<=0;j<=0;k<=0;out<=0;
            state<=s0;
        end
        
    else
        begin
            state<=nxtstate;
            if(state==s0)
                begin
                    if(i<16)
                    begin
                        dum[i]<=in;
                        i<=i+1;
                    end
                end
                
            else if(state==s1)
                begin
                    x1<=dum[0]+~dum[15]+1; x5<=dum[4]+~dum[11]+1;  
                    x2<=dum[1]+~dum[14]+1; x6<=dum[5]+~dum[10]+1;  
                    x3<=dum[2]+~dum[13]+1; x7<=dum[6]+~dum[9]+1;  
                    x4<=dum[3]+~dum[12]+1; x8<=dum[7]+~dum[8]+1;
                end  
                
            else if(state==s2)
                begin
                        in1={x1[j],x2[j],x3[j],x4[j],x5[j],x6[j],x7[j],x8[j]};
                        if(done)
                            begin
                            out<=0;done<=0;
                            end
                        else
                            out<=out;    
                end
                
            else if(state==s3)
                begin
                    if(j==0)
                      in2<=$signed(c)>>>15;
                    else if(j==1)
                      in2<=$signed(c)>>>14;
                    else if(j==2)
                      in2<=$signed(c)>>>13;
                    else if(j==3)
                      in2<=$signed(c)>>>12;
                    else if(j==4)
                      in2<=$signed(c)>>>11;
                    else if(j==5)
                      in2<=$signed(c)>>>10;
                    else if(j==6)
                      in2<=$signed(c)>>>9;   
                     else if(j==7)
                      in2<=$signed(c)>>>8;
                    else if(j==8)
                      in2<=$signed(c)>>>7;
                    else if(j==9)
                      in2<=$signed(c)>>>6;
                      else if(j==10)
                      in2<=$signed(c)>>>5; 
                    else if(j==11)
                      in2<=$signed(c)>>>4; 
                    else if(j==12)
                      in2<=$signed(c)>>>3; 
                     else if(j==13)
                      in2<=$signed(c)>>>2; 
                     else if(j==14)
                      in2<=$signed(c)>>>1;      
                    else if(j==15)
                      in2<=~c+1;                   
                end      
                
            else if(state==s4)
                begin
                    if(j<16)
                    begin
                        out<=out+in2;
                        j<=j+1;
                        done<=0;    
                    end
                    else
                        begin
                        out<=out<<5;
                        j<=0;
                        done<=1;
                        if(k<4)
                            k<=k+1;
                        else
                            k<=4;    
                        end
                    
                end    
            else 
                begin
                    out<=0;i<=0;j<=0;k<=5;in1<=0;in2<=0;done<=0;
                end        
        end    


end

always @ (*)
begin
    if(state==s0)
        begin
            if(i<16)
                nxtstate<=s0;
            else
                nxtstate<=s1;    
        end
        
    else if(state==s1)
        begin
            nxtstate<=s2;    
        end 
        
    else if(state==s2)
        begin
            if(k==4)
               nxtstate<=s5; 
            else    
                nxtstate<=s3;        
        end 
        
    else if(state==s3)
        begin
            nxtstate<=s4;    
        end   
   else if(state==s4)
        begin
           nxtstate<=s2;  
        end  
   else
       nxtstate<=s5;                      
           
end

endmodule

