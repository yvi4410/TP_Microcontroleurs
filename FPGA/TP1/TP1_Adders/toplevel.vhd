-- toplevel.vhd
--
-- Carte : DE‑1‑SoC / Cyclone V GX
-- SW0‑3  → A(3 downto 0)
-- SW4‑7  → B(3 downto 0)
-- SW9    → Cin
-- LEDR0‑3,4‑7,9 réaffichent A, B, Cin
-- LEDG0‑3   affichent S(3 downto 0)
-- LEDG7     affiche Cout

library ieee;
use ieee.std_logic_1164.all;

library work;

entity toplevel is
    port (
        LEDR : out std_logic_vector (9 downto 0);  -- 10 LED rouges
        LEDG : out std_logic_vector (7 downto 0);  -- 8  LED vertes
        SW   : in  std_logic_vector (9 downto 0)   -- 10 interrupteurs
    );
end entity toplevel;

architecture rtl of toplevel is

    -- Alias internes plus parlants
    signal A    : std_logic_vector (3 downto 0);
    signal B    : std_logic_vector (3 downto 0);
    signal Cin  : std_logic;
    signal S    : std_logic_vector (3 downto 0);
    signal Cout : std_logic;

    -- composant déjà conçu
    component full_adder_4b
        port (
            Cin  : in  std_logic;
            a    : in  std_logic_vector (3 downto 0);
            b    : in  std_logic_vector (3 downto 0);
            Cout : out std_logic;
            s    : out std_logic_vector (3 downto 0)
        );
    end component;

begin
    --------------------------------------------------------------------
    -- 1) Routage des interrupteurs vers les signaux internes
    --------------------------------------------------------------------
    A   <= SW(3 downto 0);        -- SW0‑3
    B   <= SW(7 downto 4);        -- SW4‑7
    Cin <= SW(9);                 -- SW9

    --------------------------------------------------------------------
    -- 2) Instanciation de l’additionneur 4 bits
    --------------------------------------------------------------------
    u_adder : full_adder_4b
        port map (
            Cin  => Cin,
            a    => A,
            b    => B,
            Cout => Cout,
            s    => S
        );

    --------------------------------------------------------------------
    -- 3) Ré‑affichage des entrées sur les LED rouges
    --------------------------------------------------------------------
    LEDR(3 downto 0) <= A;        -- LEDR0‑3
    LEDR(7 downto 4) <= B;        -- LEDR4‑7
    LEDR(9)          <= Cin;      -- LEDR9
    LEDR(8)          <= '0';      -- inutilisé

    --------------------------------------------------------------------
    -- 4) Affichage des sorties sur les LED vertes
    --------------------------------------------------------------------
    LEDG(3 downto 0) <= S;        -- LEDG0‑3
    LEDG(7)          <= Cout;     -- LEDG7
    LEDG(6 downto 4) <= (others => '0');  -- LEDG4‑6 à 0

end architecture rtl;
