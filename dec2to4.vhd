library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dec2to4 is

port(
  s: in std_logic_vector (1 downto 0);
  x: out std_logic_vector (3 downto 0)
);

end dec2to4;


architecture if_arch of dec2to4 is

begin

  process (s)

  begin
    if (s="00") then
      x <= "0001";
	elsif (s="01") then
	  x <= "0010";
	elsif (s="10") then
	  x <= "0100";
	else
	  x <= "1000";
	end if;
    
  end process;
  
end architecture;
