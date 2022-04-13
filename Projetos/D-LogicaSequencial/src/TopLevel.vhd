-- Elementos de Sistemas
-- by Luciano Soares
-- Ram8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0);
		HEX0		: out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0);
		HEX4 : out std_logic_vector(6 downto 0);
		HEX5 : out std_logic_vector(6 downto 0);
		KEY : in std_logic_vector(3 downto 0)
	);
end entity;

architecture arch of TopLevel is

	signal bcd1, bcd2, bcd3, bcd4 : std_logic_vector(3 downto 0);

	component Ram8 is
		port(
			clock:   in  STD_LOGIC;
			input:   in  STD_LOGIC_VECTOR(15 downto 0);
			load:    in  STD_LOGIC;
			address: in  STD_LOGIC_VECTOR(2 downto 0);
			output:  out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component sevenSeg is
		port (
				bcd : in  STD_LOGIC_VECTOR(3 downto 0);
				leds: out STD_LOGIC_VECTOR(6 downto 0));
	end component;

	begin
		ram: Ram8 port map (
			clock => not(KEY(0)),
			input => "0000000000000010",
			load => SW(0),
			address => SW(3 downto 1),
			output(3 downto 0) => bcd1,
			output(7 downto 4) => bcd2,
			output(11 downto 8) => bcd3,
			output(15 downto 12) => bcd4
		);

		hex0port: sevenSeg port map (
			bcd => bcd1,
			leds => HEX0);
				
		hex1port: sevenSeg port map (
			bcd => bcd2,
			leds => HEX1);

		hex2port: sevenSeg port map (
			bcd => bcd3,
			leds => HEX2);

		hex3port: sevenSeg port map (
			bcd => bcd4,
			leds => HEX3);

end architecture;
