----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:21:58 AM
-- Design Name: 
-- Module Name: tb_b2 - Behavioral
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


entity tb_b2 is
--  Port ( );
end tb_b2;

architecture Behavioral of tb_b2 is
    signal a_tb: std_logic := '0' ;
    signal b_tb: std_logic := '0';
    signal c_tb: std_logic := '0' ;
    signal f_tb: std_logic;
    
component b2 is
    Port ( a,b,c : in STD_LOGIC;
           f : out STD_LOGIC);
end component;

begin
DUT2: b2 port map ( a=>a_tb, b=>b_tb, c=>c_tb, f=>f_tb);
test: process
    begin
        wait for 5 ns;
        a_tb <= '0'; b_tb <= '0'; c_tb <= '0';
        wait for 10 ns;
        a_tb <= '0'; b_tb <= '0'; c_tb <= '1';
        wait for 10 ns;
        a_tb <= '0'; b_tb <= '1'; c_tb <= '0';
        wait for 10 ns;
        a_tb <= '0'; b_tb <= '1'; c_tb <= '1';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '0'; c_tb <= '0';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '0'; c_tb <= '1';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '1'; c_tb <= '0';
        wait for 10 ns;
        a_tb <= '1'; b_tb <= '1'; c_tb <= '1';
        wait for 10 ns;
        wait; 
end process;
end Behavioral;
