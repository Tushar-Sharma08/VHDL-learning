----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2026 14:33:45
-- Design Name: 
-- Module Name: Asynchronus - Behavioral
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

entity Asynchronus is
    Port ( din,rst,clk : in STD_LOGIC;
           dout : out STD_LOGIC);
end Asynchronus;

architecture Behavioral of Asynchronus is

begin

process(clk,rst)
begin
if(rst='1')then
  dout<='0';
  else
    if(rising_edge(clk))then
      dout<=din;
      end if;
 end if;     

end process;

end Behavioral;
