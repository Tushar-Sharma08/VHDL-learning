----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.01.2026 14:34:53
-- Design Name: 
-- Module Name: conversions - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity conversions is
--  Port ( );
end conversions;

architecture Behavioral of conversions is

signal sdata: unsigned(3 downto 0):= "1000"; -- 4bit data
signal ldata: std_logic_vector(3 downto 0):="0100"; -- 4 bit data
signal intin: integer range 0 to 100:= 56; --6 bit required

signal res1: std_logic_vector(4 downto 0);
signal res2: unsigned(3 downto 0);
signal res3: unsigned(6 downto 0);
signal res4: integer;

signal res5: unsigned(5 downto 0);

begin
res1<= std_logic_vector(sdata);
res2<= unsigned(ldata);

res3<=  TO_UNSIGNED(intin,7);
res4<= TO_INTEGER(sdata);

-- We can also resize the signal size

res5<= RESIZE(sdata,6);

end Behavioral;
