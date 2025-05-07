LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder_4b IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		b :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Cout :  OUT  STD_LOGIC;
		s :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END full_adder_4b;

ARCHITECTURE bdf_type OF full_adder_4b IS 

COMPONENT full_adder_1_bit
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 s : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	s_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : full_adder_1_bit
PORT MAP(a => a(0),
		 b => b(0),
		 Cin => Cin,
		 s => s_ALTERA_SYNTHESIZED(0),
		 Cout => SYNTHESIZED_WIRE_0);


b2v_inst2 : full_adder_1_bit
PORT MAP(a => a(1),
		 b => b(1),
		 Cin => SYNTHESIZED_WIRE_0,
		 s => s_ALTERA_SYNTHESIZED(1),
		 Cout => SYNTHESIZED_WIRE_1);


b2v_inst3 : full_adder_1_bit
PORT MAP(a => a(2),
		 b => b(2),
		 Cin => SYNTHESIZED_WIRE_1,
		 s => s_ALTERA_SYNTHESIZED(2),
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst4 : full_adder_1_bit
PORT MAP(a => a(3),
		 b => b(3),
		 Cin => SYNTHESIZED_WIRE_2,
		 s => s_ALTERA_SYNTHESIZED(3),
		 Cout => Cout);

s <= s_ALTERA_SYNTHESIZED;

END bdf_type;