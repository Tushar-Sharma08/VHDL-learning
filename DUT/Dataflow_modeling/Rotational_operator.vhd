----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.01.2026 15:25:28
-- Design Name: 
-- Module Name: Rotational_operator - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rotational_operator is
--  Port ( );
end Rotational_operator;

architecture Behavioral of Rotational_operator is

signal din : unsigned(3 downto 0) := "1011";
signal urleft : unsigned(3 downto 0):= "0000";
signal urright : unsigned(3 downto 0):= "0000";

signal din1: signed(3 downto 0):= "0011";
signal srleft: signed(3 downto 0):= "0000";
signal srright: signed(3 downto 0):= "0000";

begin

urleft <= rotate_left(din, 1);
urright <= rotate_right(din, 1);

srleft <= rotate_left(din1, 1);
srright <= rotate_right(din1, 1);

end Behavioral;
