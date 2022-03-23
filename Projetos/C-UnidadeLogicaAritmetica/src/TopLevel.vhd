--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0);
		HEX0		: out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0);
		HEX4 : out std_logic_vector(6 downto 0);
		HEX5 : out std_logic_vector(6 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

  signal x : std_logic_vector(15 downto 0) := x"0073"; -- 115
  signal y : std_logic_vector(15 downto 0) := x"005F"; -- 95
  signal bcd1, bcd2, bcd3, bcd4 : std_logic_vector(3 downto 0);

--------------
-- component
--------------
  component HalfAdder is
    port(
      a,b:         in STD_LOGIC;   -- entradas
      soma,vaium: out STD_LOGIC   -- sum e carry
      );
  end component;

  component FullAdder is
      port(
          a,b,c:      in STD_LOGIC;   -- entradas
          soma,vaium: out STD_LOGIC   -- sum e carry
          );
    end component;

  component ALU is
    port (
			x,y:   in STD_LOGIC_VECTOR(15 downto 0); -- entradas de dados da ALU
			zx:    in STD_LOGIC;                     -- zera a entrada x
			nx:    in STD_LOGIC;                     -- inverte a entrada x
			zy:    in STD_LOGIC;                     -- zera a entrada y
			ny:    in STD_LOGIC;                     -- inverte a entrada y
			f:     in STD_LOGIC_VECTOR(1 downto 0);  -- se 0 calcula x & y, senão x + y
			no:    in STD_LOGIC;                     -- inverte o valor da saída
      dir:   in STD_LOGIC;
			zr:    out STD_LOGIC;                    -- setado se saída igual a zero
			ng:    out STD_LOGIC;                    -- setado se saída é negativa
			saida: out STD_LOGIC_VECTOR(15 downto 0) -- saída de dados da ALU
	);

  end component;


  component sevenSeg is
		port (
				bcd : in  STD_LOGIC_VECTOR(3 downto 0);
				leds: out STD_LOGIC_VECTOR(6 downto 0));
	end component;

---------------
-- implementacao
---------------
begin

  -- u1 : HalfAdder port map(a => SW(0), b=> SW(1), soma => LEDR(0), vaium => vaiumHalf(1));
  -- u2 : FullAdder port map(a => SW(2), b => SW(3), c => vaiumHalf(4), soma => LEDR(2), vaium => LEDR(3));

  u1 : ALU port map(
    x => x,
    y => y,
    zx => SW(0),
    nx => SW(1),
    zy => SW(2),
    ny => SW(3),
    f => SW(5 downto 4),
    dir => SW(6),
    no => SW(7),
    zr => LEDR(0),
    ng => LEDR(1),
    saida(3 downto 0) => bcd1,
    saida(7 downto 4) => bcd2,
    saida(11 downto 8) => bcd3,
    saida(15 downto 12) => bcd4
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

end rtl;
