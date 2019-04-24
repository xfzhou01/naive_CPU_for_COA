`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/30 22:11:56
// Design Name: 
// Module Name: Test_ALU
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


module Test_ALU( );
    reg                   CLK            ;
    reg     [15:0]    ACC_IN      ;
    reg     [15:0]    BR               ;
    reg     [32:0]    CU               ;
    wire   [15:0]    ACC_OUT   ;
    wire                 TAG_MUX  ;
    wire   [15:0]    MR               ;
    initial
        begin
            CLK        <=   0 ;
            ACC_IN  <=  16'b0111_1111_0100_1000 ;
            BR           <=  16'b0000_0000_0010_0100 ;
            CU           <=  32'b0000_0000_0000_0000_0010_0000_0000_0000 ;

        end
     always # 20 CLK = ~ CLK ;
    ALU alu(
        .CLK(CLK) ,
        .ACC_IN(ACC_IN) ,
        .BR(BR) , 
        .CU(CU) ,
        .ACC_OUT(ACC_OUT) ,
        .TAG_MUX(TAG_MUX) ,
        .MR(MR)
        ) ;
endmodule
