----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2017 12:25:20 PM
-- Design Name: 
-- Module Name: ADD_nb - Behavioral
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

entity ADD_nb is
generic (n:natural);
    Port ( X : in STD_LOGIC_VECTOR (n-1 downto 0);
           Y : in STD_LOGIC_VECTOR (n-1 downto 0);
           Tin : in STD_LOGIC;
           Tout : out STD_LOGIC;
           OVF : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (n-1 downto 0));
end ADD_nb;

architecture Behavioral of ADD_nb is

begin
process(x,y,tin)

variable tempC : std_logic_vector(n downto 0);
variable P : std_logic_vector( n-1 downto 0 );
 variable G : std_logic_vector(n-1 downto 0 );
begin
tempC(0) := tin;
 for i in 0 to n-1 loop
  P(i):=x(i) xor y(i);
  G(i):=x(i) and y(i);
  S(i)<= P(i) xor tempC(i);
  tempC(i+1):=G(i) or (tempC(i) and P(i));
 end loop;
  tout <= tempC(n);
  OVF<=tempC(n);
end process;

end Behavioral;
