library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TL is
    Port ( clk,rst : in STD_LOGIC;
           r,y,g : out STD_LOGIC);
end TL;

architecture Behavioral of TL is

type state_type is (idle, s0 ,s1, s2);
signal state: state_type := s0;
signal count : integer range 0 to 10 := 0;

begin
 process (clk)
 begin
    if rising_edge(clk) then
        if rst= '1' then
            state <= idle;
            r <= '0';
            y <= '0';
            g <= '0';
        else
            case(state) is
                when idle =>
                    r <= '0';
                    y <= '0';
                    g <= '0';
                    state <= s0;
                when s0 =>
                    r <= '1';
                    y <= '0';
                    g <= '0';
                    if count < 5 then
                        count <= count +1;
                        state <= s0;
                    else
                        count <= 0;
                        state <= s1;
                    end if;        
                when s1 =>
                    r <= '0';
                    y <= '1';
                    g <= '0';
                    if count < 3 then
                        count <= count +1;
                        state <= s1;
                    else
                        count <= 0;
                        state <= s2;
                    end if;
                when s2 =>
                    r <= '0';
                    y <= '0';
                    g <= '1';
                    if count < 7 then
                        count <= count +1;
                        state <= s2;
                    else
                        count <= 0;
                        state <= s0;
                    end if;
                when others =>
                    r <= '0';
                    y <= '0';
                    g <= '0';
                    state <= idle;
            end case;                                    
        end if;
    end if;        
 end process;
end Behavioral;
