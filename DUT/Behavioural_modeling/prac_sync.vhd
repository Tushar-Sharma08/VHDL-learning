----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2026 17:13:36
-- Design Name: 
-- Module Name: prac_sync - Behavioral
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

entity prac_sync is
 Port (din,clk,rst:in std_logic;
       dout: out std_logic
  );
end prac_sync;

architecture Behavioral of prac_sync is

begin

process(din,clk,rst)
begin

if(rst='1')then
   dout<='0';
   else
   if(rising_edge(clk))then
   dout<=din;
   end if;
end if;




--if(rising_edge(clk))then
--   if(rst='1')then
--   dout<='0';
--   else
--   dout<=din;
--   end if;
--end if;
end process;
end Behavioral;
