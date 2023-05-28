-- VHDL file
--
-- Autor: Jassan, Joel
-- Date: (mmm/YYYY)
-- 
-- Proyect Explanation:
--
--
-- Copyright 2023, Joel Jassan <joeljassan@hotmail.com>
-- All rights reserved.
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity example_tb is
end entity;

architecture a_example_tb of example_tb is

    ----- Typedefs --------------------------------------------------------------------------------

    ----- Constants -------------------------------------------------------------------------------
    constant clk_period: time := 10 ns;
    constant rst_off_time: time := 80 ns;
    constant simulation_time : time := 5000 ns; --esto no funciona

    ----- Simulation ------------------------------------------------------------------------------

    ----- Signals (i: entrada, o:salida, s:señal intermedia) --------------------------------------
    signal clk_i, rst_i, enable_i : std_logic;

    --component inputs

    --component outputs

begin
    ----- Component to validate -------------------------------------------------------------------
    ex_component : entity work.componente_ejemplo
        generic map()
        port map();
    ----- Code ------------------------------------------------------------------------------------

    -- clock stimulus
    reloj : process
    begin
        clk_i <= '0';
        wait for clk_period;
        clk_i <= '1';
        wait for clk_period;
    end process;

    -- reset stimulus
    reset : process
    begin
        rst_i <= '0';
        wait for reset_off_time;
        rst_i <= '1';
        wait;
    end process;

    -- enable stimulus
    enable : process(rst_i)
    begin
    	if(rising_edge(rst_i) then
            wait for 20 ns;
            enable_i <= '1';
        elsif(rst_i = '0') then
            enable_i <= '0';
        end if;
        
        wait;
    end process;

    -- component to validate stimulus
    --
    --
    ejecucion : process
    begin
        wait;
    end process;
    --
    --
    --

    -- End of test
    stop : process
    begin
        wait for 5000 ns; --tiempo total de
        std.env.stop;
    end process;

    -- Data Verify
    -- aqui irian los note, warning, etc.

end architecture;
