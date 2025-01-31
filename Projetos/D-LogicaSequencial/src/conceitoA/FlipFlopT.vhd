-- Elementos de Sistemas
-- FlipFlopT.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopT is
	port(
		clock:  in std_logic;
		t:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopT is

begin
	process(clock, t) begin
		if rising_edge(clock) then
			if (t = '1') then
				q <= notq;
				notq <= q;
			end if;
		end if;
	end process;
end architecture;