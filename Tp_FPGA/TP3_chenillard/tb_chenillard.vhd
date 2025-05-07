--====================================================================
--  File       : tb_chenillard.vhd
--  Author     : <votre nom>
--  Purpose    : Testbench pour chenillard.vhd
--====================================================================
library ieee;
use ieee.std_logic_1164.all;

entity tb_chenillard is
end entity tb_chenillard;

architecture tb of tb_chenillard is
    -- Signaux de test
    signal CLK   : std_logic := '0';
    signal RST   : std_logic;
    signal CHEN  : std_logic_vector(9 downto 0);
begin
    -- Instanciation de l'UUT (Unit Under Test)
    UUT: entity work.chenillard
        port map (
            CLK  => CLK,
            RST  => RST,
            CHEN => CHEN
        );

    -- Générateur d'horloge (période 20 ns)
    proc_clock: process
    begin
        CLK <= not CLK;
        wait for 10 ns;
    end process proc_clock;

    -- Stimuli des entrées
    proc_inputs: process
    begin
        -- Reset asynchrone actif bas
        RST <= '0';
        wait for 25 ns;
        RST <= '1';
        -- Observation de la séquence pendant 10 cycles de chenillard (~10×20 ns)
        wait for 220 ns;
        -- Fin de simulation
        wait;
    end process proc_inputs;
end architecture tb;