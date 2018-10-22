library ieee;
use ieee.std_logic_1164.all;

entity pin_ass is
    Port ( clock_50 : in  STD_LOGIC;     -- on-board clock - fast
           sw : in STD_LOGIC_VECTOR(9 downto 0);   -- switch controlled clock - slow
           key : in  STD_LOGIC_VECTOR(0 downto 0);   -- start input (asynchronous reset)
           ledg : out  STD_LOGIC_VECTOR(7 downto 5);
           ledr : out  STD_LOGIC_VECTOR (9 downto 0);
           HEX1 : out  STD_LOGIC_VECTOR (6 downto 0);
           HEX0 : out  STD_LOGIC_VECTOR (6 downto 0));
end pin_ass;

architecture structure of pin_ass is
	component Blackjack is
		 Port ( clk : in  STD_LOGIC;     -- on-board clock - fast
				  sw_clk : in STD_LOGIC;   -- switch controlled clock - slow
				  start : in  STD_LOGIC;   -- start input (asynchronous reset)
				  cardValue : in  STD_LOGIC_VECTOR (3 downto 0);
				  cardReady : in  STD_LOGIC;
				  newCard : out  STD_LOGIC;
				  lost : out  STD_LOGIC;
				  finished : out  STD_LOGIC;
				  score : out  STD_LOGIC_VECTOR (4 downto 0);
				  data7s : out  STD_LOGIC_VECTOR (6 downto 0);
				  debug :out STD_LOGIC_VECTOR(4 downto 0);
				  addr7s : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;
begin
	do: Blackjack port map(
				clk=>Clock_50,
				sw_clk=>sw(9),
				start=>key(0),
				cardValue=>sw(3 downto 0),
				cardReady=>sw(4),
				newCard=>ledg(5),
				lost=>ledg(6),
				finished=>ledg(7),
				score=>ledr(4 downto 0),
				data7s=>hex1,
				debug => ledr(9 downto 5),
				addr7s=>hex0);
	
	
end structure;