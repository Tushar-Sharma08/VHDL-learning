library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_1 is
    Port ( a,b : in std_logic_vector(3 downto 0);
           y : out std_logic_vector(3 downto 0)
           );
end TB_1;

architecture Behavioral of TB_1 is

begin

y <= a or b;


end Behavioral;

-------------------------------------------------------------------------------------
------------------------TEST_BENCH----------------------------------------------------
-----------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end tb;

architecture tb2 of tb is

component TB_1 is
    Port ( a,b : in std_logic_vector(3 downto 0);
           y : out std_logic_vector(3 downto 0)
           );
end component;

signal a,b : std_logic_vector(3 downto 0):= "0000";
signal y : std_logic_vector(3 downto 0);


begin
T1: TB_1 port map (a => a, b => b, y => y);

--a <= "0110" after 10ns, "1010" after 20ns,"0100" after 30ns;
--b <= "1111" after 10ns, "0110" after 20ns, "1000" after 30ns;

process(a)
begin

a(0) <= not a(0) after 10 ns;
a(1) <= not a(1) after 20 ns;
a(2) <= not a(2) after 50 ns;
a(3) <= not a(3) after 40 ns;
end process;

--process
--begin

--a(3) <= not a(3);
--wait for 10 ns;
--end process;

process
begin

wait for 10ns;
b <= "1010";
wait for 10ns;
b <= "0110";
wait for 10ns;
b <= "1000";
wait;
end process;

end tb2;