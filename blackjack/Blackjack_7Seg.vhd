----------------------------------------------------------------------------------
-- Company: UNSW
-- Engineer: Jorgen Peddersen
-- 
-- Create Date:    16:06:48 09/26/2006 
-- Design Name:    Blackjack Player
-- Module Name:    Blackjack 7 Segment Display - Behavioural 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity Blackjack_7Seg is
  
  port (
    clk   : in  std_logic;
    rst   : in  std_logic;
    score : in  std_logic_vector(4 downto 0);
    data  : out std_logic_vector(6 downto 0);
    addr  : out std_logic_vector(6 downto 0));

end Blackjack_7Seg;

architecture Behavioural of Blackjack_7Seg is
	signal digit1: integer range 0 to 9;
    signal digit0: integer range 0 to 9;
begin  -- Behavioural
	 process (score)
    begin
        if score >= "10100" then
            digit1 <= 2;
            digit0 <= to_integer(unsigned(score - "10100"));
        elsif score >= "01010" then
            digit1 <= 1;
            digit0 <= to_integer(unsigned(score - "01010"));
        else
            digit1 <= 0;
            digit0 <= to_integer(unsigned(score));
        end if;
    end process;
		
	with digit1 select
		 data <=
					"1000000" when 0, -- blank
					"1111001" when 1,
					"0100100" when 2,
					"0110000" when 3,
					"0011001" when 4,
					"0010010" when 5,
					"0000010" when 6,
					"1111000" when 7,
					"0000000" when 8,
					"0010000" when 9;

	with digit0 select
			  addr <=
					"1000000" when 0,
					"1111001" when 1,
					"0100100" when 2,
					"0110000" when 3,
					"0011001" when 4,
					"0010010" when 5,
					"0000010" when 6,
					"1111000" when 7,
					"0000000" when 8,
					"0010000" when 9;
  
  

end Behavioural;
