library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity and_top is
    Port ( a,b : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end and_top;

architecture Behavioral of and_top is

begin

y <= a and b;

end Behavioral;
