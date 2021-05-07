library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dec2to4_tb is
end entity;

architecture decoder of dec2to4_tb is

component dec2to4
port(
    s: in std_logic_vector (1 downto 0);
    x: out std_logic_vector (3 downto 0)
  );
end component;

  signal s: std_logic_vector (1 downto 0);
  signal x: std_logic_vector (3 downto 0);

begin

dut: dec2to4 port map ( s => s,
                        x => x );

process
begin
  
  s <= "00";
  wait for 10 ns;
  
  s <= "01";
  wait for 10 ns;
  
  s <= "10";
  wait for 10 ns;
  
  s <= "11";
  
wait;

end process;

end architecture;
