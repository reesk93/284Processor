library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder is
port
(
	instruction : in std_logic_vector (15 downto 0);
	op_code : out std_logic_vector (3 downto 0);
	rd : out std_logic_vector (2 downto 0);
	rs : out std_logic_vector (2 downto 0);
	rt : out std_logic_vector (2 downto 0);
	alu_code : out std_logic_vector (2 downto 0);
	imm : out std_logic_vector (5 downto 0)
);
end decoder;

architecture behav of decoder is
	begin
		op_code <= instruction (15 downto 12);
		rd <= instruction (11 downto 9);
		rs <= instruction (8 downto 6);
		rt <= instruction (5 downto 3);
		alu_code <= instruction (2 downto 0);
		imm <= instruction (5 downto 0);
end behav;