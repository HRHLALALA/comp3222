-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "09/01/2018 00:20:48"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END part5;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[2]~30_combout\ : std_logic;
SIGNAL \counter[7]~40_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \counter[18]~63\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \counter[19]~64_combout\ : std_logic;
SIGNAL \counter[19]~65\ : std_logic;
SIGNAL \counter[20]~66_combout\ : std_logic;
SIGNAL \counter[20]~67\ : std_logic;
SIGNAL \counter[21]~68_combout\ : std_logic;
SIGNAL \counter[21]~69\ : std_logic;
SIGNAL \counter[22]~70_combout\ : std_logic;
SIGNAL \counter[22]~71\ : std_logic;
SIGNAL \counter[23]~72_combout\ : std_logic;
SIGNAL \counter[23]~73\ : std_logic;
SIGNAL \counter[24]~74_combout\ : std_logic;
SIGNAL \counter[24]~75\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \counter[25]~76_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \seconds[0]~5_combout\ : std_logic;
SIGNAL \counter[0]~27\ : std_logic;
SIGNAL \counter[1]~28_combout\ : std_logic;
SIGNAL \counter[0]~26_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \counter[1]~29\ : std_logic;
SIGNAL \counter[2]~31\ : std_logic;
SIGNAL \counter[3]~33\ : std_logic;
SIGNAL \counter[4]~34_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \counter[4]~35\ : std_logic;
SIGNAL \counter[5]~37\ : std_logic;
SIGNAL \counter[6]~38_combout\ : std_logic;
SIGNAL \counter[5]~36_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \counter[6]~39\ : std_logic;
SIGNAL \counter[7]~41\ : std_logic;
SIGNAL \counter[8]~42_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \counter[8]~43\ : std_logic;
SIGNAL \counter[9]~45\ : std_logic;
SIGNAL \counter[10]~46_combout\ : std_logic;
SIGNAL \counter[9]~44_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \counter[10]~47\ : std_logic;
SIGNAL \counter[11]~48_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \counter[11]~49\ : std_logic;
SIGNAL \counter[12]~50_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \counter[12]~51\ : std_logic;
SIGNAL \counter[13]~52_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \counter[13]~53\ : std_logic;
SIGNAL \counter[14]~54_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \counter[14]~55\ : std_logic;
SIGNAL \counter[15]~56_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \counter[15]~57\ : std_logic;
SIGNAL \counter[16]~58_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \counter[16]~59\ : std_logic;
SIGNAL \counter[17]~60_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \counter[17]~61\ : std_logic;
SIGNAL \counter[18]~62_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \counter[3]~32_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \seconds[2]~1_combout\ : std_logic;
SIGNAL \seconds[2]~2_combout\ : std_logic;
SIGNAL \seconds~0_combout\ : std_logic;
SIGNAL \seconds[3]~3_combout\ : std_logic;
SIGNAL \seconds[3]~4_combout\ : std_logic;
SIGNAL \out0|Mux6~0_combout\ : std_logic;
SIGNAL \out0|Mux5~0_combout\ : std_logic;
SIGNAL \out0|Mux4~0_combout\ : std_logic;
SIGNAL \out0|Mux3~0_combout\ : std_logic;
SIGNAL \out0|Mux2~0_combout\ : std_logic;
SIGNAL \out0|Mux1~0_combout\ : std_logic;
SIGNAL \out0|Mux0~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL seconds : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \out0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\out0|ALT_INV_Mux0~0_combout\ <= NOT \out0|Mux0~0_combout\;

-- Location: LCFF_X11_Y10_N21
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[7]~40_combout\,
	sdata => \Add3~14_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCFF_X11_Y9_N23
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[24]~74_combout\,
	sdata => \Add3~48_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCFF_X11_Y10_N11
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[2]~30_combout\,
	sdata => \Add3~4_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCFF_X11_Y9_N13
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[19]~64_combout\,
	sdata => \Add3~38_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCFF_X11_Y9_N15
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[20]~66_combout\,
	sdata => \Add3~40_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCFF_X11_Y9_N17
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[21]~68_combout\,
	sdata => \Add3~42_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCFF_X11_Y9_N19
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[22]~70_combout\,
	sdata => \Add3~44_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCFF_X11_Y9_N21
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[23]~72_combout\,
	sdata => \Add3~46_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCFF_X11_Y9_N25
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[25]~76_combout\,
	sdata => \Add3~50_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X11_Y10_N10
\counter[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~30_combout\ = (counter(2) & (\counter[1]~29\ $ (GND))) # (!counter(2) & (!\counter[1]~29\ & VCC))
-- \counter[2]~31\ = CARRY((counter(2) & !\counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~29\,
	combout => \counter[2]~30_combout\,
	cout => \counter[2]~31\);

-- Location: LCCOMB_X11_Y10_N20
\counter[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~40_combout\ = (counter(7) & (\counter[6]~39\ & VCC)) # (!counter(7) & (!\counter[6]~39\))
-- \counter[7]~41\ = CARRY((!counter(7) & !\counter[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~39\,
	combout => \counter[7]~40_combout\,
	cout => \counter[7]~41\);

-- Location: LCCOMB_X12_Y10_N10
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (counter(2) & (\Add3~3\ $ (GND))) # (!counter(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((counter(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X12_Y10_N20
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (counter(7) & (!\Add3~13\)) # (!counter(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X11_Y9_N10
\counter[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~62_combout\ = (counter(18) & ((GND) # (!\counter[17]~61\))) # (!counter(18) & (\counter[17]~61\ $ (GND)))
-- \counter[18]~63\ = CARRY((counter(18)) # (!\counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~61\,
	combout => \counter[18]~62_combout\,
	cout => \counter[18]~63\);

-- Location: LCCOMB_X12_Y9_N10
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (counter(18) & (\Add3~35\ $ (GND))) # (!counter(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((counter(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X11_Y9_N12
\counter[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~64_combout\ = (counter(19) & (!\counter[18]~63\)) # (!counter(19) & ((\counter[18]~63\) # (GND)))
-- \counter[19]~65\ = CARRY((!\counter[18]~63\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~63\,
	combout => \counter[19]~64_combout\,
	cout => \counter[19]~65\);

-- Location: LCCOMB_X11_Y9_N14
\counter[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[20]~66_combout\ = (counter(20) & (\counter[19]~65\ $ (GND))) # (!counter(20) & (!\counter[19]~65\ & VCC))
-- \counter[20]~67\ = CARRY((counter(20) & !\counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~65\,
	combout => \counter[20]~66_combout\,
	cout => \counter[20]~67\);

-- Location: LCCOMB_X11_Y9_N16
\counter[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[21]~68_combout\ = (counter(21) & (!\counter[20]~67\)) # (!counter(21) & ((\counter[20]~67\) # (GND)))
-- \counter[21]~69\ = CARRY((!\counter[20]~67\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~67\,
	combout => \counter[21]~68_combout\,
	cout => \counter[21]~69\);

-- Location: LCCOMB_X11_Y9_N18
\counter[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[22]~70_combout\ = (counter(22) & (\counter[21]~69\ $ (GND))) # (!counter(22) & (!\counter[21]~69\ & VCC))
-- \counter[22]~71\ = CARRY((counter(22) & !\counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~69\,
	combout => \counter[22]~70_combout\,
	cout => \counter[22]~71\);

-- Location: LCCOMB_X11_Y9_N20
\counter[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[23]~72_combout\ = (counter(23) & (!\counter[22]~71\)) # (!counter(23) & ((\counter[22]~71\) # (GND)))
-- \counter[23]~73\ = CARRY((!\counter[22]~71\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \counter[22]~71\,
	combout => \counter[23]~72_combout\,
	cout => \counter[23]~73\);

-- Location: LCCOMB_X11_Y9_N22
\counter[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[24]~74_combout\ = (counter(24) & ((GND) # (!\counter[23]~73\))) # (!counter(24) & (\counter[23]~73\ $ (GND)))
-- \counter[24]~75\ = CARRY((counter(24)) # (!\counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~73\,
	combout => \counter[24]~74_combout\,
	cout => \counter[24]~75\);

-- Location: LCCOMB_X12_Y9_N12
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (counter(19) & (!\Add3~37\)) # (!counter(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X12_Y9_N14
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (counter(20) & (\Add3~39\ $ (GND))) # (!counter(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((counter(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X12_Y9_N16
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (counter(21) & (!\Add3~41\)) # (!counter(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X12_Y9_N18
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (counter(22) & (\Add3~43\ $ (GND))) # (!counter(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((counter(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X12_Y9_N20
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (counter(23) & (!\Add3~45\)) # (!counter(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X12_Y9_N22
\Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (counter(24) & (\Add3~47\ $ (GND))) # (!counter(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((counter(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X11_Y9_N24
\counter[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[25]~76_combout\ = counter(25) $ (\counter[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	cin => \counter[24]~75\,
	combout => \counter[25]~76_combout\);

-- Location: LCCOMB_X12_Y9_N24
\Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add3~49\ $ (counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: LCCOMB_X10_Y9_N24
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(24) & (!counter(16) & (!counter(18) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(16),
	datac => counter(18),
	datad => counter(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y9_N26
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!counter(17) & !counter(18))) # (!counter(20))) # (!counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(20),
	datac => counter(17),
	datad => counter(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X11_Y9_N28
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!counter(22)) # (!counter(21))) # (!counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datac => counter(21),
	datad => counter(22),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X10_Y9_N20
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((!counter(24) & ((\LessThan0~5_combout\) # (\LessThan0~6_combout\)))) # (!counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(25),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y9_N0
\seconds[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \seconds[0]~5_combout\ = !seconds(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(0),
	combout => \seconds[0]~5_combout\);

-- Location: LCCOMB_X11_Y10_N6
\counter[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~26_combout\ = counter(0) $ (VCC)
-- \counter[0]~27\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~26_combout\,
	cout => \counter[0]~27\);

-- Location: LCCOMB_X11_Y10_N8
\counter[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~28_combout\ = (counter(1) & (!\counter[0]~27\)) # (!counter(1) & ((\counter[0]~27\) # (GND)))
-- \counter[1]~29\ = CARRY((!\counter[0]~27\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~27\,
	combout => \counter[1]~28_combout\,
	cout => \counter[1]~29\);

-- Location: LCCOMB_X12_Y10_N6
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = counter(0) $ (VCC)
-- \Add3~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCFF_X11_Y10_N7
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[0]~26_combout\,
	sdata => \Add3~0_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X12_Y10_N8
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (counter(1) & (!\Add3~1\)) # (!counter(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCFF_X11_Y10_N9
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[1]~28_combout\,
	sdata => \Add3~2_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X11_Y10_N12
\counter[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~32_combout\ = (counter(3) & (!\counter[2]~31\)) # (!counter(3) & ((\counter[2]~31\) # (GND)))
-- \counter[3]~33\ = CARRY((!\counter[2]~31\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~31\,
	combout => \counter[3]~32_combout\,
	cout => \counter[3]~33\);

-- Location: LCCOMB_X11_Y10_N14
\counter[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~34_combout\ = (counter(4) & (\counter[3]~33\ $ (GND))) # (!counter(4) & (!\counter[3]~33\ & VCC))
-- \counter[4]~35\ = CARRY((counter(4) & !\counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~33\,
	combout => \counter[4]~34_combout\,
	cout => \counter[4]~35\);

-- Location: LCCOMB_X12_Y10_N12
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (counter(3) & (!\Add3~5\)) # (!counter(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X12_Y10_N14
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (counter(4) & (\Add3~7\ $ (GND))) # (!counter(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((counter(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCFF_X11_Y10_N15
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[4]~34_combout\,
	sdata => \Add3~8_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X11_Y10_N16
\counter[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~36_combout\ = (counter(5) & (!\counter[4]~35\)) # (!counter(5) & ((\counter[4]~35\) # (GND)))
-- \counter[5]~37\ = CARRY((!\counter[4]~35\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~35\,
	combout => \counter[5]~36_combout\,
	cout => \counter[5]~37\);

-- Location: LCCOMB_X11_Y10_N18
\counter[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~38_combout\ = (counter(6) & (\counter[5]~37\ $ (GND))) # (!counter(6) & (!\counter[5]~37\ & VCC))
-- \counter[6]~39\ = CARRY((counter(6) & !\counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~37\,
	combout => \counter[6]~38_combout\,
	cout => \counter[6]~39\);

-- Location: LCCOMB_X12_Y10_N16
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (counter(5) & (!\Add3~9\)) # (!counter(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCFF_X11_Y10_N17
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[5]~36_combout\,
	sdata => \Add3~10_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X12_Y10_N18
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (counter(6) & (\Add3~11\ $ (GND))) # (!counter(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((counter(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCFF_X11_Y10_N19
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[6]~38_combout\,
	sdata => \Add3~12_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X11_Y10_N22
\counter[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~42_combout\ = (counter(8) & ((GND) # (!\counter[7]~41\))) # (!counter(8) & (\counter[7]~41\ $ (GND)))
-- \counter[8]~43\ = CARRY((counter(8)) # (!\counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~41\,
	combout => \counter[8]~42_combout\,
	cout => \counter[8]~43\);

-- Location: LCCOMB_X12_Y10_N22
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (counter(8) & (\Add3~15\ $ (GND))) # (!counter(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((counter(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCFF_X11_Y10_N23
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[8]~42_combout\,
	sdata => \Add3~16_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X11_Y10_N24
\counter[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~44_combout\ = (counter(9) & (\counter[8]~43\ & VCC)) # (!counter(9) & (!\counter[8]~43\))
-- \counter[9]~45\ = CARRY((!counter(9) & !\counter[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~43\,
	combout => \counter[9]~44_combout\,
	cout => \counter[9]~45\);

-- Location: LCCOMB_X11_Y10_N26
\counter[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~46_combout\ = (counter(10) & ((GND) # (!\counter[9]~45\))) # (!counter(10) & (\counter[9]~45\ $ (GND)))
-- \counter[10]~47\ = CARRY((counter(10)) # (!\counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~45\,
	combout => \counter[10]~46_combout\,
	cout => \counter[10]~47\);

-- Location: LCCOMB_X12_Y10_N24
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (counter(9) & (!\Add3~17\)) # (!counter(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCFF_X11_Y10_N25
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[9]~44_combout\,
	sdata => \Add3~18_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X12_Y10_N26
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (counter(10) & (\Add3~19\ $ (GND))) # (!counter(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((counter(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCFF_X11_Y10_N27
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[10]~46_combout\,
	sdata => \Add3~20_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X11_Y10_N28
\counter[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~48_combout\ = (counter(11) & (\counter[10]~47\ & VCC)) # (!counter(11) & (!\counter[10]~47\))
-- \counter[11]~49\ = CARRY((!counter(11) & !\counter[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~47\,
	combout => \counter[11]~48_combout\,
	cout => \counter[11]~49\);

-- Location: LCCOMB_X12_Y10_N28
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (counter(11) & (!\Add3~21\)) # (!counter(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCFF_X11_Y10_N29
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[11]~48_combout\,
	sdata => \Add3~22_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X11_Y10_N30
\counter[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~50_combout\ = (counter(12) & (\counter[11]~49\ $ (GND))) # (!counter(12) & (!\counter[11]~49\ & VCC))
-- \counter[12]~51\ = CARRY((counter(12) & !\counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~49\,
	combout => \counter[12]~50_combout\,
	cout => \counter[12]~51\);

-- Location: LCCOMB_X12_Y10_N30
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (counter(12) & (\Add3~23\ $ (GND))) # (!counter(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((counter(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCFF_X11_Y10_N31
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[12]~50_combout\,
	sdata => \Add3~24_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X11_Y9_N0
\counter[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~52_combout\ = (counter(13) & (!\counter[12]~51\)) # (!counter(13) & ((\counter[12]~51\) # (GND)))
-- \counter[13]~53\ = CARRY((!\counter[12]~51\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~51\,
	combout => \counter[13]~52_combout\,
	cout => \counter[13]~53\);

-- Location: LCCOMB_X12_Y9_N0
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (counter(13) & (!\Add3~25\)) # (!counter(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCFF_X11_Y9_N1
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[13]~52_combout\,
	sdata => \Add3~26_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X11_Y9_N2
\counter[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~54_combout\ = (counter(14) & (\counter[13]~53\ $ (GND))) # (!counter(14) & (!\counter[13]~53\ & VCC))
-- \counter[14]~55\ = CARRY((counter(14) & !\counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~53\,
	combout => \counter[14]~54_combout\,
	cout => \counter[14]~55\);

-- Location: LCCOMB_X12_Y9_N2
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (counter(14) & (\Add3~27\ $ (GND))) # (!counter(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((counter(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCFF_X11_Y9_N3
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[14]~54_combout\,
	sdata => \Add3~28_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X11_Y9_N4
\counter[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~56_combout\ = (counter(15) & (!\counter[14]~55\)) # (!counter(15) & ((\counter[14]~55\) # (GND)))
-- \counter[15]~57\ = CARRY((!\counter[14]~55\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~55\,
	combout => \counter[15]~56_combout\,
	cout => \counter[15]~57\);

-- Location: LCCOMB_X12_Y9_N4
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (counter(15) & (!\Add3~29\)) # (!counter(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCFF_X11_Y9_N5
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[15]~56_combout\,
	sdata => \Add3~30_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X11_Y9_N6
\counter[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~58_combout\ = (counter(16) & ((GND) # (!\counter[15]~57\))) # (!counter(16) & (\counter[15]~57\ $ (GND)))
-- \counter[16]~59\ = CARRY((counter(16)) # (!\counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~57\,
	combout => \counter[16]~58_combout\,
	cout => \counter[16]~59\);

-- Location: LCCOMB_X12_Y9_N6
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (counter(16) & (\Add3~31\ $ (GND))) # (!counter(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((counter(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCFF_X11_Y9_N7
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[16]~58_combout\,
	sdata => \Add3~32_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X11_Y9_N8
\counter[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~60_combout\ = (counter(17) & (!\counter[16]~59\)) # (!counter(17) & ((\counter[16]~59\) # (GND)))
-- \counter[17]~61\ = CARRY((!\counter[16]~59\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~59\,
	combout => \counter[17]~60_combout\,
	cout => \counter[17]~61\);

-- Location: LCCOMB_X12_Y9_N8
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (counter(17) & (!\Add3~33\)) # (!counter(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCFF_X11_Y9_N9
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[17]~60_combout\,
	sdata => \Add3~34_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCFF_X11_Y9_N11
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[18]~62_combout\,
	sdata => \Add3~36_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X10_Y9_N2
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!counter(24) & (!counter(16) & !counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(16),
	datac => counter(18),
	combout => \LessThan0~8_combout\);

-- Location: LCFF_X11_Y10_N13
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter[3]~32_combout\,
	sdata => \Add3~6_combout\,
	sload => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X11_Y10_N2
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!counter(3)) # (!counter(0))) # (!counter(1))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(0),
	datad => counter(3),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y10_N4
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!counter(6)) # (!counter(5))) # (!counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => counter(5),
	datad => counter(6),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y10_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(9) & (!counter(10) & (!counter(8) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(8),
	datad => counter(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y9_N14
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y9_N30
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (((!counter(12)) # (!counter(15))) # (!counter(13))) # (!counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(13),
	datac => counter(15),
	datad => counter(12),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X10_Y9_N0
\LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~7_combout\) # ((\LessThan0~4_combout\) # ((\LessThan0~8_combout\ & \LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCFF_X9_Y9_N1
\seconds[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seconds[0]~5_combout\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(0));

-- Location: LCCOMB_X8_Y9_N28
\seconds[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seconds[2]~1_combout\ = (seconds(3) & (seconds(2) & (!seconds(0) & !seconds(1)))) # (!seconds(3) & (((seconds(0) & seconds(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(2),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(1),
	combout => \seconds[2]~1_combout\);

-- Location: LCCOMB_X8_Y9_N16
\seconds[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seconds[2]~2_combout\ = seconds(2) $ (((\seconds[2]~1_combout\ & !\LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds[2]~1_combout\,
	datac => seconds(2),
	datad => \LessThan0~10_combout\,
	combout => \seconds[2]~2_combout\);

-- Location: LCFF_X8_Y9_N17
\seconds[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seconds[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(2));

-- Location: LCCOMB_X9_Y9_N30
\seconds~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seconds~0_combout\ = (seconds(3) & ((seconds(1) & ((seconds(0)))) # (!seconds(1) & (seconds(2) & !seconds(0))))) # (!seconds(3) & ((seconds(1) $ (seconds(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(1),
	datad => seconds(0),
	combout => \seconds~0_combout\);

-- Location: LCFF_X9_Y9_N31
\seconds[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seconds~0_combout\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(1));

-- Location: LCCOMB_X8_Y9_N18
\seconds[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \seconds[3]~3_combout\ = (seconds(2) & ((seconds(3)) # ((seconds(0) & seconds(1))))) # (!seconds(2) & (seconds(3) & ((seconds(0)) # (seconds(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(2),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(1),
	combout => \seconds[3]~3_combout\);

-- Location: LCCOMB_X8_Y9_N2
\seconds[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \seconds[3]~4_combout\ = seconds(3) $ (((\seconds[3]~3_combout\ & !\LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds[3]~3_combout\,
	datac => seconds(3),
	datad => \LessThan0~10_combout\,
	combout => \seconds[3]~4_combout\);

-- Location: LCFF_X8_Y9_N3
\seconds[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seconds[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(3));

-- Location: LCCOMB_X1_Y18_N28
\out0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux6~0_combout\ = (seconds(3) & (seconds(0) & (seconds(2) $ (seconds(1))))) # (!seconds(3) & (!seconds(1) & (seconds(2) $ (seconds(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\out0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux5~0_combout\ = (seconds(3) & ((seconds(0) & ((seconds(1)))) # (!seconds(0) & (seconds(2))))) # (!seconds(3) & (seconds(2) & (seconds(0) $ (seconds(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\out0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux4~0_combout\ = (seconds(3) & (seconds(2) & ((seconds(1)) # (!seconds(0))))) # (!seconds(3) & (!seconds(2) & (!seconds(0) & seconds(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N2
\out0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux3~0_combout\ = (seconds(1) & ((seconds(2) & ((seconds(0)))) # (!seconds(2) & (seconds(3) & !seconds(0))))) # (!seconds(1) & (!seconds(3) & (seconds(2) $ (seconds(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\out0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux2~0_combout\ = (seconds(1) & (!seconds(3) & ((seconds(0))))) # (!seconds(1) & ((seconds(2) & (!seconds(3))) # (!seconds(2) & ((seconds(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\out0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux1~0_combout\ = (seconds(2) & (seconds(0) & (seconds(3) $ (seconds(1))))) # (!seconds(2) & (!seconds(3) & ((seconds(0)) # (seconds(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\out0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out0|Mux0~0_combout\ = (seconds(0) & ((seconds(3)) # (seconds(2) $ (seconds(1))))) # (!seconds(0) & ((seconds(1)) # (seconds(3) $ (seconds(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datab => seconds(2),
	datac => seconds(0),
	datad => seconds(1),
	combout => \out0|Mux0~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out0|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


