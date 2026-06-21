--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Thu Jun 18 21:33:13 2026
--Host        : Tushars-Legion running 64-bit major release  (build 9200)
--Command     : generate_target J_Cou_wrapper.bd
--Design      : J_Cou_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity J_Cou_wrapper is
  port (
    CLk : in STD_LOGIC;
    q0 : out STD_LOGIC;
    q1 : out STD_LOGIC;
    q2 : out STD_LOGIC;
    q3 : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end J_Cou_wrapper;

architecture STRUCTURE of J_Cou_wrapper is
  component J_Cou is
  port (
    rst : in STD_LOGIC;
    CLk : in STD_LOGIC;
    q0 : out STD_LOGIC;
    q1 : out STD_LOGIC;
    q2 : out STD_LOGIC;
    q3 : out STD_LOGIC
  );
  end component J_Cou;
begin
J_Cou_i: component J_Cou
     port map (
      CLk => CLk,
      q0 => q0,
      q1 => q1,
      q2 => q2,
      q3 => q3,
      rst => rst
    );
end STRUCTURE;
