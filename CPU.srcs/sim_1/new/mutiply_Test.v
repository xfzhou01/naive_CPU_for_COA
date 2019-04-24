`timescale 1ns / 1ps

module mutiply_Test();

reg [15:0] input1 = 10;
reg [15:0] input2 = 20;
reg clk = 0;

wire [15:0] output1;

 Multiply_wrapper mul
   (.A_0(input1),
    .B_0(input2),
    .CLK_0(clk),
    .P_0(output1));

always begin
    #10 clk <= ~clk;
end

endmodule
