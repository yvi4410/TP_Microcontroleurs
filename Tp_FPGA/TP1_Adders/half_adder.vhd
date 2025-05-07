library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Demi-additionneur
entity Half_Adder is
	port (
		a : in std_logic;
		b : in std_logic;
		s : out std_logic;
		c : out std_logic
		);
	end Half_Adder;
	
architecture behavioral of Half_Adder is
begin
	s <= (a xor (b)) ;
	c <= (a and (b)) ;
end architecture;