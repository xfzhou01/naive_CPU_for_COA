-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Apr 24 22:06:07 2019
-- Host        : Hobo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top MCU_mem_dist_mem_gen_0_1 -prefix
--               MCU_mem_dist_mem_gen_0_1_ MCU_mem_dist_mem_gen_0_1_stub.vhdl
-- Design      : MCU_mem_dist_mem_gen_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MCU_mem_dist_mem_gen_0_1 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 27 downto 0 )
  );

end MCU_mem_dist_mem_gen_0_1;

architecture stub of MCU_mem_dist_mem_gen_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[6:0],spo[27:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_12,Vivado 2018.2";
begin
end;
