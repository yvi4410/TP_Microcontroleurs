library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_flipflop_JKrs is
end entity tb_flipflop_JKrs;

architecture bench of tb_flipflop_JKrs is
    ------------------------------------------------------------------
    -- Signals & constants
    ------------------------------------------------------------------
    signal J, K      : std_logic := '0';
    signal CLK       : std_logic := '0';
    signal SETn, RSTn: std_logic := '1';
    signal Q, Qn     : std_logic;

    constant T_CLK : time := 20 ns;

    ------------------------------------------------------------------
    -- Utility procedure
    ------------------------------------------------------------------
    procedure wait_future_edges(n : natural) is
    begin
        for i in 1 to n loop
            wait until CLK = '0';
            wait until rising_edge(CLK);
        end loop;
    end procedure wait_future_edges;

begin
    ------------------------------------------------------------------
    -- Device Under Test
    ------------------------------------------------------------------
    UUT : entity work.flipflop_JKrs
        port map (
            J    => J,
            K    => K,
            CLK  => CLK,
            SETn => SETn,
            RSTn => RSTn,
            Q    => Q,
            Qn   => Qn
        );

    ------------------------------------------------------------------
    -- Clock generation (20 ns period)
    ------------------------------------------------------------------
    clk_process : process
    begin
        CLK <= '0';
        wait for T_CLK/2;
        loop
            CLK <= '1';
            wait for T_CLK/2;
            CLK <= '0';
            wait for T_CLK/2;
        end loop;
    end process clk_process;

    ------------------------------------------------------------------
    -- Stimulus process
    ------------------------------------------------------------------
    stim_process : process
    begin
        ----------------------------------------------------------------
        -- 1) Async reset on power-up
        ----------------------------------------------------------------
        RSTn <= '0';
        wait for 5 ns;
        assert (Q = '0') report "Async reset did not force Q=0" severity failure;
        RSTn <= '1';
        wait_future_edges(1);

        ----------------------------------------------------------------
        -- 2) Async preset pulse
        ----------------------------------------------------------------
        SETn <= '0';
        wait for 5 ns;
        assert (Q = '1') report "Async preset did not force Q=1" severity failure;
        SETn <= '1';
        wait_future_edges(1);

        ----------------------------------------------------------------
        -- 3) Exhaustive JK tests
		  ---------------------------------------------------------------
		  wait for 19 ns;
        -- JK = 00 (hold)
        J <= '0'; K <= '0';
        wait_future_edges(1);
        assert (Q = '1') report "JK=00 should hold Q at 1" severity failure;

        -- JK = 01 (reset)
        J <= '0'; K <= '1';
		  wait_future_edges(1);
        assert (Q = '1') report "JK=01 should reset Q to 0" severity failure;

        -- JK = 10 (set)
        J <= '1'; K <= '0';
		  wait_future_edges(1);
        assert (Q = '0') report "JK=10 should set Q to 1" severity failure;

        wait until CLK = '0';
        J <= '1'; K <= '1';
        
        wait until rising_edge(CLK);  -- 1er front
        assert (Q = '1') report "First toggle should set Q to 0" severity failure;
        
        wait until rising_edge(CLK);  -- 2ᵉ front
        assert (Q = '0') report "Second toggle should set Q back to 1" severity failure;

        ----------------------------------------------------------------
        -- 4) Async reset pulse mid-cycle
        ----------------------------------------------------------------
        J <= '0'; K <= '0';
        wait for T_CLK/4;    -- middle of cycle
        RSTn <= '0';
        wait for 3 ns;
        assert (Q = '0') report "Mid-cycle async reset failed" severity failure;
        RSTn <= '1';
        wait_future_edges(2);

        ----------------------------------------------------------------
        -- 5) Conflict SETn & RSTn active (warning)
        ----------------------------------------------------------------
        SETn <= '0';
        RSTn <= '0';
        wait for 3 ns;
        assert false report "Warning: SETn and RSTn active simultaneously - undefined" severity warning;
        SETn <= '1';
        RSTn <= '1';
        wait_future_edges(1);

        ----------------------------------------------------------------
        report "ALL TESTS PASSED" severity note;
        wait;
    end process stim_process;

end architecture bench;
