`timescale 1ns / 1ps

//ADD (ACC)  (ACC) + (BR)
//SUB (ACC)  (ACC) - (BR)
//MUL (ACC)  (ACC) * (BR)
//AND (ACC)  (ACC) and (BR)
//OR (ACC)  (ACC) or (BR)
//NOT (ACC)  Not (ACC)
//SRL (ACC)  Shift (ACC) to Left 1 bit
//SRR (ACC)  Shift (ACC) to Right 1 bit

`define ADD 4'h3
`define SUB 4'h4
`define MUL 4'h5
`define AND 4'h6
`define OR  4'h7
`define NOT 4'h8
`define SRL 4'h9
`define SRR 4'hA

// 这里，16位乘法比较复杂，我们分成两个时钟，相应地，微控制器也应当等待

module ALU(
    input   [15:0]   ALU_inACC,
    input   [15:0]   ALU_inMBR,
    output  [31:0]     ALU_out,
    //output  [15:0]     MR_out,
    input              sys_clk,
    input    [3:0] control_ALU );
    wire [31:0] MUL_result;
    assign ALU_out[15:0] =  (control_ALU == `ADD) ? (ALU_inACC + ALU_inMBR)   :
                     ((control_ALU == `SUB) ? (ALU_inACC - ALU_inMBR)   :
                     ((control_ALU == `MUL) ? (MUL_result[15:0])              :
                     ((control_ALU == `AND) ? (ALU_inACC & ALU_inMBR)   :
                     ((control_ALU == `OR)  ? (ALU_inACC | ALU_inMBR)   :
                     ((control_ALU == `NOT) ? (~ALU_inACC)              :
                     ((control_ALU == `SRL) ? ({ALU_inACC[14:0] , 1'b0}):
                     ((control_ALU == `SRR) ? ({1'b0 , ALU_inACC[15:1]}):(0))))))));
                     
    assign ALU_out[31:16] = (control_ALU == `MUL) ? (MUL_result[31:16]) : (0);
    
    Multiply_wrapper mul
                    (.A_0(ALU_inACC),
                     .B_0(ALU_inMBR),
                     .CLK_0(sys_clk),
                     .P_0(MUL_result));
    
endmodule
