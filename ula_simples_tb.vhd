library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb is
end entity;

architecture ula_arch of tb is

component ula_simples is
port(

  ctrl: in std_logic_vector (2 downto 0) ;
  src0, src1: in std_logic_vector (7 downto 0);
  result: out std_logic_vector (7 downto 0)
 );
end component;

  signal ctrl: std_logic_vector (2 downto 0);
  signal src0, src1: std_logic_vector (7 downto 0);
  signal result: std_logic_vector (7 downto 0) ;


begin

dut: ula_simples port map (
   ctrl => ctrl,
   src0 => src0,
   src1 => src1,
   result => result
);

process
begin

ctrl <= "000";
src0 <= "00000000";
src1 <= "00000010";

wait for 10 ns;

ctrl <= "000";
src0 <= "00000001";
src1 <= "00000010";

wait for 10 ns;

ctrl <= "100";
src0 <= "00000001";
src1 <= "00000010";

wait for 10 ns;

ctrl <= "100";
src0 <= "00001011";
src1 <= "00000010";

wait for 10 ns;

ctrl <= "101";
src0 <= "00000011";
src1 <= "00000010";

wait for 10 ns;

ctrl <= "110";
src0 <= "00000001";
src1 <= "00000010";

wait;

end process;

end architecture;
