----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2026 15:43:46
-- Design Name: 
-- Module Name: counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( clk,rst : in STD_LOGIC;
           up,load: in std_logic;
           loadin: in std_logic_vector(7 downto 0);
           dout : out std_logic_vector(7 downto 0));
end counter;

architecture Behavioral of counter is
signal temp: std_logic_vector(7 downto 0);
begin
process(clk)

begin

if(rising_edge(clk))then
  if(rst='1')then
    temp<=x"00";
  else
      if(load='1')then
        temp<=loadin;
      else
            if(up='0')then
               temp<= temp-1;
            else
               temp<= temp+1;
            end if;
      end if;
  end if;
end if;
end process;
dout<=temp;
end Behavioral;
