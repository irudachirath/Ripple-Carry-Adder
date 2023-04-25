-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar 18 14:49:04 2023
-- Host        : LAPTOP-2C5C2MOC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/Academic/02. Computer Organization and Digital Design/Lab
--               Work/LAB_3/LAB_3.srcs/sources_1/ip/FA_0/FA_0_sim_netlist.vhdl}
-- Design      : FA_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_0_FA is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C_in : in STD_LOGIC;
    S : out STD_LOGIC;
    C_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_0_FA : entity is "FA";
end FA_0_FA;

architecture STRUCTURE of FA_0_FA is
begin
C_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => C_in,
      I1 => B,
      I2 => A,
      O => C_out
    );
S_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => C_in,
      I1 => A,
      I2 => B,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C_in : in STD_LOGIC;
    S : out STD_LOGIC;
    C_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FA_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FA_0 : entity is "FA_0,FA,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FA_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FA_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of FA_0 : entity is "FA,Vivado 2018.2";
end FA_0;

architecture STRUCTURE of FA_0 is
begin
U0: entity work.FA_0_FA
     port map (
      A => A,
      B => B,
      C_in => C_in,
      C_out => C_out,
      S => S
    );
end STRUCTURE;
