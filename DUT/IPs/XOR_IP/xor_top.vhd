library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity xor_top is

    generic(
         width: integer := 4
);

    Port ( a,b : in std_logic_vector (width-1 downto 0); 
           y : out std_logic_vector (width-1 downto 0));
end xor_top;

architecture Behavioral of xor_top is

begin

    y <= a xor b;

end Behavioral;
