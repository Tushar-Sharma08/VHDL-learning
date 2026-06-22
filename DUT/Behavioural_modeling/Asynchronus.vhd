library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Asynchronus is
    Port ( din,rst,clk : in STD_LOGIC;
           dout : out STD_LOGIC);
end Asynchronus;

architecture Behavioral of Asynchronus is

begin

process(clk,rst)
begin
if(rst='1')then
  dout<='0';
  else
    if(rising_edge(clk))then
      dout<=din;
      end if;
 end if;     

end process;

end Behavioral;
