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

entity b1 is
    Port ( a,b,c : in STD_LOGIC;
           f : out STD_LOGIC);
end b1;

architecture Behavioral of b1 is

signal nand1 :std_logic;
signal nand2 :std_logic;

signal a_inv : std_logic;
signal b_inv : std_logic;
signal c_inv : std_logic;

begin
a_inv <= not (a and a); b_inv <= not (b and b); c_inv <= not (c and c);
nand1 <= not(not(b_inv and c_inv) and a_inv );
nand2 <= not(B and c);
f <= not (nand1 and nand2);
end Behavioral;
