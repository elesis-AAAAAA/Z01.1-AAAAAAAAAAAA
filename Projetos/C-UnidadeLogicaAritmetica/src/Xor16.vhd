-- Implementa Xor

Library ieee;
use ieee.std_logic_1164.all;

entity Xor is
	port(
		a,b:         in STD_LOGIC;   -- entradas
		res: out STD_LOGIC   -- resultado
	);
end entity;

architecture rtl of Xor is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!
  res <= a xor b;

end architecture;