--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Thu Jun 18 21:33:13 2026
--Host        : Tushars-Legion running 64-bit major release  (build 9200)
--Command     : generate_target J_Cou.bd
--Design      : J_Cou
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity J_Cou is
  port (
    CLk : in STD_LOGIC;
    q0 : out STD_LOGIC;
    q1 : out STD_LOGIC;
    q2 : out STD_LOGIC;
    q3 : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of J_Cou : entity is "J_Cou,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=J_Cou,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of J_Cou : entity is "J_Cou.hwdef";
end J_Cou;

architecture STRUCTURE of J_Cou is
  component J_Cou_dff_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC;
    dn : out STD_LOGIC;
    dout : out STD_LOGIC
  );
  end component J_Cou_dff_0_0;
  component J_Cou_dff_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC;
    dn : out STD_LOGIC;
    dout : out STD_LOGIC
  );
  end component J_Cou_dff_0_1;
  component J_Cou_dff_0_2 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC;
    dn : out STD_LOGIC;
    dout : out STD_LOGIC
  );
  end component J_Cou_dff_0_2;
  component J_Cou_dff_0_3 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC;
    dn : out STD_LOGIC;
    dout : out STD_LOGIC
  );
  end component J_Cou_dff_0_3;
  signal dff_3_dn : STD_LOGIC;
  signal \^q0\ : STD_LOGIC;
  signal \^q1\ : STD_LOGIC;
  signal \^q2\ : STD_LOGIC;
  signal NLW_dff_0_dn_UNCONNECTED : STD_LOGIC;
  signal NLW_dff_1_dn_UNCONNECTED : STD_LOGIC;
  signal NLW_dff_2_dn_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN J_Cou_CLk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  q0 <= \^q0\;
  q1 <= \^q1\;
  q2 <= \^q2\;
dff_0: component J_Cou_dff_0_0
     port map (
      clk => CLk,
      din => dff_3_dn,
      dn => NLW_dff_0_dn_UNCONNECTED,
      dout => \^q0\,
      rst => rst
    );
dff_1: component J_Cou_dff_0_1
     port map (
      clk => CLk,
      din => \^q0\,
      dn => NLW_dff_1_dn_UNCONNECTED,
      dout => \^q1\,
      rst => rst
    );
dff_2: component J_Cou_dff_0_2
     port map (
      clk => CLk,
      din => \^q1\,
      dn => NLW_dff_2_dn_UNCONNECTED,
      dout => \^q2\,
      rst => rst
    );
dff_3: component J_Cou_dff_0_3
     port map (
      clk => CLk,
      din => \^q2\,
      dn => dff_3_dn,
      dout => q3,
      rst => rst
    );
end STRUCTURE;
