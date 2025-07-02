----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 04:56:34 PM
-- Design Name: 
-- Module Name: b1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity b2 is
    Port ( a,b,c : in STD_LOGIC;
           f : out STD_LOGIC);
end b2;

architecture Behavioral of b2 is

signal nor1 :std_logic;
signal nor2 :std_logic;
signal nor3 :std_logic;
signal a_inv : std_logic;
signal b_inv : std_logic;
signal c_inv : std_logic;

begin
a_inv <= not (a or a); b_inv <= not (b or b); c_inv <= not( c or c);
nor1 <= not(a or b_inv);
nor2 <= not (c or nor1);
nor3 <= not(a_inv or b);
f <= not (nor2 or nor3);
end Behavioral;
