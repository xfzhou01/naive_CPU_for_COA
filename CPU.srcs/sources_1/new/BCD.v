`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 14:25:11
// Design Name: 
// Module Name: BCD
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
 module   Binary2BCD(inClk, inData, outData);
 input   inClk;
 input   [15:0] inData;
output  [19:0]outData;
 
 
 reg     [4:0]count10 = 9;
 reg     [19:0]ShiftReg;
 
 
     always@(posedge inClk)
     begin
         if(count10 >= 0 && count10 <= 9)
         begin
             count10 <= count10 - 1'b1;      
         end
       else
             count10 <= 5'd19;
     end
 
     always @(posedge inClk)
     begin
         //for(i = 9; i >= 0; i = i - 1)
         if(count10 >= 0 && count10 <= 9)
         begin
             // shift left 
             ShiftReg = (ShiftReg << 1);
             ShiftReg[0] = inData[count10];
            //adjust by add 3
            if(ShiftReg[19:16] > 4)
                ShiftReg[19:16] = ShiftReg[19:16] + 2'd3;
            else
                ShiftReg[19:16] = ShiftReg[19:16];
            
             if(ShiftReg[15:12] > 4)
                 ShiftReg[15:12] = ShiftReg[15:12] + 2'd3;
             else
                 ShiftReg[15:12] = ShiftReg[15:12];
             
             if(ShiftReg[11:8] > 4)
                 ShiftReg[11:8] = ShiftReg[11:8] + 2'd3;
             else
                 ShiftReg[11:8] = ShiftReg[11:8];            
         
             if(ShiftReg[7:4] > 4)
                 ShiftReg[7:4] = ShiftReg[7:4] + 2'd3;
             else
                 ShiftReg[7:4] = ShiftReg[7:4];
         
             if(ShiftReg[3:0] > 4)
                 ShiftReg[3:0] = ShiftReg[3:0] + 2'd3;
             else
                 ShiftReg[3:0] = ShiftReg[3:0];        
         
                         
         end
         else
             ShiftReg = ShiftReg;
     end
 
         assign outData = ShiftReg;
         
endmodule