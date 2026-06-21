----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2026 15:11:45
-- Design Name: 
-- Module Name: B_to_G - Behavioral
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

entity B_to_G is
    Port ( B : in STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC_VECTOR (3 downto 0));
end B_to_G; 

-- Binary to greay code converter

architecture Behavioral of B_to_G is

begin

-- To assign / use single bit in the multibit system we use parantasis "()";

G(3) <= B(3);
G(2) <= B(3) XOR B(2);
G(1) <= B(2) XOR B(1);
G(0) <= B(1) XOR B(0);


end Behavioral;
