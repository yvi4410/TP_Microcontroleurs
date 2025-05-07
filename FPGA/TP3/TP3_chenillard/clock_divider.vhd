--====================================================================
--  File       : clock_divider.vhd
--  Author     : <votre nom>
--  Function   : Diviseur d'horloge paramétrable (24‑bit counter)
--               Fout = Fin / 2^(N+1) avec 0 ≤ N ≤ 23
--====================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;  -- pour "+ 1" sur std_logic_vector

-----------------------------------------------------------------------
--  ENTITY
-----------------------------------------------------------------------
entity clock_divider is
    port (
        CLKin  : in  std_logic;                      -- Horloge d'entrée 50 MHz
        RST    : in  std_logic;                      -- Reset asynchrone actif bas
        N      : in  std_logic_vector(4 downto 0);   -- Sélection du bit (0‑23)
        CLKout : out std_logic                       -- Horloge divisée
    );
end entity clock_divider;

-----------------------------------------------------------------------
--  ARCHITECTURE
-----------------------------------------------------------------------
architecture rtl of clock_divider is
    signal counter : std_logic_vector(23 downto 0) := (others => '0');
begin
    -------------------------------------------------------------------
    --  Compteur synchrone 24 bits
    -------------------------------------------------------------------
    process (CLKin, RST)
    begin
        if RST = '0' then                           -- Priorité reset
            counter <= (others => '0');
        elsif rising_edge(CLKin) then               -- Incrément à chaque front montant
            counter <= counter + 1;
        end if;
    end process;

    -------------------------------------------------------------------
    --  Multiplexage du bit N vers la sortie
    --  (avec l'instruction concurrente "with ... select" du cours)
    -------------------------------------------------------------------
    with N select
        CLKout <= counter(0)  when "00000",
                  counter(1)  when "00001",
                  counter(2)  when "00010",
                  counter(3)  when "00011",
                  counter(4)  when "00100",
                  counter(5)  when "00101",
                  counter(6)  when "00110",
                  counter(7)  when "00111",
                  counter(8)  when "01000",
                  counter(9)  when "01001",
                  counter(10) when "01010",
                  counter(11) when "01011",
                  counter(12) when "01100",
                  counter(13) when "01101",
                  counter(14) when "01110",
                  counter(15) when "01111",
                  counter(16) when "10000",
                  counter(17) when "10001",
                  counter(18) when "10010",
                  counter(19) when "10011",
                  counter(20) when "10100",
                  counter(21) when "10101",
                  counter(22) when "10110",
                  counter(23) when "10111",
                  '0'         when others;          -- Sécurité (N > 23)
end architecture rtl;
