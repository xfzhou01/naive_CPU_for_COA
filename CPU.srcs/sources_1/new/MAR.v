`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/02 14:44:34
// Design Name: 
// Module Name: MAR
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


module MAR(
    CLK , RAM_ADDR ,  MBR_MAR , PC_MAR , CU
    );
    input                      CLK               ;
    input         [7:0]     MBR_MAR   ; 
    input         [7:0]     PC_MAR       ;
    input       [31:0]     CU                  ; // C5: COPY MBR TO MAR // C10: COPY PC TO MAR 
    output       [7:0]     RAM_ADDR  ;

    reg           [7:0]     addr                ;
    
 always @ ( posedge CLK )
    begin
        addr <= 8'b0 ;
        if ( CU [5] == 1)
            begin
                addr [7:0] <= MBR_MAR [7:0] ;
            end
         if ( CU[10] == 1)
            begin
                addr [7:0] <= PC_MAR [7:0] ;
            end
    end
endmodule
