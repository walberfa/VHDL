library IEEE;
use IEEE.std_logic_1164.all;

entity paridade is
port(
	a, b, c : in std_logic;
    p : out std_logic
);
end entity;

architecture d of paridade is
begin
p <= a xor b xor c;
end architecture;
