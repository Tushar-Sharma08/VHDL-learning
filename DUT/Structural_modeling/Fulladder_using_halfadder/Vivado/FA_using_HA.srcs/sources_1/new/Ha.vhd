library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Ha is
    Port ( a,b : in STD_LOGIC;
           s,c : out STD_LOGIC);
end Ha;

architecture Behavioral of Ha is

begin

s <= a xor b;
c <= a and b;

end Behavioral;
