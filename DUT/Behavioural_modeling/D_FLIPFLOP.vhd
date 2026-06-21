----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2026 14:03:28
-- Design Name: 
-- Module Name: D_FLIPFLOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FLIPFLOP is
    Port ( din,clk,rst : in STD_LOGIC;
           dout : out STD_LOGIC);
end D_FLIPFLOP;

architecture Behavioral of D_FLIPFLOP is

begin

process(clk)

begin

if(rising_edge(clk))then --falling edge (clk)

       if(rst='1')then
       dout<='0';
       else
       dout<=din;
       end if;
       
end if;
end process;
end Behavioral;
