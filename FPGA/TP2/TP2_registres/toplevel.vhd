library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port (
        SW   : in  std_logic_vector(9 downto 0);   -- SW9..SW0
        KEY  : in  std_logic_vector(3 downto 0);   -- KEY3..KEY0 (4 BP)
        LEDG : out std_logic_vector(7 downto 0)    -- LEDG7..LEDG0
    );
end entity;

architecture rtl of toplevel is
    signal clk_i : std_logic;
begin
    clk_i <= not KEY(0);          -- horloge « manuelle » sur BP KEY0

    U_REG : entity work.universal_register
        port map (
            -- données
            SSR  => SW(9),
            SSL  => SW(8),
            Pi   => (others => '0'),
            -- commandes
            SEL  => SW(2 downto 0),
            CLK  => clk_i,
            SETn => KEY(2),       -- preset actif bas (KEY2)
            RSTn => KEY(3),       -- reset actif bas (KEY3)
            -- sorties
            SOR  => open,
            SOL  => open,
            Qo   => LEDG
        );
end architecture;