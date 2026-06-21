
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_2 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end top_2;

architecture Behavioral of top_2 is

-- to assign port "a" value to port "Y";

signal temp: std_logic_vector(3 downto 0):= "0000";


begin

temp <= a;
y <= temp;

end Behavioral;
