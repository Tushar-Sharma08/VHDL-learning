library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM_2 is
    Port ( rst,clk,din : in STD_LOGIC;
           dout : out STD_LOGIC);
end FSM_2;

architecture Behavioral of FSM_2 is

type state_type is (s0,s1);
signal state,next_state : state_type := s0;

begin

rst_logic: process(clk)
begin
    if rising_edge (clk) then
        if rst = '1' then
            state <= s0;
        else
            state <= next_state;
        end if;
    end if;
end process;

Next_state_op_logic: process(state,din)
begin
    case(state)is
        when s0 =>
            dout <= '0';
            if din = '1' then
                next_state <= s1;
            else
                next_state <= s0;
            end if;
        when s1 => 
            dout <= '1';
            if din = '1' then
                next_state <= s0;
            else    
                next_state <= s1;
            end if;
        when others =>
                dout <= '0';
                next_state <= s0;
    end case;    
end process;
end Behavioral;
