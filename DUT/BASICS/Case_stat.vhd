----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2026 15:10:27
-- Design Name: 
-- Module Name: Case_stat - Behavioral
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

entity Case_stat is
    Port ( a,b,c,d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
end Case_stat;

architecture Behavioral of Case_stat is
begin

process(a,b,c,d,sel)
begin
case(sel)is
  when "00" =>
  y<=a;
  when "01" =>
  y<=b;
  when "10" =>
  y<=c;
  when "11" =>
  y<=d;
  when others =>
  y<='0';
  
end case;

end process;

end Behavioral;
