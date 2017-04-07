----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2017 03:25:22 PM
-- Design Name: 
-- Module Name: automatCtrl - Behavioral
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

entity automatCtrl is
    Port ( Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Start : in STD_LOGIC;
           LoadB : out STD_LOGIC;
           SubB : out STD_LOGIC;
           RstA : out STD_LOGIC;
           LoadA : out STD_LOGIC;
           ShrQA : out STD_LOGIC;
           LoadQ : out STD_LOGIC;
           RstQm1 : out STD_LOGIC;
           Term : out STD_LOGIC);
end automatCtrl;

architecture Behavioral of automatCtrl is
type TIP_STARE is (init,idle, decision,dif,shift,sum,decrem,stop);
signal stareP, stareU: TIP_STARE;
signal C : integer;
begin

proc1: process(clk,rst,q0,q1,start,stareP)
begin
if (rising_edge(clk)) then
    if (rst='1') then 
        stareU<=idle;
     else
        case stareP is
            when init=> Rsta<='1';
                        Rstqm1<='1';
            when idle => LoadB<='1';
                        LoadQ<='1';
                        RstA<='1';
                        RstQm1<='1';
            when decision=>
            when dif=>
            when shift=>
            when sum=>
            when decrem=>
            when stop=>
        
    end if;
  end if;
end process;

end Behavioral;
