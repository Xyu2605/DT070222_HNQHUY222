----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/30/2025 01:59:05 PM
-- Design Name: 
-- Module Name: cnt5 - Behavioral
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

entity cnt5 is
    Port (
           CLK : in STD_LOGIC;
           y : out STD_LOGIC;
           Q, Q_inv : buffer std_logic_vector(2 downto 0) );
end cnt5; 



architecture Behavioral of cnt5 is

component JK_FF is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;    
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
     signal J1, K1, J2, K2, J0, K0 : STD_LOGIC;


begin
    J0 <= not Q(2);
    K0 <= '1';
    j1 <= Q(0);
    k1 <= Q(0);
    j2 <= Q(1)and Q(0);
    k2 <= '1';

    FF0: JK_FF port map(J0, K0, CLK, Q(0), Q_inv(0));
    FF1: JK_FF port map(J1, K1, CLK, Q(1), Q_inv(1));
    FF2: JK_FF port map(J2, K2, CLK, Q(2), Q_inv(2));

    y <= Q(2);

end Behavioral;
