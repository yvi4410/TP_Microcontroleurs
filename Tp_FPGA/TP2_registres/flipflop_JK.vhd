--  Bascule JK synchrone (front montant)
--  Table caractéristique :
--  J  K | Q(next)
--  0  0 |  Q      (hold)
--  0  1 |  0      (reset)
--  1  0 |  1      (set)
--  1  1 | ¬Q      (toggle)

library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JK is
   port (
		J : in  std_logic;
		K : in  std_logic;
		CLK : in  std_logic;
		Q : out std_logic;
		Qn : out std_logic
	);
end entity;

architecture rtl of flipflop_JK is
   signal Q_reg : std_logic := '0';
begin
   process (CLK)
      variable sel : std_logic_vector(1 downto 0);
   begin
      if rising_edge(CLK) then
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