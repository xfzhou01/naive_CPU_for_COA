vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_8
vlib questa_lib/msim/xbip_pipe_v3_0_4
vlib questa_lib/msim/xbip_bram18k_v3_0_4
vlib questa_lib/msim/mult_gen_v12_0_13
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_8 questa_lib/msim/xbip_utils_v3_0_8
vmap xbip_pipe_v3_0_4 questa_lib/msim/xbip_pipe_v3_0_4
vmap xbip_bram18k_v3_0_4 questa_lib/msim/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 questa_lib/msim/mult_gen_v12_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_8 -64 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -64 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/ee5e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -64 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/9eb4/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -64 -93 \
"../../../../CPU.srcs/sources_1/bd/Multiply/ipshared/257f/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Multiply/ip/Multiply_mult_gen_0_0/sim/Multiply_mult_gen_0_0.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/Multiply/sim/Multiply.v" \


vlog -work xil_defaultlib \
"glbl.v"

