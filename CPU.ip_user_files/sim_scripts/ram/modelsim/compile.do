vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_12 -64 -incr \
"../../../../CPU.srcs/sources_1/bd/ram/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/ram/ip/ram_dist_mem_gen_0_0/sim/ram_dist_mem_gen_0_0.v" \
"../../../bd/ram/sim/ram.v" \

vlog -work xil_defaultlib \
"glbl.v"

