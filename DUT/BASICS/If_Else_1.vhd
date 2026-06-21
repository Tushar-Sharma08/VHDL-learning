----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2026 13:01:33
-- Design Name: 
-- Module Name: If_Else_1 - Behavioral
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

entity If_Else_1 is
    Port ( a,b,c,d : in STD_LOGIC;
           sel: in std_logic_vector(1 downto 0);
           y : out STD_LOGIC);
end If_Else_1;

architecture Behavioral of If_Else_1 is

begin
-- for 2:1 Mux
--p1:process(a,b,sel)
--begin

--if(sel='0')then
--y<=a; 
--else
--y<=b;
--end if;
--end process;

p2: process(a,b,c,d,sel)
begin

if(sel="00")then
y<=a;
elsif(sel="01")then
y<=b;
elsif(sel="10")then
y<=c;
elsif(sel="11")then
y<=d;
else
y<='0';
end if;

end process;
end Behavioral;
