----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2026 15:35:13
-- Design Name: 
-- Module Name: Shift_oprator - Behavioral
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

entity Shift_oprator is
end Shift_oprator;

architecture Behavioral of Shift_oprator is

signal din : unsigned(3 downto 0) := "1010";
signal llshift : unsigned(3 downto 0):= "0000";
signal rlshift : unsigned(3 downto 0):= "0000";

signal din1: signed(3 downto 0):= "0011";
signal alshift: signed(3 downto 0):= "0000";
signal arshift: signed(3 downto 0):= "0000";

begin

llshift <= shift_left(din,1);
rlshift <= shift_right(din,1);

alshift <= shift_left(din1,1);
arshift <= shift_right(din1,1);

end Behavioral;
