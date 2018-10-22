----------------------------------------------------------------------------------
-- Company: UNSW
-- Engineer: Jorgen Peddersen
-- 
-- Create Date:    16:06:48 09/26/2006 
-- Design Name:    Blackjack Player
-- Module Name:    Blackjack FSM - Behavioural 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Blackjack_FSM is
  
  port (
    clk                       : in  std_logic; --clock
    rst                       : in  std_logic; --Reset
    cardReady                 : in  std_logic;
    newCard                   : out std_logic;
    lost                      : out std_logic;
    finished                  : out std_logic;
    cmp11, cmp16, cmp21       : in  std_logic;
    sel                       : out std_logic;
	 debug: out std_logic_vector(4 downto 0);
	 ace: buffer std_logic_vector(4 downto 0);
    enaLoad, enaAdd, enaScore : out std_logic);

end Blackjack_FSM;


architecture Behavioural of Blackjack_FSM is
	type state is (S1,S2,S3,S4,S5,S6,S7,S8);
	signal y: state;
	signal sub,add: std_logic;
begin  -- Behavioural
	process(clk,rst)
	begin
		if rst = '0' then
			y<=s1;
		elsif clk'event and clk = '1' then
			case y is
			when s1=> --init state
				if cardReady = '0' then
					y<=s1;
				else 
					y<=s2;
				end if;
			when s2=> -- delay 
				if cardReady = '0' then
					y<=s3;
				else
					y<=s2;
				end if;
			when s3=>  --cmp11
				if cmp11 ='1' then --if A=11
					y<=s6;
				else 
					y<=s4;
				end if;
			when s4=> --cmp16
				if cmp16 = '0' then
					y<=s8;
				else
					if cmp21 ='1' then
						if ace = "00000" then
							y<=s7;
						else
							y<= s5;
						end if;
					end if;
				end if;
			when s5=> --
				y<=s3;
			when s6=> -- not A = 11
				y<=s4;
			when s7 =>	--stay
				y <= S7;
			when S8 =>	--go back to 1
				y <= S1;
			end case;
		end if;
	end process;
	
	process (y)
	begin
		sel<='1';
		newCard<='0';
		enaLoad<='0';
		enaScore<='0';
		finished<='0';
		lost<='0';
		enaAdd<='0';
		add <='0';
		sub <='0';
	case y is 
		when s1=> --load new card
		debug<="00001";
			newCard<='1';
		when s2=>
		debug<="00010";
			newCard<='0';
			enaLoad<='1';
		when s3=>
		debug<="00011";
			newCard<='1';--  --load new card
			enaAdd<='1'; -- enable the add
		when s4=> 
		debug<="00100";
			if cmp16 = '1' then
				if cmp21 = '0' then
					lost<='0';
					finished<='1';
					enaScore<='1';
					newCard<='0';
				end if;
			else 
				newCard<='1'; 
			end if; 
		when s5=>
			debug<="00101";
			sel<='0';
			if ace = "00000" then
			else
				sub <='1';
			end if;
			enaLoad<='1';
		when s6=>
			debug<="00110";
			add<='1';
		when S7 =>
			debug<="00111";
			lost <= '1';
			enaScore<='1';
			finished <= '0';
			newcard <= '0';
		when S8 =>
		debug<="01000";
		enaScore<='1';
	end case;
	end process; 
	process(rst,add,sub)
	begin
		if(rst ='0') then
			ace<="00000";
		elsif clk'event and clk ='1' then
			if(add ='1') then
				ace <=ace+1;
			elsif(sub = '1') then
				ace <= ace -1;
			end if;
		end if;
	end process;
			
end Behavioural;
