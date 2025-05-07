--===============================================================
--  File       : led_test.vhd
--  Function   : Logique simple : SW -> LED, boutons = extinction
--===============================================================
library ieee;
use ieee.std_logic_1164.all;

entity led_test is
    port (
        SW      : in  std_logic_vector(9 downto 0);  -- SW9..0
        KEY     : in  std_logic_vector(3 downto 0);  -- KEY3..0 (actifs bas)
        LED_OUT : out std_logic_vector(7 downto 0)   -- LEDG7..0
    );
end entity led_test;

architecture rtl of led_test is
    signal key_mask : std_logic;  -- '1' = aucun bouton appuyé
begin
    -- Boutons : AND des 4, comme ils sont actifs bas
    key_mask <= KEY(3) and KEY(2) and KEY(1) and KEY(0);

    -- Mapping SW → LED (seuls SW7..0 utilisés)
    LED_OUT <= SW(7 downto 0) when key_mask = '1'
               else (others => '0'); -- extinction si bouton appuyé
end architecture rtl;