library ieee;
use ieee.std_logic_1164.all;

entity shift_register_SISO8 is
    port (
        Si   : in  std_logic;                       -- Entrée série
        CLK  : in  std_logic;                       -- Horloge (↑)
        SETn : in  std_logic;                       -- Preset*  (async)
        RSTn : in  std_logic;                       -- Reset*   (async)
        So   : out std_logic                        -- Sortie série
    );
end entity shift_register_SISO8;


architecture rtl of shift_register_SISO8 is
    signal reg : std_logic_vector(7 downto 0) := (others => '0');
begin
    process (CLK, RSTn, SETn)
    begin
        if RSTn = '0' then                     -- Reset asynchrone
            reg <= (others => '0');
        elsif SETn = '0' then                  -- Preset asynchrone
            reg <= (others => '1');
        elsif rising_edge(CLK) then            -- Décalage synchrone
            reg <= Si & reg(7 downto 1);       -- concaténation & décalage:contentReference[oaicite:1]{index=1}:contentReference[oaicite:2]{index=2}
        end if;
    end process;

    So <= reg(0);                              -- Sortie du LSB
end architecture rtl;