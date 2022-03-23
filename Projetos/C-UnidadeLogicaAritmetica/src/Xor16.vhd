-- Implementa Xor

Library ieee;
use ieee.std_logic_1164.all;

entity Xor16 is
	port(
		a,b:         in STD_LOGIC_VECTOR(15 downto 0);   -- entradas
		res: out STD_LOGIC_VECTOR(15 downto 0)   -- resultado
	);
end entity;

architecture rtl of Xor16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!
  res <= a xor b;

end architecture;