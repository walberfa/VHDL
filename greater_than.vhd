library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity greater_than_2bit is

 port(
 
  a,b: in std_logic_vector (1 downto 0);
  s: out std_logic
 );
 
end greater_than_2bit;

architecture comp of greater_than_2bit is

 signal p0,p1,p2: std_logic;

begin

	p0 <= a(1) and not b(1);
	p1 <= a(0) and not b(1) and not b(0);
	p2 <= a(1) and a(0) and not b(0);
	
     s <= p0 or p1 or p2;

end architecture;
