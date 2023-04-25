-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar 18 14:49:04 2023
-- Host        : LAPTOP-2C5C2MOC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Academic/02. Computer Organization and Digital Design/Lab
--               Work/LAB_3/LAB_3.srcs/sources_1/ip/FA_0/FA_0_stub.vhdl}
-- Design      : FA_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C_in : in STD_LOGIC;
    S : out STD_LOGIC;
    C_out : out STD_LOGIC
  );

end FA_0;

architecture stub of FA_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,C_in,S,C_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FA,Vivado 2018.2";
begin
end;
