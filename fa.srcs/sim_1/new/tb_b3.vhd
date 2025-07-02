library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_b3 is
end tb_b3;

architecture Behavioral of tb_b3 is
    component b3 is
        Port ( CLK : in STD_LOGIC;
               y   : out STD_LOGIC;
               cnt : out STD_LOGIC_VECTOR(2 downto 0));
    end component;
    
    signal CLK_tb : STD_LOGIC := '0';
    signal y_tb   : STD_LOGIC;
    signal cnt_tb : STD_LOGIC_VECTOR(2 downto 0);
    
    constant CLK_period : time := 10 ns;
begin

    uut: b3 port map (
        CLK => CLK_tb,
        y   => y_tb,
        cnt => cnt_tb
    );

    CLK_process: process
    begin
         loop
            CLK_tb <= '0';
            wait for CLK_period/2;
            CLK_tb <= '1';
            wait for CLK_period/2;
        end loop;
        wait;
    end process;

        
end Behavioral;