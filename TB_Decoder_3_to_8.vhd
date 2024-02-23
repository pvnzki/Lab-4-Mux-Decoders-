----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 02:37:23 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity Decoder_3_to_8_tb is
end;

architecture bench of Decoder_3_to_8_tb is

  component Decoder_3_to_8
   Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
   EN : in STD_LOGIC;
   Y : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal I: STD_LOGIC_VECTOR (2 downto 0);
  signal EN: STD_LOGIC;
  signal Y: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: Decoder_3_to_8 port map ( I  => I,
                                 EN => EN,
                                 Y  => Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
       EN <= '0';
       I<="101";
       wait for 250ns;
       EN <= '1';
       I<="111";
       wait for 250ns;
       I<="110";
    wait;
  end process;


end;
  

  