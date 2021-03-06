library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;

entity sign_ext is
port
(
	input : in std_logic_vector(5 downto 0);
	output : out std_logic_vector(7 downto 0)
);
end sign_ext;

architecture behav of sign_ext is
	begin
		--output <= SXT(input, 8);
		output <= input(5) & input(5) & input;
end behav;