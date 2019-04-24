`timescale 1ns / 1ps

module CPU(
    // Memory Address Register
    output      [7:0]   MAR_out,
    // Memory Buffer Register
    input      [15:0]    MBR_in,
    output     [15:0]   MBR_out,
    output             bus_ctrl,
    input               sys_clk,
    input                   rst,
    output     [31:0]   printer  );
    
    reg        [7:0]     MAR = 0;     // Memory Address Register
    reg       [15:0]     MBR = 0;     // Memory Buffer Register
    reg        [7:0]      PC = 0;     // Program Counter
    reg        [7:0]      IR = 0;     // Instruction Register
    reg       [15:0]     ACC = 0;     // Accumulator
    reg       [15:0]      BR = 0;     // Buffer Register
    reg       [15:0]      MR = 0;     // Mutiply Register
    // CPU指令集 高8位为操作码，低8位为操作数
    wire      [15:0]     control;
    assign     printer[15:0] = ACC;
    assign     printer[31:16] = MR;
    wire      [31:0]     ALU_out;
    wire      [15:0]      ALU_in;
    wire       [3:0] ALU_control;
    // 我们要认清控制信号的本质是控制寄存器的
    // 控制信号为0，则为断路；控制信号为1，则为通路
    // 如果控制信号[12]为高电平时，输出MBR，否则置0
    assign MBR_out = (control[12] == 1'b0) ? 16'h0000 : MBR; 
    always @(posedge sys_clk) begin
        // MBR输入受到钟控制
    // 控制信号[5]为高电平时，MBR由输入端直通
        if (control[5] == 1'b1 && rst == 1'b1) begin
            MBR <= MBR_in;
    // 控制信号[11]为高电平时，MBR = ACC
        end else if(control[11] == 1'b1 && rst == 1'b1) begin
            MBR <= ACC;
    // 控制信号[1]为高电平时，MBR = [0000_0000_PC]    
        end else if(control[1] == 1'b1 && rst==1'b1) begin
            MBR[7:0]  <= PC;
            MBR[15:8] <= 8'h00; 
        end else if(rst==1'b1) begin
            MBR <= MBR;
        end else begin 
            MBR <= 0;
        end
    end
    
    // 控制MAR
    assign MAR_out = (control[0] == 1'b1) ? MAR : 8'h00;
    always @(posedge sys_clk) begin
        if (control[8] == 1'b1 && rst == 1'b1) begin
            MAR <= MBR[7:0];  //这里暂定MBR的低7位给MAR作为地址用
        end else if(control[2] == 1'b1 && rst == 1'b1) begin
            MAR <= PC;
        end else if(rst == 1'b1) begin
            MAR <= MAR;
        end else begin
            MAR <= 0;
        end
    end
    
    // 控制PC
    always @(posedge sys_clk) begin
        if (control[3] == 1'b1 && rst == 1'b1) begin
            PC <= MBR[7:0];
        end else if (control[14] == 1'b1 && rst == 1'b1) begin
            PC <= PC + 1'b1;  //这里直接用+综合不是很好
        end else if(rst == 1'b1) begin
            PC <= PC;
        end else begin
            PC <= 0;
        end
    end
    
    // 控制IR，IR存放了指令的操作码部分
    always @(posedge sys_clk) begin
        if (control[4] == 1'b1 && rst == 1'b1) begin
            IR <= MBR[15:8];
        end else if(rst == 1'b1) begin
            IR <= IR;
        end else begin
            IR <= 0;
        end
    end
    
    // 控制ACC
    always @(posedge sys_clk) begin
        if (control[10]==1'b1 && rst==1'b1) begin
            ACC <= MBR;
        end else if(control[9]==1'b1&& rst==1'b1) begin
            ACC <= ALU_out[15:0];
        end else if(control[15]==1'b1&& rst==1'b1) begin
            ACC <= 16'h0000;
        end else if(rst==1'b1) begin
            ACC <= ACC;
        end else begin
            ACC <= 0;
        end
    end
    
    // 控制MR
    always @(posedge sys_clk) begin
        //if (control[10]==1'b1 && rst==1'b1) begin
        //    ACC <= MBR;
        if(control[9]==1'b1&& rst==1'b1) begin
            MR <= ALU_out[31:16];
        end else if(control[15]==1'b1&& rst==1'b1) begin
            MR <= 16'h0000;
        end else if(rst==1'b1) begin
            MR <= MR;
        end else begin
            MR <= 0;
        end
    end    
    
    // 控制BR
    always @(posedge sys_clk) begin
        if (control[6]==1'b1&& rst==1'b1) begin
            BR <= MBR;
        end else if(rst==1'b1) begin
            BR <= BR;
        end else begin
            BR <= 0;
        end
    end
    // 下面开始写ALU和MCU
    assign ALU_in = (control[7] == 1'b0) ? (0) : (ACC);
    
    ALU alu(
        .ALU_inACC(ALU_in),
        .ALU_inMBR(BR),
        .ALU_out(ALU_out),
        .sys_clk(sys_clk),
        .control_ALU(ALU_control)
        );
    
     wire [7:0] alu_flag;
     ALU_flag_generator afg(
            .ACC(ACC),
            .flag(alu_flag)
            );   
            
     wire [7:0] opcode_in = (control[13] == 1'b1) ? (IR): (0);
     MCU mcu(
           .ALU_flag(alu_flag),
           .sys_clk(sys_clk),
           .opcode(opcode_in),
           .rst(rst),
           
           .control_wire(control),
           .control_alu(ALU_control),
           .control_bus(bus_ctrl)
           );
    //下面是复位
//    reg [7:0] MAR;      // Memory Address Register
//    reg [15:0] MBR;     // Memory Buffer Register
//    reg [7:0] PC;       // Program Counter
//    reg [7:0] IR;       // Instruction Register
//    reg [15:0] ACC;     // Accumulator
//    reg [15:0] BR;      // Buffer Register
//    always @(posedge sys_clk) begin
//        if(rst==1'b0) begin
//            MAR <= 0;
//            MBR <= 0;
//            PC <= 0;
//            IR <= 0;
//            ACC <= 0;
//            BR <= 0;
//        end                
//    end
    
endmodule
