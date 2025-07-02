----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2025 06:29:12 PM
-- Design Name: 
-- Module Name: tb_fa - Behavioral
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




-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_fa is
--  Port ( );
end tb_fa;

architecture Behavioral of tb_fa is
    signal a_tb: std_logic := '0' ;
    signal b_tb: std_logic := '0';
    signal cin_tb: std_logic := '0' ;
    signal sum_tb: std_logic := '0';
    signal cout_tb: std_logic;
    
    component fa is 
        Port (   a: in std_logic;
                 b: in std_logic;
                 cin: in std_logic;
                 cout: out std_logic;
                 sum: out std_logic);
        end component;
begin
    DUT2: fa port map (a => a_tb, 
                        b => b_tb, 
                        cin => cin_tb,
                        sum => sum_tb,                       
                        cout => cout_tb);
test: process
    begin
        wait for 5 ns;
        a_tb <= '0'; b_tb <= '0'; cin_tb <= '0';
        wait for 10 ns;
        a_tb <= '0'; b_tb <= '0'; cin_tb <= '1';
        wait for 10 ns;
        a_tb <= '0'; b_tb <= '1'; cin_tb <= '0';
        wait for 10 ns;
        a_tb <= '0'; b_tb <= '1'; cin_tb <= '1';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '0'; cin_tb <= '0';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '0'; cin_tb <= '1';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '1'; cin_tb <= '0';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '1'; cin_tb <= '1';
        wait for 10 ns;
        wait;        
end process;
end Behavioral;
