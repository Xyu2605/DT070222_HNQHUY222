----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/21/2025 06:35:24 PM
-- Design Name: 
-- Module Name: fa4 - Behavioral
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

entity fa_2bit is
    Port ( a,b,cin : in STD_LOGIC;
           sum,cout : out STD_LOGIC);
end fa_2bit;

architecture Behavioral of fa_2bit is

component ha is 
    port ( a,b : in std_logic;
           s,cout: out std_logic );
end component;
signal ci: std_logic;
signal si: std_logic;
signal tmp: std_logic;
begin
-- lam theo fa
--sum <= a xor b xor cin;
--c1 <= a and b;
--c2 <= a and cin;
--c3 <= b and cin;
--cout <= c1 or c2 or c3;


-- lam theo 2 khoi ha:
ha1: ha port map ( a=>a, b=>b, s=> si, cout => ci);
ha2: ha port map (a=> si, b=>cin, s=>sum, cout=>tmp);
cout<= tmp or ci;

end Behavioral;
