library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder_1_bit is
	port (
		a : in std_logic;
		b : in std_logic;
		Cin : in std_logic;
		s : out std_logic;
		Cout : out std_logic
	);
end full_adder_1_bit;

architecture behavioral of full_adder_1_bit is
signal AB : std_logic;
signal C1 : std_logic;
signal C2 : std_logic;

begin

	instance_Adder1 : entity work.Half_Adder port map(
		a => a,
		b => b,
		c => C1,
		s => AB
	);
	instance_Adder2 : entity work.Half_Adder port map(
		a => AB,
		b => Cin,
		c => C2,
		s => s
	);
Cout <= C1 or C2;
end architecture;