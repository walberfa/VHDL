--Linear feedback shift register para 4 bits

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lfsr4 is
port (
   	clk, reset: in std_logic;
    q: out std_logic_vector (3 downto 0)
	);
end lfsr4;

architecture no_zero_arch of lfsr4 is
	signal r_reg, r_next: std_logic_vector (3 downto 0);
	signal fb: std_logic;
	constant SEED: std_logic_vector (3 downto 0):= "0001";

begin
--register
	process (clk, reset)
	begin
    	if (reset = '1') then
			r_reg <= SEED;
		elsif (clk'event and clk='1') then
        	r_reg <= r_next;
		end if;
	end process;
    
-- next_state logic
	fb <= r_reg(1) xor r_reg(0);
    r_next <= fb & r_reg(3 downto 1);

-- output logic
	q <= r_reg;
    
end no_zero_arch;
