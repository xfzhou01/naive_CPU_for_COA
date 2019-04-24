vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/dist_mem_gen_v8_0_12
vlib questa_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_12 questa_lib/msim/dist_mem_gen_v8_0_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_12 -64 \
"../../../../CPU.srcs/sources_1/bd/MCU_mem/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/MCU_mem/ip/MCU_mem_dist_mem_gen_0_0/sim/MCU_mem_dist_mem_gen_0_0.v" \
"../../../bd/MCU_mem/sim/MCU_mem.v" \

vlog -work xil_defaultlib \
"glbl.v"

