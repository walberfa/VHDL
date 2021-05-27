library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lfsr4_tb is
end;

architecture bench of lfsr4_tb is

  component lfsr4
  port (
     clk, reset: in std_logic;
     q: out std_logic_vector (3 downto 0)
  	);
  end component;

  signal clk, reset: std_logic;
  signal q: std_logic_vector (3 downto 0) ;

  constant clock_period: time := 10 ns;

begin

  dut: lfsr4 port map (
  			clk   => clk,
            reset => reset,
            q     => q );

  reseting: process
  begin
   
    reset <= '1';
         
  	wait for 10 ns; 
    reset <= '0';

    wait for 200 ns;
    
    wait;
  end process;

  clocking: process  
  begin
    
  
    for i in 0 to 8 loop
    
      clk <= '0';
      wait for clock_period/2;
      
      clk <= '1';
      wait for clock_period/2;
      
      end loop;
      wait;
  
  end process;

end;
