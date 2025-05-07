--====================================================================
--  File       : toplevel.vhd
--  Author     : <votre nom>
--  Function   : Top‑level intégrant clock_divider et chenillard
--====================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;  -- pour incrément sur std_logic_vector

-----------------------------------------------------------------------
--  ENTITY TOPLEVEL
-----------------------------------------------------------------------
entity toplevel is
    port (
        CLOCK_50_B6A : in  std_logic;                   -- Horloge 50 MHz de la carte
        KEY          : in  std_logic_vector(3 downto 0); -- Boutons poussoirs (actifs bas)
        LEDR         : out std_logic_vector(9 downto 0)  -- LEDs rouges
    );
end entity toplevel; 

-----------------------------------------------------------------------
--  ARCHITECTURE
-----------------------------------------------------------------------
architecture rtl of toplevel is
    -- Signal interne pour l'horloge lente
    signal slow_clk : std_logic;
begin
    -------------------------------------------------------------------
    --  Instance du diviseur d'horloge
    -------------------------------------------------------------------
    clkdiv_i: entity work.clock_divider
        port map (
            CLKin  => CLOCK_50_B6A,
            RST    => KEY(0),             -- Reset asynchrone actif bas via KEY(0)
            N      => "10100",           -- Division par 2^(7+1)=256 (≈195 kHz)
            CLKout => slow_clk
        );

    -------------------------------------------------------------------
    --  Instance du chenillard
    -------------------------------------------------------------------
    chen_i: entity work.chenillard
        port map (
            CLK  => slow_clk,
            RST  => KEY(0),               -- Même reset pour le chenillard
            CHEN => LEDR                  -- Sortie vers les 10 LEDs
        );
end architecture rtl;