----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2026 15:49:43
-- Design Name: 
-- Module Name: top_3 - Behavioral
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

entity top_3 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end top_3;

architecture Behavioral of top_3 is

begin

p1: process (a)

variable temp: std_logic_vector(3 downto 0):= "0000";
begin

temp := a;

y <= temp;
end process;


end Behavioral;
