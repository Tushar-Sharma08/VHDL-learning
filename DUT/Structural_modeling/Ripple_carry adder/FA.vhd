library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
    Port ( a,b,cin : in STD_LOGIC;
           s,cout : out STD_LOGIC);
end FA;

architecture Behavioral of FA is

component Ha is
    Port ( a,b : in STD_LOGIC;
           s,c : out STD_LOGIC);
end component;

signal t1,t2,t3 : std_logic :='0';

begin

H1: Ha port map (a=>a, b=>b, s=> t1, c => t2);
H2: Ha port map (a=>t1,b=>cin,s=>s,c=>t3);

cout <= t2 xor t3;


end Behavioral;
