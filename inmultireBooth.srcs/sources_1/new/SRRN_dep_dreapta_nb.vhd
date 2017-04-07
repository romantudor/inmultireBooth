----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2017 12:04:24 PM
-- Design Name: 
-- Module Name: SRRN_dep_dreapta_nb - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SRRN_dep_dreapta_nb is
    generic(n:natural);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           SRI : in STD_LOGIC;
           Load : in STD_LOGIC;
           CE : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end SRRN_dep_dreapta_nb;

architecture Behavioral of SRRN_dep_dreapta_nb is
signal  Q1 :STD_LOGIC_VECTOR (n-1 downto 0);
begin
process(clk,rst)
begin

    if (rising_edge(clk)) then
        if (rst='1') then
            q<="0";
         else if (Load='1') then
            q<=d;
         else if (Load='0' and CE='1') then
            q<=SRI & d(n-2 downto 0);
            end if;
           end if; 
          end if;  
        end if;
end process;

end Behavioral;
