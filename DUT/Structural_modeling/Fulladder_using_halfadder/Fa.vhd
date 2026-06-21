library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Fa is
    Port ( a,b,cin : in STD_LOGIC;
           s,cout : out STD_LOGIC);
end Fa;

architecture Behavioral of Fa is

component Ha is
    Port ( a,b : in STD_LOGIC;
           s,c : out STD_LOGIC);
end component;

signal t1,t2,t3 : std_logic := '0';

begin

H1: Ha port map (a,b,t1,t2);  --- implicit way to port mapping (sensitive to positioning)
H2: Ha port map (a=> t1, b => cin, s =>s,c =>t3); --explicit way to port mapping
cout <= t2 xor t3;
end Behavioral;
