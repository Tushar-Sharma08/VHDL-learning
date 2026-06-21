library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dff is
    Port ( clk,rst,din : in STD_LOGIC;
           dn,dout : out STD_LOGIC);
end dff;

architecture Behavioral of dff is

begin

process(clk)
begin

if (rising_edge(clk)) then
    if (rst = '1')then
        dout <= '0';
        dn <= '1';
    else 
        dout <= din;
        dn <= not din;
    end if;
end if;


end process;

end Behavioral;
