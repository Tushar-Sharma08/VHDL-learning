----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2026 17:44:13
-- Design Name: 
-- Module Name: Full_Adder - Behavioral
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

entity Full_Adder is
    Port ( a,b,cin : in STD_LOGIC;
           s,cout : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
signal t1,t2,t3 :std_logic := '0';
begin

t1 <= a xor b;
t2 <= a and b;
s<= t1 xor cin;
t3<= cin and t1;
cout <= t3 or t2;


end Behavioral;
