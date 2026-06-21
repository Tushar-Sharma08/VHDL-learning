----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.01.2026 15:50:50
-- Design Name: 
-- Module Name: Arthemetic_operator - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Arthemetic_operator is
--  Port ( );
end Arthemetic_operator;

architecture Behavioral of Arthemetic_operator is

signal din1: unsigned(3 downto 0):= "1101";
signal din2: unsigned(3 downto 0):= "1001";

signal add , sub : unsigned(4 downto 0):= "00000";
signal mul: unsigned(7 downto 0):= x"00";

begin

--we use appendend '&' to add '0' at MSB bit of add and sub to make it a 5 bit number

add <= ('0'& din1)+('0'& din2);
sub <= ('0'& din1)-('0'& din2);
mul <= din1*din2;

end Behavioral;
