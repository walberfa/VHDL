library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture d of tb is

component paridade is
port(
	a, b, c : in std_logic;
    p : out std_logic
);
end component;

signal a, b, c, p : std_logic;

begin

dut: paridade port map (a,b,c,p) ;

process
begin

a <= '0';
b <= '0';
c <= '0';

wait for 10 ns;
assert (p='0') report "error" severity failure;

a <= '0';
b <= '0';
c <= '1';

wait for 10 ns;
assert (p='1') report "error" severity failure;

a <= '0';
b <= '1';
c <= '0';

wait for 10 ns;
assert (p='1') report "error" severity failure;

a <= '0';
b <= '1';
c <= '1';

wait for 10 ns;
assert (p='0') report "error" severity failure;

a <= '1';
b <= '0';
c <= '0';

wait for 10 ns;
assert (p='1') report "error" severity failure;

a <= '1';
b <= '0';
c <= '1';

wait for 10 ns;
assert (p='0') report "error" severity failure;

a <= '1';
b <= '1';
c <= '0';

wait for 10 ns;
assert (p='0') report "error" severity failure;

a <= '1';
b <= '1';
c <= '1';

wait for 10 ns;
assert (p='1') report "error" severity failure;

wait;


end process;
