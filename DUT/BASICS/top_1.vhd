


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;



entity top_1 is
    Port ( a,b : in Bit;  -- can also use "STD_LOGIC" instead of "BIT" , also we dont need library for "Bit", Bit can handle 0 or 1;
           c : out bit);
    
 -- for multiple bit we use "bit_VECTOR(3 downto 0) or (0 to 3)" for 4 bit;  used for multi bit BUS;
    
end top_1;

architecture Behavioral of top_1 is

-- builtin Datatypes 

Signal temp: bit := '0';
signal temp1 : bit_vector(3 downto 0):= "0000";
signal temp2 : boolean := true;
signal temp3: integer range 0 to 100 := 0;

-- Non-buitin datatypes 

signal temp4 : std_logic := '0';
signal temp5 : std_logic_vector(3 downto 0):= "0000";

-- User defined datatypes 

Type User_type is (idle,s0,s1,s2);
signal temp6 : User_type := idle;




begin

p1 : process
-- variable temp: (data type):= (value);
begin

end process;

p2: process

begin

end process;

end Behavioral;
