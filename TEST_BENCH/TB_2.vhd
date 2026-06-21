library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity counter is
    Port ( rst,clk,dwn : in STD_LOGIC;
           dout : out STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is
signal count : std_logic_vector(3 downto 0) :="0000";

begin
process(rst,clk)
 begin
  if(rst = '1') then
    count <= "0000";
  elsif (clk'event and clk = '1')then
        if (dwn = '1') then
            count <= count - 1;
        else
            count <= count + 1;
        end if;
  end if;
end process;

dout <= count;

end Behavioral;
