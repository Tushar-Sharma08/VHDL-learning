library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FSM_1 is
    Port ( rst,din,clk : in STD_LOGIC;
           dout : out STD_LOGIC);
end FSM_1;

architecture Behavioral of FSM_1 is

type state_type is (s0,s1);
signal state: state_type := s0;

begin

rst_logic: process(clk)
begin
    if rising_edge (clk) then
        if rst = '1' then
            state <= s0;
        else
            case(state) is
            when s0 =>
                    dout <= '0';
                if din = '1' then
                    state <= s1;
                else
                    state <= s0;
                end if;
                
             when s1 => 
                    dout <= '1';
                if din = '1' then
                    state <= s0;
                else    
                    state <= s1;
                end if;
            when others =>
                    dout <= '0';
                    state <= s0;
            end case;
        end if;
    end if;
end process;
end Behavioral;