library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity part2 is
    port (
        KEY: in std_logic_vector(2 downto 0);
        LEDR: out std_logic_vector(9 downto 0);
		  Debug: buffer std_LOGIC_VECTOR(8 downto 0)
    );
end part2;

architecture arch of part2 is
	component proc IS
		PORT ( 	DIN : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			Resetn, Clock, Run : IN STD_LOGIC;
			Done : BUFFER STD_LOGIC;
			BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
	END component;
	component memory
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
		);
	end component;
	signal count: unsigned(4 downto 0);
	signal address: std_LOGIC_VECTOR(4 downto 0);
	signal input: std_LOGIC_VECTOR(8 downto 0);
begin
	process(KEY(1))
	begin
		if key(0) = '0' then
				count <= "00000";
		elsif key(1)'event and key(1) = '1' then
				count <= count+1;
		end if;
	end process;
	init: address<=std_LOGIC_VECTOR(count);
	mem:  memory port map(address,key(1),input);
	debug_proces: debug<=input;
	processor: proc port map(Input,KEY(0),key(2),'1',ledr(9),ledr(8 downto 0));
	
end arch;
		