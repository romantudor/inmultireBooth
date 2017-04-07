----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2017 11:55:25 AM
-- Design Name: 
-- Module Name: FDN_n_reg - Behavioral
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

entity FDN_n_reg is
    generic(n:natural);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
           Q : out STD_LOGIC_VECTOR (n-1 downto 0);
           Rst : in STD_LOGIC;
           CE : in STD_LOGIC;
           Clk : in STD_LOGIC);
end FDN_n_reg;

architecture Behavioral of FDN_n_reg is

begin
 process(clk,rst)
 begin
 if (rising_edge(clk)) then
  if(Rst='1') then
        Q<="0";
       else if (CE='1') then
            Q <=D;
       end if;
     end if;
  end if;
 end process;

end Behavioral;
