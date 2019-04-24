`timescale 1ns / 1ps

module top_design(
    input clk,
    input rst,
    output [7:0] select_out,
    output [7:0] num_out
    );
    wire rw; 
    wire [15:0] write_data;
    wire [15:0] read_data;
    wire [7:0] find_address;
    wire [31:0] print ;
    wire sys_clk ;
    reg [2:0] scan_cnt = 0;
    reg [7:0] Select_out = 0;
    reg [7:0] Num_out = 0; 
    reg [9:0] counter1 = 0;
    always @(posedge sys_clk) begin
        counter1 <= counter1 + 1'b1;
    end
   clk_wiz_1 clk_wiz(
         .clk_in1(clk),
         .clk_out1(sys_clk)
         );
    ram_wrapper ramw(
        .a_0(find_address),
        .clk_0(sys_clk),
        .d_0(write_data),
        .spo_0(read_data),
        .we_0(rw));
   
    CPU cpu(
           .MAR_out(find_address),
           .MBR_in(read_data),
           .MBR_out(write_data),
           .bus_ctrl(rw),
           .sys_clk(sys_clk),
           .rst(rst),
           .printer(print)
           );  
    always@(posedge counter1[9])          
    begin 
      scan_cnt <= scan_cnt + 1;    
      if(scan_cnt == 3'b111)  
        scan_cnt <= 0;
      case (scan_cnt)
           3'b000:
           begin
               Select_out <= 8'b11110111;  
               case(print[15:12])    
               4'b0000: Num_out <= 8'b0000_0011;
               4'b0001: Num_out <= 8'b1001_1111;
               4'b0010: Num_out <= 8'b0010_0101;
               4'b0011: Num_out <= 8'b0000_1101;
               4'b0100: Num_out <= 8'b1001_1001;
               4'b0101: Num_out <= 8'b0100_1001;
               4'b0110: Num_out <= 8'b0100_0001;
               4'b0111: Num_out <= 8'b0001_1111;
               4'b1000: Num_out <= 8'b0000_0001;
               4'b1001: Num_out <= 8'b0000_1001;
               4'b1010: Num_out <= 8'b0001_0001;
               4'b1011: Num_out <= 8'b1100_0001;
               4'b1100: Num_out <= 8'b0110_0011;
               4'b1101: Num_out <= 8'b1000_0101;
               4'b1110: Num_out <= 8'b0110_0001;
               4'b1111: Num_out <= 8'b0111_0001;
               default: Num_out <= 8'b0000_0011;
               endcase
           end
            3'b001:
            begin
                Select_out <= 8'b11111011;  
                case(print[11:8])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end
            
            3'b010:
            begin
                Select_out <= 8'b11111101;  
                case(print[7:4])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end
            
            3'b011:
            begin
                Select_out <= 8'b11111110;  
                case(print[3:0])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end
            3'b100:
            begin
                Select_out <= 8'b1110_1111;
                case(print[19:16])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end
            3'b101:
            begin
                Select_out <= 8'b1101_1111;
                case(print[23:20])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end            
            3'b110:
            begin
                Select_out <= 8'b1011_1111;
                case(print[27:24])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end
            3'b111:
            begin
                Select_out <= 8'b01111111;
                case(print[31:28])    
                4'b0000: Num_out <= 8'b0000_0011;
                4'b0001: Num_out <= 8'b1001_1111;
                4'b0010: Num_out <= 8'b0010_0101;
                4'b0011: Num_out <= 8'b0000_1101;
                4'b0100: Num_out <= 8'b1001_1001;
                4'b0101: Num_out <= 8'b0100_1001;
                4'b0110: Num_out <= 8'b0100_0001;
                4'b0111: Num_out <= 8'b0001_1111;
                4'b1000: Num_out <= 8'b0000_0001;
                4'b1001: Num_out <= 8'b0000_1001;
                4'b1010: Num_out <= 8'b0001_0001;
                4'b1011: Num_out <= 8'b1100_0001;
                4'b1100: Num_out <= 8'b0110_0011;
                4'b1101: Num_out <= 8'b1000_0101;
                4'b1110: Num_out <= 8'b0110_0001;
                4'b1111: Num_out <= 8'b0111_0001;
                default: Num_out <= 8'b0000_0011;
                endcase
            end                        
            endcase
    end   
        
    assign select_out = Select_out ;
    assign num_out = Num_out  ;
endmodule
