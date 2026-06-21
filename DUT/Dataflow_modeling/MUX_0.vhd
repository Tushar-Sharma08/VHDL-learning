----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.01.2026 15:09:39
-- Design Name: 
-- Module Name: MUX_0 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_0 is
    Port ( a,b,c,d : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
end MUX_0;

architecture Behavioral of MUX_0 is

begin

--With conditional signal statement
--y<= a when(sel ="00") else
--    b when(sel = "01") else
--    c when(sel = "10") else
--    d when(sel = "11") else
--    '0';

--With Selected signal statement 


with sel select
y<= a when "00",
    b when "01",
    c when "10",
    d when "11",
    '0' when others;

end Behavioral;
