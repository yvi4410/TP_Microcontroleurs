--====================================================================
--  File       : chenillard.vhd
--  Author     : <votre nom>
--  Function   : Chenillard 10 LEDs (pattern 4 bits « 1111 » qui défile)
--               • À chaque front montant de CLK, le motif se décale d’un bit
--               • Après 10 cycles, on revient à l’état initial
--====================================================================
library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------
--  ENTITY
-----------------------------------------------------------------------
entity chenillard is
    port (
        CLK  : in  std_logic;                       -- Horloge lente (issue du clock_divider)
        RST  : in  std_logic;                       -- Reset asynchrone actif bas
        CHEN : out std_logic_vector(9 downto 0)     -- Sortie vers les 10 LEDs
    );
end entity chenillard;

-----------------------------------------------------------------------
--  ARCHITECTURE
-----------------------------------------------------------------------
architecture rtl of chenillard is
    -- Motif courant du chenillard (10 bit)
    signal pattern : std_logic_vector(9 downto 0) := "0000001111";  -- État T=0
begin
    -------------------------------------------------------------------
    --  Processus séquentiel : priorité RST, puis horloge
    -------------------------------------------------------------------
    process (CLK, RST)
    begin
        if RST = '0' then                           -- Remise à zéro (T=0)
            pattern <= "0000001111";
        elsif rising_edge(CLK) then                 -- Décalage circulaire gauche
            -- rotation gauche d'un bit : concatène bits 8..0 avec bit 9
            pattern <= pattern(8 downto 0) & pattern(9);  
        end if;
    end process;

    CHEN <= pattern;
end architecture rtl;