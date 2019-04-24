`timescale 1ns / 1ps

`define _LOAD_   8'h02
`define _STORE_  8'h01
`define _ADD_    8'h03
`define _JMPGEZ_ 8'h05
`define _SUB_    8'h04
`define _MUL_    8'h06
`define _AND_    8'h07
`define _OR_     8'h08
`define _NOT_    8'h09
`define _SRL_    8'h0A
`define _SRR_    8'h0B
`define _HALT_   8'hFF

module MCU(
    input [7:0] ALU_flag,
    input sys_clk,
    input [7:0] opcode,
    input rst,
    
    output [15:0] control_wire,
    output [3:0] control_alu,
    output control_bus
    );
    reg [6:0] CAR = 0;
    //reg [27:0] control_signal_buffer = 0;
    wire [27:0] control_signal_wire;
    MCU_mem_wrapper mmw
       (.a_0(CAR),
        .spo_0(control_signal_wire));
        
    //always @(posedge sys_clk) begin
    //    control_signal_buffer <= control_signal_wire;
    //end
    wire [7:0] halt;
    //如何确定下一个指令的地址？
    assign halt = opcode;
    wire [6:0] addr_ir;
    wire should_back;
    assign addr_ir = (halt==`_LOAD_)   ?(7'd4) :
                     ((halt==`_STORE_) ?(7'd12):
                     ((halt==`_ADD_)   ?(7'd8) :
                     ((halt==`_JMPGEZ_)?(7'd19):
                     ((halt==`_SUB_)   ?(7'd15):
                     ((halt==`_MUL_)   ?(7'd20):
                     ((halt==`_AND_)   ?(7'd25):
                     ((halt==`_OR_)    ?(7'd29):
                     ((halt==`_NOT_)   ?(7'd33):
                     ((halt==`_SRL_)   ?(7'd34):
                     ((halt==`_SRR_)   ?(7'd35):
                     ((halt==`_HALT_)  ?(7'd127):(6'd0))))))))))));
    
    assign should_back = (CAR==7||CAR==11||CAR==14||CAR==18||
                          CAR==24||CAR==28||CAR==32||CAR==33||CAR==34||CAR==35);
    
    always @(posedge sys_clk) begin
        // address
        // alu_flag
        if(halt == `_JMPGEZ_ && ALU_flag[0]==1'b1 && CAR != 19 && rst==1'b1) begin
            CAR <= 19;
        end else if(halt == `_JMPGEZ_ && ALU_flag[0]==1'b0 && CAR != 19 && rst==1'b1) begin
            CAR <= control_signal_wire[6:0];
        end else if(CAR == 19 && rst==1'b1) begin
            CAR <= control_signal_wire[6:0];
        end else if(CAR==3 && rst==1'b1) begin
            CAR <= addr_ir;
        end else if(should_back==1'b1 && rst==1'b1) begin
            CAR <= 0;
        end else if(halt==`_HALT_ && rst==1'b1) begin
            CAR <= 7'b1111111;
        end else if(rst==1'b1 && CAR != 7'b1111111) begin
            CAR <= CAR + 1; 
        end else if(rst==1'b1) begin
            CAR <= CAR;
        end else begin
            CAR <= 0;
        end
    end
    
    assign control_bus = control_signal_wire[11];
    assign control_alu = control_signal_wire[10:7];
    assign control_wire = control_signal_wire[27:12];

    //复位
//    always @(posedge sys_clk) begin
//        if (rst==1'b0) begin
//            //control_signal_buffer <= 0;
//            CAR <= 0;
//            //halt <= 0;
//        end
//    end
endmodule
