----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2025 12:58:02 PM
-- Design Name: 
-- Module Name: fa_4bit - Behavioral
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

entity fa_4bit is
    Port (  a: in std_logic_vector (3 downto 0);
            b: in std_logic_vector (3 downto 0);
            cin: in std_logic;
            s : out std_logic_vector(3 downto 0);
            cout : out STD_LOGIC
 );
end fa_4bit;

architecture Behavioral of fa_4bit is
    component fa_2bit is
        Port ( a,b,cin : in STD_LOGIC;
               s,cout : out STD_LOGIC);
    end component;
    
    component ha is 
    port ( a,b : in std_logic;
           s,cout: out std_logic );
    end component;
signal ci : std_logic_vector(4 downto 0);
signal co : std_logic_vector(4 downto 0);
begin
--   process (a,b,cr)
--  begin
--        cr(0) <= cin;
--        for i in 0 to 3 loop
--            s(i) <= A(i) xor b(i) xor cr(i);
--            cr(i+1) <= (A(i) and b(i)) or (cr(i) and (a(i) or b(i)));
--        end loop;
--        cout <= cr(4);
--   end process;
ci(0) <= cin;


fa1: fa_2bit port map (a=>a(0),b=>b(0),cin=>cin,s=>s(0),cout=>ci(0));
fa2: fa_2bit port map (a=>a(1),b=>b(1),cin=>ci(0),s=>s(1),cout=>ci(1));
fa3: fa_2bit port map (a=>a(2),b=>b(2),cin=>ci(1),s=>s(2),cout=>ci(2));
fa4: fa_2bit port map (a=>a(3),b=>b(3),cin=>ci(2),s=>s(3),cout=>ci(3));
cout <= ci(3);
end Behavioral;
