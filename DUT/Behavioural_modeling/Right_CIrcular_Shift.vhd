library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity RCS is
    Port ( b : in STD_LOGIC_VECTOR (5 downto 0);
           clk,new_ip : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (5 downto 0);
           shift : in STD_LOGIC_VECTOR (2 downto 0));
end RCS;

architecture Behavioral of RCS is

signal count: integer range 0 to 8 := 0;
signal temp : std_logic_vector(5 downto 0):= "000000";

type State_type is (Load,Sft,new_data);
signal state: State_type := load;


begin

process(clk)

begin

    if(rising_edge(clk))then
    
        case(state)is
        
        when load=>
        
            temp <=b;
            state<= Sft;
        
        when Sft =>
           
            if(count < shift)then
                count <= count + 1;
                temp <= temp(0)&temp(5 downto 1);
                state <= Sft;
            else 
                count <= 0;
                state <= new_data;              
            end if;
        
        when new_data =>
             
            if(new_ip = '1')then
                state <= load;
            else         
                state <= new_data;
            end if;
         
        when others=>
            state <= load;    
         
         end case;    
    end if;
end process;
y<= temp;
end Behavioral;
