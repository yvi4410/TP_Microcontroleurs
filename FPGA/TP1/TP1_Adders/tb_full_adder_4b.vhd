library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is

    -- Signaux de test
    signal Cin        : std_logic := '0';
    signal A, B       : std_logic_vector(3 downto 0);
    signal S          : std_logic_vector(3 downto 0);
    signal Cout       : std_logic;

begin

    -- Instanciation de l’UUT
    UUT : entity work.full_adder_4b
        port map (
            Cin  => Cin,
            a    => A,
            b    => B,
            S    => S,
            Cout => Cout
        );

    -- Processus de simulation
    stim_proc : process
    begin

        -- Test 1 : 0000 + 0000 + 0 = 0000 Cout = 0
        A <= "0000"; B <= "0000"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Erreur somme (0000 + 0000 + 0)" severity error;
        assert Cout = '0' report "Erreur Cout (0000 + 0000 + 0)" severity error;

        -- Test 2 : 0001 + 0010 + 0 = 0011
        A <= "0001"; B <= "0010"; Cin <= '0';
        wait for 10 ns;
        assert S = "0011" report "Erreur somme (0001 + 0010 + 0)" severity error;
        assert Cout = '0' report "Erreur Cout (0001 + 0010 + 0)" severity error;

        -- Test 3 : 1111 + 0001 + 0 = 0000 Cout = 1
        A <= "1111"; B <= "0001"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Erreur somme (1111 + 0001 + 0)" severity error;
        assert Cout = '1' report "Erreur Cout (1111 + 0001 + 0)" severity error;

        -- Test 4 : 1001 + 0110 + 1 = 0000 Cout = 1
        A <= "1001"; B <= "0110"; Cin <= '1';
        wait for 10 ns;
        assert S = "0000" report "Erreur somme (1001 + 0110 + 1)" severity error;
        assert Cout = '1' report "Erreur Cout (1001 + 0110 + 1)" severity error;

        -- Test 5 : 1010 + 0101 + 1 = 1111 Cout = 0
        A <= "1010"; B <= "0101"; Cin <= '1';
        wait for 10 ns;
        assert S = "1111" report "Erreur somme (1010 + 0101 + 1)" severity error;
        assert Cout = '0' report "Erreur Cout (1010 + 0101 + 1)" severity error;

        wait;

    end process;

end architecture;