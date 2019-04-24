`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/23 23:13:47
// Design Name: 
// Module Name: Test_tub
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


module Test_tub();
reg CLK = 0;
reg Reset = 1 ;
reg [15:0] ACC = 16'b0101_1010_1011_1011 ;
wire [3:0] Select_out ;
wire [7:0] Num_out ;
wire clkout ;
always begin
    #10 CLK= ~CLK;
end

    Tub TUB(.CLK(CLK),.Reset(Reset),.ACC(ACC),.Select_out(Select_out), .Num_out(Num_out),.clkout(clkout));
endmodule
