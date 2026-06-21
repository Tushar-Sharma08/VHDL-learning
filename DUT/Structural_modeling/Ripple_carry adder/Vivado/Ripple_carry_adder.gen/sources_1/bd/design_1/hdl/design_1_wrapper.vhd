--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Sun Jun 14 15:30:32 2026
--Host        : Tushars-Legion running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    a0 : in STD_LOGIC;
    a1 : in STD_LOGIC;
    a2 : in STD_LOGIC;
    a3 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    b1 : in STD_LOGIC;
    b2 : in STD_LOGIC;
    b3 : in STD_LOGIC;
    cin_0 : in STD_LOGIC;
    cout_0 : out STD_LOGIC;
    s0 : out STD_LOGIC;
    s1 : out STD_LOGIC;
    s2 : out STD_LOGIC;
    s4 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    s4 : out STD_LOGIC;
    a3 : in STD_LOGIC;
    b3 : in STD_LOGIC;
    cout_0 : out STD_LOGIC;
    a2 : in STD_LOGIC;
    b2 : in STD_LOGIC;
    s2 : out STD_LOGIC;
    cin_0 : in STD_LOGIC;
    s0 : out STD_LOGIC;
    s1 : out STD_LOGIC;
    b1 : in STD_LOGIC;
    a1 : in STD_LOGIC;
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      a0 => a0,
      a1 => a1,
      a2 => a2,
      a3 => a3,
      b0 => b0,
      b1 => b1,
      b2 => b2,
      b3 => b3,
      cin_0 => cin_0,
      cout_0 => cout_0,
      s0 => s0,
      s1 => s1,
      s2 => s2,
      s4 => s4
    );
end STRUCTURE;
