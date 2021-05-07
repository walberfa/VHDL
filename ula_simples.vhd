library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity ula_simples is

 port(

  ctrl: in std_logic_vector (2 downto 0) ;
  src0, src1: in std_logic_vector (7 downto 0);
  result: out std_logic_vector (7 downto 0)
 );

end ula_simples;


architecture ula_arch of ula_simples is
 signal sum, diff, inc: std_logic_vector (7 downto 0) ;

begin

  inc <= std_logic_vector (signed(src0)+1) ;
  sum <= std_logic_vector(signed(src0)+signed(src1));
  diff <= std_logic_vector (signed(src0)-signed(src1)) ;
  
  result <= inc when ctrl(2)='0' else
            sum when ctrl(1 downto 0)="00" else
            diff when ctrl(1 downto 0)="01" else
            src0 and src1 when ctrl(1 downto 0)="10" else
            src0 or src1;
end architecture;
