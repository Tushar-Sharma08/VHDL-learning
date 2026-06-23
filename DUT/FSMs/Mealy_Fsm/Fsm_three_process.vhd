library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Fsm_3 is
    Port ( clk,rst,din : in STD_LOGIC;
           dout : out STD_LOGIC);
end Fsm_3;

architecture Behavioral of Fsm_3 is

type state_type is (s0,s1);
signal state, next_state : state_type := s0;

begin

-- reset logic is an sequentional process
-- next state, op state is an combinational process

reset_logic: process(clk)
begin
    if(rising_edge(clk))then
        if (rst ='1')then
            state <= s0;
        else
            state <= next_state;
        end if;
    end if;
end process;


next_state_logic: process(din,state)
begin
    case(state)is
    
    when s0 =>
        if din='1' then
            next_state <= s1;
        else
            next_state <= s0;
        end if;
     
    when s1 =>
        if din = '1' then
            next_state <= s0;
        else
            next_state <= s1;
        end if;
        
    when others =>
        next_state <= s0;
    end case;
end process;


output_logic : process(din,state)
begin
    case(state)is
    
    when s0 =>
        if din = '1' then
            dout <= '0';
        else
            dout <= '1';
        end if;
     
    when s1 =>
        if din = '1' then
            dout <= '1';
        else
            dout <= '0';
        end if;
    
    when others =>
        dout <= '0';
    end case;  
end process;
end Behavioral;
