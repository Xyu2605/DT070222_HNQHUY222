----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 10:26:36 PM
-- Design Name: 
-- Module Name: b9 - Behavioral
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


entity b9 is
    Port ( CLK : in STD_LOGIC;
            y: out std_logic;
           Q,Q_inv : buffer std_logic_vector(2 downto 0));
end b9;

architecture Behavioral of b9 is
component D_FF is
    Port ( CLK, D : in STD_LOGIC;
           Q,Q_inv : buffer STD_LOGIC);
end component;
signal D0,d1,d2: std_logic;

begin
d0 <= Q(1);
D1 <= (not Q(1)) or not( (not Q(2)) and (not Q(0)));
D2 <= (Q(1) and Q(0)) or (Q(2) and Q(1));
d0_ff: D_FF port map (CLK => CLK, d => D0,Q => Q(0),Q_inv => Q_inv(0));
d1_ff: D_FF port map (CLK => CLK, d => D1,Q => Q(1),Q_inv => Q_inv(1));
d2_ff: D_FF port map (CLK => CLK, d => D2,Q => Q(2),Q_inv => Q_inv(2));
y <= Q(2) and Q(0);
end Behavioral;
