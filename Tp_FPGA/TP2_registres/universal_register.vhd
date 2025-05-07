--===================================================================
--  File       : shift_register_universal8.vhd
--  Author     : <votre nom>
--  Function   : Registre universel 8 bits
--               Opérations (SEL[2:0]) :
--                 000 / 100 : Hold (mémorisation)
--                 011 / 111 : Parallel load
--                 001       : Shift right
--                 010       : Shift left
--                 101       : Rotate right
--                 110       : Rotate left
--               • SETn / RSTn asynchrones (actifs bas)
--               • Sorties série des deux côtés
--===================================================================
library ieee;
use ieee.std_logic_1164.all;

---------------------------------------------------------------------
--  ENTITY
---------------------------------------------------------------------
entity universal_register is
    port (
        -- Entrées données
        SSR  : in  std_logic;                        -- Série ↘ droite
        SSL  : in  std_logic;                        -- Série ↖ gauche
        Pi   : in  std_logic_vector(7 downto 0);     -- Parallèle
        -- Commande
        SEL  : in  std_logic_vector(2 downto 0);     -- Sélection mode
        -- Horloge & asynchrones
        CLK  : in  std_logic;
        SETn : in  std_logic;
        RSTn : in  std_logic;
        -- Sorties
        SOR  : out std_logic;                        -- Série droite
        SOL  : out std_logic;                        -- Série gauche
        Qo   : out std_logic_vector(7 downto 0)      -- Parallèle
    );
end entity universal_register;

---------------------------------------------------------------------
--  ARCHITECTURE
---------------------------------------------------------------------
architecture rtl of universal_register is
    signal reg : std_logic_vector(7 downto 0) := (others => '0');
begin
    -----------------------------------------------------------------
    --  Process séquentiel : priorités RSTn > SETn > CLK
    -----------------------------------------------------------------
    process (CLK, RSTn, SETn)
    begin
        if RSTn = '0' then                          -- Reset global
            reg <= (others => '0');
        elsif SETn = '0' then                       -- Preset global
            reg <= (others => '1');
        elsif rising_edge(CLK) then
            case SEL is
                -----------------------------------------------------------------
                --  Mémo (Hold) : « X00 » = 000 ou 100     -- garde l’état
                -----------------------------------------------------------------
                when "000" | "100" =>
                    reg <= reg;
                -----------------------------------------------------------------
                --  Chargement parallèle : « X11 » = 011 ou 111
                -----------------------------------------------------------------
                when "011" | "111" =>
                    reg <= Pi;
                -----------------------------------------------------------------
                --  Décalage à droite : 001
                -----------------------------------------------------------------
                when "001" =>
                    reg <= SSR & reg(7 downto 1);
                -----------------------------------------------------------------
                --  Décalage à gauche : 010
                -----------------------------------------------------------------
                when "010" =>
                    reg <= reg(6 downto 0) & SSL;
                -----------------------------------------------------------------
                --  Rotation à droite : 101
                -----------------------------------------------------------------
                when "101" =>
                    reg <= reg(0) & reg(7 downto 1);
                -----------------------------------------------------------------
                --  Rotation à gauche : 110
                -----------------------------------------------------------------
                when "110" =>
                    reg <= reg(6 downto 0) & reg(7);
                -----------------------------------------------------------------
                --  Sélection non définie : par sûreté, mémorisation
                -----------------------------------------------------------------
                when others =>
                    reg <= reg;
            end case;
        end if;
    end process;

    -----------------------------------------------------------------
    --  Sorties (concurrentes)
    -----------------------------------------------------------------
    Qo  <= reg;           -- Données parallèles
    SOR <= reg(0);        -- Bit éjecté lors d’un shift/rot right
    SOL <= reg(7);        -- Bit éjecté lors d’un shift/rot left
end architecture rtl;
