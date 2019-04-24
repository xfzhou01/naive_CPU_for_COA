`timescale 1ns / 1ps

module Test_top();

reg clk = 0;
reg rst = 1;
//wire [15:0] print;
wire [3:0] led_en ;
wire [7:0] led ;
//wire sys_clk ;
//wire [1:0]scan_cnt ;

always begin
    #5 clk<=~clk;
end


top_design tpd(
    .clk(clk),
    .rst(rst),
    .select_out(led_en),
    .num_out(led)
    );

endmodule
