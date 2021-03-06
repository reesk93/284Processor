library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_splitter is
port
(
	clk : in std_logic;
	out_clk1 : out std_logic;
	out_clk2 : out std_logic
);
end clock_splitter;

architecture behav of clock_splitter is
begin
	process(clk)
	variable counter : integer range 1 to 2;
	begin
		if clk'event and clk = '1' then
			if counter = 1 then
				counter := 2;
				out_clk1 <= '0';
				out_clk2 <= '1';
			elsif counter = 2 then
				counter := 1;
				out_clk1 <= '1';
				out_clk2 <= '0';
			end if;
		end if;
	end process;
end behav;