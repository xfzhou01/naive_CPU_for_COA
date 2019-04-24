vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_8
vlib riviera/xbip_pipe_v3_0_4
vlib riviera/xbip_bram18k_v3_0_4
vlib riviera/mult_gen_v12_0_13
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_8 riviera/xbip_utils_v3_0_8
vmap xbip_pipe_v3_0_4 riviera/xbip_pipe_v3_0_4
vmap xbip_bram18k_v3_0_4 riviera/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 riviera/mult_gen_v12_0_13
vmap xil_defaultlib riviera/xil_defaultlib

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

