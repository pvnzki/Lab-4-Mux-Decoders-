----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 01:31:11 PM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity Decoder_2_to_4_tb is
end;

architecture bench of Decoder_2_to_4_tb is

  component Decoder_2_to_4
      Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
             EN : in STD_LOGIC;
             Y : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal I: STD_LOGIC_VECTOR (1 downto 0);
  signal EN: STD_LOGIC;
  signal Y: STD_LOGIC_VECTOR (3 downto 0);

begin

  uut: Decoder_2_to_4 port map ( I  => I (1 downto 0),
                                 EN => EN,
                                 Y  => Y );

  stimulus: process
  begin
       
       EN <= '0';
       I<="11";
       wait for 200ns;
       EN <= '1';
       I<="00";
       wait for 200ns;
       I<="01";
       wait for 200ns;
       I<="10";
       wait for 200ns;
       I<="11";
       wait;
  end process;
end;
