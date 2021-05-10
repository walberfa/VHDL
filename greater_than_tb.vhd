library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity great_than_tb is
end entity;

architecture comp of great_than_tb is

component greater_than_2bit
port(
    a,b: in std_logic_vector (1 downto 0);
    s: out std_logic
  );
end component;

  signal a,b: std_logic_vector (1 downto 0);
  signal s: std_logic;

begin

dut: greater_than_2bit port map ( 
  a => a,
  b => b,
  s => s);

process
begin
  
  a <= "00";
  b <= "00";
  wait for 10 ns;
  
  a <= "01";
  b <= "00";
  wait for 10 ns;
  
  a <= "10";
  b <= "01";

wait;

end process;

end architecture;
