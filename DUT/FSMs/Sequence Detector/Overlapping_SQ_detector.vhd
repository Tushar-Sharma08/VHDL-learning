library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity OVSD is
    Port ( clk,din,rst : in STD_LOGIC;
           dout : out STD_LOGIC);
end OVSD;

architecture Behavioral of OVSD is

type state_type is (s0,s1,s2,s3);
signal state , next_state: state_type := s0; 
begin

reset_logic: process(clk)
begin
if(rising_edge(clk)) then
   if(rst = '1') then
     state <= s0;
   else 
     state <= next_state;
   end if;
end if;
end process;
 
next_state_logic: process(state,din)
begin
case(state) is
when s0 => 
 if(din = '1') then
    next_state <= s1;
    dout <= '0';
 else
    next_state <= s0;
    dout <= '0';
 end if;
     
when s1 => 
 if(din = '0') then
    next_state <= s2;
    dout <= '0';   
 else
    next_state <= s1;
    dout <= '0';   
 end if;
 
 when s2 => 
 if(din = '1') then
    next_state <= s3;
    dout <= '0';   
 else
    next_state <= s0;
    dout <= '0';   
 end if;
 
 
 when s3 => 
 if(din = '1') then
    next_state <= s1;
    dout <= '1';   
 else
    next_state <= s2;
    dout <= '0';   
 end if;
 
 when others =>
   next_state <= s0;
   dout <= '0';
    
end case;
end process;

end Behavioral;
