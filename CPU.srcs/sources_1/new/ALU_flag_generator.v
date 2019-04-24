`timescale 1ns / 1ps

module ALU_flag_generator(
    input  [15:0]  ACC,
    output  [7:0] flag );
    
    assign flag[0] = (ACC[15] == 1'b0);  //是否大于or为0
    assign flag[1] = (ACC == 0) || (ACC[15] == 1'b1);
    assign flag[2] = (ACC == 0);
    assign flag[3] = (ACC[15] == 1'b0);
    assign flag[4] = (ACC[15] == 1'b1);
    assign flag[5] = 0;
    assign flag[6] = 0;
    assign flag[7] = 0;
       
endmodule
