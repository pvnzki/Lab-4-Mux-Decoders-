----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 12:52:59 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port (
        D : in STD_LOGIC_VECTOR (7 downto 0);  
        S : in STD_LOGIC_VECTOR (2 downto 0);  
        EN : in STD_LOGIC;                      
        Y : out STD_LOGIC                    
    );
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
    component Decoder_3_to_8 is
        Port (
            I : in STD_LOGIC_VECTOR (2 downto 0);
            EN : in STD_LOGIC;
            Y : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
    signal I0 : STD_LOGIC_VECTOR (2 downto 0);  
    signal en0 : STD_LOGIC;
    signal Decoder_EN : STD_LOGIC_VECTOR(7 downto 0);
begin
    Decoder_inst: Decoder_3_to_8 
    port map(
        I => I0,
        EN => en0,
        Y => Decoder_EN
    );
    I0 <= S;
    en0 <= EN;
    Y <= (Decoder_EN(0) AND D(0)) OR 
         (Decoder_EN(1) AND D(1)) OR 
         (Decoder_EN(2) AND D(2)) OR 
         (Decoder_EN(3) AND D(3)) OR 
         (Decoder_EN(4) AND D(4)) OR 
         (Decoder_EN(5) AND D(5)) OR 
         (Decoder_EN(6) AND D(6)) OR 
         (Decoder_EN(7) AND D(7));
    
end Behavioral;