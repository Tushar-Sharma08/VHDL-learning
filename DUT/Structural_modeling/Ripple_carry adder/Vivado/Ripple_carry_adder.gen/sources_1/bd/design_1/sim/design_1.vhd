--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Sun Jun 14 15:30:32 2026
--Host        : Tushars-Legion running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_FA_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC;
    s : out STD_LOGIC;
    cout : out STD_LOGIC
  );
  end component design_1_FA_0_0;
  component design_1_FA_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC;
    s : out STD_LOGIC;
    cout : out STD_LOGIC
  );
  end component design_1_FA_0_1;
  component design_1_FA_0_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC;
    s : out STD_LOGIC;
    cout : out STD_LOGIC
  );
  end component design_1_FA_0_2;
  component design_1_FA_0_3 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC;
    s : out STD_LOGIC;
    cout : out STD_LOGIC
  );
  end component design_1_FA_0_3;
  signal FA_0_cout : STD_LOGIC;
  signal FA_1_cout : STD_LOGIC;
  signal FA_2_cout : STD_LOGIC;
begin
FA_0: component design_1_FA_0_0
     port map (
      a => a0,
      b => b0,
      cin => cin_0,
      cout => FA_0_cout,
      s => s0
    );
FA_1: component design_1_FA_0_1
     port map (
      a => a1,
      b => b1,
      cin => FA_0_cout,
      cout => FA_1_cout,
      s => s1
    );
FA_2: component design_1_FA_0_2
     port map (
      a => a2,
      b => b2,
      cin => FA_1_cout,
      cout => FA_2_cout,
      s => s2
    );
FA_3: component design_1_FA_0_3
     port map (
      a => a3,
      b => b3,
      cin => FA_2_cout,
      cout => cout_0,
      s => s4
    );
end STRUCTURE;
