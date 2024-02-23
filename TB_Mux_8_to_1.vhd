----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 01:04:19 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Mux_8_to_1_tb is
end;

architecture bench of Mux_8_to_1_tb is

  component Mux_8_to_1
      Port (
          D : in STD_LOGIC_VECTOR (7 downto 0);
          S : in STD_LOGIC_VECTOR (2 downto 0);
          EN : in STD_LOGIC;
          Y : out STD_LOGIC
      );
  end component;

  signal D: STD_LOGIC_VECTOR (7 downto 0);
  signal S: STD_LOGIC_VECTOR (2 downto 0);
  signal EN: STD_LOGIC;
  signal Y: STD_LOGIC ;

begin

  uut: Mux_8_to_1 port map ( D  => D,
                             S  => S,
                             EN => EN,
                             Y  => Y );

  stimulus: process
  begin
  
      EN <='1';
      S <="101";
      D <= "01100001";
      WAIT FOR 200 ns;
      
      S <="111";
      D <= "01000010";
      WAIT FOR 200 ns;
      
      S <="110";
      D <= "10000100";
      WAIT FOR 200 ns;
          
      S <="101";
      D <= "01001000";
      WAIT FOR 200 ns;
      
      S <="110";
      D <= "00110000";
      WAIT FOR 200 ns;
      
      EN <='0';
      WAIT;
      end process;

end;
