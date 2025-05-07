--  Bascule JK avec preset (SETn) et reset (RSTn) asynchrones, actifs à l'état bas
--  Priorité : RSTn > SETn > front montant CLK 
--
--  Table caractéristique (comportement synchrone)
--  J  K | Q(next)
--  0  0 |   Q      (hold)
--  0  1 |   0      (reset)
--  1  0 |   1      (set)
--  1  1 |  ¬Q      (toggle)
--
--  Comportement asynchrone (prioritaire)
--  RSTn = 0 → Q = 0
--  SETn = 0 → Q = 1 (si RSTn = 1)
--

library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JKrs is
   port (
        -- Entrées synchrones
        J    : in  std_logic;
        K    : in  std_logic;
        CLK  : in  std_logic;  -- front montant
        -- Entrées asynchrones actives bas
        SETn : in  std_logic;  -- Preset*
        RSTn : in  std_logic;  -- Reset*
        -- Sorties
        Q    : out std_logic;
        Qn   : out std_logic
    );
end entity flipflop_JKrs;

architecture rtl of flipflop_JKrs is
   signal Q_reg : std_logic := '0';
begin
   -- Process combinant comportement asynchrone et synchrone
   process (CLK, RSTn, SETn)
      variable sel : std_logic_vector(1 downto 0);
   begin
      -- Priorité 1 : Reset asynchrone
      if RSTn = '0' then
         Q_reg <= '0';
      -- Priorité 2 : Set asynchrone
      elsif SETn = '0' then
         Q_reg <= '1';
      -- Comportement synchrone JK sur front montant
      elsif rising_edge(CLK) then
         sel := J & K;                  
         case sel is
            when "00" => Q_reg <= Q_reg;     -- mémorisation
            when "01" => Q_reg <= '0';       -- reset
            when "10" => Q_reg <= '1';       -- set
            when "11" => Q_reg <= not Q_reg; -- toggle
            when others => null;             
         end case;
      end if;
   end process;
	
   Q  <= Q_reg;
   Qn <= not Q_reg;
end architecture;