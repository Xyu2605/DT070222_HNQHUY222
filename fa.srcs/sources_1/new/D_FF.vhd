----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 10:19:03 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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


entity D_FF is
    Port ( D,CLK : in STD_LOGIC;
           Q,Q_inv : buffer STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
signal Q_tmp :std_logic := '0';
begin
 process(CLK)
    begin
        if falling_edge(CLK) then
            if D = '0' then
            Q <= '0';
            else
                Q <= '1';
            end if;
        end if;
    end process;
    Q_inv <= not Q;

end Behavioral;
