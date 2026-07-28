library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity MEM_1 is
    Port ( clk,wr : in STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (5 downto 0);
           din : in STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (7 downto 0));
end MEM_1;

architecture Behavioral of MEM_1 is

type mem_type is array(0 to 63) of std_logic_vector(7 downto 0);
signal mem : mem_type;

begin
process(clk)
begin
    if rising_edge(clk) then
        if (wr = '1') then
           mem(to_integer(unsigned(addr))) <= din;
        else
            dout <= mem(to_integer(unsigned(addr)));
        end if;
    end if;
end process;    

end Behavioral;
