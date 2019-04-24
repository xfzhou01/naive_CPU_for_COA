vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_8
vlib activehdl/xbip_pipe_v3_0_4
vlib activehdl/xbip_bram18k_v3_0_4
vlib activehdl/mult_gen_v12_0_13
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_8 activehdl/xbip_utils_v3_0_8
vmap xbip_pipe_v3_0_4 activehdl/xbip_pipe_v3_0_4
vmap xbip_bram18k_v3_0_4 activehdl/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 activehdl/mult_gen_v12_0_13
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_8 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/ee5e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/9eb4/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/257f/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Multiply/ip/Multiply_mult_gen_0_0/sim/Multiply_mult_gen_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Multiply/sim/Multiply.v" \


vlog -work xil_defaultlib \
"glbl.v"

