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

-- DATE "09/19/2018 00:42:15"

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

ENTITY 	part4 IS
    PORT (
	sw : IN std_logic_vector(2 DOWNTO 0);
	clock_50 : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 0);
	ledg : OUT std_logic_vector(4 DOWNTO 0);
	ledr : OUT std_logic_vector(9 DOWNTO 0)
	);
END part4;

-- Design Ports Information
-- ledg[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[3]~37_combout\ : std_logic;
SIGNAL \count[5]~41_combout\ : std_logic;
SIGNAL \count[21]~73_combout\ : std_logic;
SIGNAL \count[25]~81_combout\ : std_logic;
SIGNAL \pw[1][0]~regout\ : std_logic;
SIGNAL \pw[2][0]~regout\ : std_logic;
SIGNAL \pw[3][4]~regout\ : std_logic;
SIGNAL \pw[3][2]~regout\ : std_logic;
SIGNAL \pw[3][0]~regout\ : std_logic;
SIGNAL \pw[4][0]~regout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Selector33~4_combout\ : std_logic;
SIGNAL \pw[1][4]~regout\ : std_logic;
SIGNAL \pw[1][5]~regout\ : std_logic;
SIGNAL \pw[1][1]~regout\ : std_logic;
SIGNAL \pw[1][2]~regout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \pw2[1][4]~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector33~5_combout\ : std_logic;
SIGNAL \pw[1][0]~2_combout\ : std_logic;
SIGNAL \pw2[1][5]~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \pw2[1][1]~regout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \pw2[1][2]~regout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \pw[2][4]~regout\ : std_logic;
SIGNAL \pw[2][5]~regout\ : std_logic;
SIGNAL \pw[2][1]~regout\ : std_logic;
SIGNAL \pw[2][2]~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \pw2[1][0]~regout\ : std_logic;
SIGNAL \pw2[2][4]~regout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \pw2[2][5]~regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \pw2[2][2]~regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \pw[3][5]~regout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \pw2[2][0]~regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \pw2[3][4]~regout\ : std_logic;
SIGNAL \pw2[3][5]~regout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \pw2[3][2]~regout\ : std_logic;
SIGNAL \pw[4][4]~regout\ : std_logic;
SIGNAL \pw[4][5]~regout\ : std_logic;
SIGNAL \pw[4][2]~regout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \pw2[3][0]~regout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \pw2[4][0]~regout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \second[26]~0_combout\ : std_logic;
SIGNAL \Mux5~0_wirecell_combout\ : std_logic;
SIGNAL \pw2[1][0]~feeder_combout\ : std_logic;
SIGNAL \pw2[2][4]~feeder_combout\ : std_logic;
SIGNAL \pw2[2][2]~feeder_combout\ : std_logic;
SIGNAL \pw2[2][0]~feeder_combout\ : std_logic;
SIGNAL \pw2[3][0]~feeder_combout\ : std_logic;
SIGNAL \curr[4]~feeder_combout\ : std_logic;
SIGNAL \curr[5]~feeder_combout\ : std_logic;
SIGNAL \curr[2]~feeder_combout\ : std_logic;
SIGNAL \second[12]~feeder_combout\ : std_logic;
SIGNAL \pw2[1][1]~feeder_combout\ : std_logic;
SIGNAL \pw2[1][2]~feeder_combout\ : std_logic;
SIGNAL \pw2[2][5]~feeder_combout\ : std_logic;
SIGNAL \pw[3][2]~feeder_combout\ : std_logic;
SIGNAL \pw[3][5]~feeder_combout\ : std_logic;
SIGNAL \pw2[3][4]~feeder_combout\ : std_logic;
SIGNAL \pw2[3][2]~feeder_combout\ : std_logic;
SIGNAL \pw2[4][0]~feeder_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \f_p.re~feeder_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \f_p.wa~regout\ : std_logic;
SIGNAL \f_q.wa~regout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \f_p.dark~regout\ : std_logic;
SIGNAL \f_q.dark~regout\ : std_logic;
SIGNAL \count[0]~30\ : std_logic;
SIGNAL \count[1]~33_combout\ : std_logic;
SIGNAL \count[15]~62\ : std_logic;
SIGNAL \count[16]~64\ : std_logic;
SIGNAL \count[17]~65_combout\ : std_logic;
SIGNAL \count~32_combout\ : std_logic;
SIGNAL \count[17]~66\ : std_logic;
SIGNAL \count[18]~68\ : std_logic;
SIGNAL \count[19]~69_combout\ : std_logic;
SIGNAL \count[18]~67_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \count[19]~70\ : std_logic;
SIGNAL \count[20]~71_combout\ : std_logic;
SIGNAL \count[20]~72\ : std_logic;
SIGNAL \count[21]~74\ : std_logic;
SIGNAL \count[22]~75_combout\ : std_logic;
SIGNAL \count[22]~76\ : std_logic;
SIGNAL \count[23]~77_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \count[23]~78\ : std_logic;
SIGNAL \count[24]~79_combout\ : std_logic;
SIGNAL \count[24]~80\ : std_logic;
SIGNAL \count[25]~82\ : std_logic;
SIGNAL \count[26]~83_combout\ : std_logic;
SIGNAL \count[9]~49_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \second[11]~feeder_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \count[16]~63_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \count[16]~31_combout\ : std_logic;
SIGNAL \count[16]~85_combout\ : std_logic;
SIGNAL \count[1]~34\ : std_logic;
SIGNAL \count[2]~36\ : std_logic;
SIGNAL \count[3]~38\ : std_logic;
SIGNAL \count[4]~39_combout\ : std_logic;
SIGNAL \count[4]~40\ : std_logic;
SIGNAL \count[5]~42\ : std_logic;
SIGNAL \count[6]~43_combout\ : std_logic;
SIGNAL \count[6]~44\ : std_logic;
SIGNAL \count[7]~46\ : std_logic;
SIGNAL \count[8]~47_combout\ : std_logic;
SIGNAL \count[8]~48\ : std_logic;
SIGNAL \count[9]~50\ : std_logic;
SIGNAL \count[10]~51_combout\ : std_logic;
SIGNAL \count[10]~52\ : std_logic;
SIGNAL \count[11]~53_combout\ : std_logic;
SIGNAL \count[11]~54\ : std_logic;
SIGNAL \count[12]~55_combout\ : std_logic;
SIGNAL \count[12]~56\ : std_logic;
SIGNAL \count[13]~57_combout\ : std_logic;
SIGNAL \count[13]~58\ : std_logic;
SIGNAL \count[14]~59_combout\ : std_logic;
SIGNAL \count[14]~60\ : std_logic;
SIGNAL \count[15]~61_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \count[0]~29_combout\ : std_logic;
SIGNAL \count[2]~35_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \count[7]~45_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \f_p.re~regout\ : std_logic;
SIGNAL \f_q.re~regout\ : std_logic;
SIGNAL \ledg[0]~0_combout\ : std_logic;
SIGNAL \ledg[0]~reg0_regout\ : std_logic;
SIGNAL \ledg[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ledg[1]~reg0_regout\ : std_logic;
SIGNAL \f_p.full~regout\ : std_logic;
SIGNAL \f_q.full~regout\ : std_logic;
SIGNAL \ledg[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ledg[2]~reg0_regout\ : std_logic;
SIGNAL \ledg[4]~reg0_regout\ : std_logic;
SIGNAL \ledr[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[0]~reg0_regout\ : std_logic;
SIGNAL \sw~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL second : std_logic_vector(26 DOWNTO 0);
SIGNAL curr : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_sw <= sw;
ww_clock_50 <= clock_50;
ww_key <= key;
ledg <= ww_ledg;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);

-- Location: LCFF_X34_Y9_N13
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[3]~37_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X34_Y9_N17
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[5]~41_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCFF_X34_Y8_N25
\count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[25]~81_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LCFF_X34_Y8_N17
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[21]~73_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X34_Y9_N12
\count[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~37_combout\ = (count(3) & (!\count[2]~36\)) # (!count(3) & ((\count[2]~36\) # (GND)))
-- \count[3]~38\ = CARRY((!\count[2]~36\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~36\,
	combout => \count[3]~37_combout\,
	cout => \count[3]~38\);

-- Location: LCCOMB_X34_Y9_N16
\count[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~41_combout\ = (count(5) & (!\count[4]~40\)) # (!count(5) & ((\count[4]~40\) # (GND)))
-- \count[5]~42\ = CARRY((!\count[4]~40\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~40\,
	combout => \count[5]~41_combout\,
	cout => \count[5]~42\);

-- Location: LCCOMB_X34_Y8_N16
\count[21]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[21]~73_combout\ = (count(21) & (!\count[20]~72\)) # (!count(21) & ((\count[20]~72\) # (GND)))
-- \count[21]~74\ = CARRY((!\count[20]~72\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~72\,
	combout => \count[21]~73_combout\,
	cout => \count[21]~74\);

-- Location: LCCOMB_X34_Y8_N24
\count[25]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[25]~81_combout\ = (count(25) & (!\count[24]~80\)) # (!count(25) & ((\count[24]~80\) # (GND)))
-- \count[25]~82\ = CARRY((!\count[24]~80\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \count[24]~80\,
	combout => \count[25]~81_combout\,
	cout => \count[25]~82\);

-- Location: LCFF_X38_Y8_N21
\pw[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	sdata => \pw2[1][0]~regout\,
	sload => \f_q.dark~regout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[1][0]~regout\);

-- Location: LCFF_X38_Y8_N31
\pw[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	sdata => \pw2[2][0]~regout\,
	sload => \f_q.dark~regout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[2][0]~regout\);

-- Location: LCFF_X38_Y8_N5
\pw[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux5~0_wirecell_combout\,
	sdata => \pw2[3][4]~regout\,
	sload => \f_q.dark~regout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[3][4]~regout\);

-- Location: LCFF_X38_Y8_N23
\pw[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw[3][2]~feeder_combout\,
	sdata => \pw2[3][2]~regout\,
	sload => \f_q.dark~regout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[3][2]~regout\);

-- Location: LCFF_X38_Y8_N25
\pw[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector23~0_combout\,
	sdata => \pw2[3][0]~regout\,
	sload => \f_q.dark~regout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[3][0]~regout\);

-- Location: LCFF_X38_Y8_N7
\pw[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux9~1_combout\,
	sdata => \pw2[4][0]~regout\,
	sload => \f_q.dark~regout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[4][0]~regout\);

-- Location: LCCOMB_X33_Y8_N14
\Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!count(26) & !count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(26),
	datad => count(24),
	combout => \Equal1~7_combout\);

-- Location: LCFF_X36_Y8_N23
\curr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \curr[4]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr(4));

-- Location: LCFF_X36_Y8_N29
\curr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \curr[5]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr(5));

-- Location: LCFF_X36_Y8_N31
\curr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \pw[1][1]~regout\,
	sload => VCC,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr(1));

-- Location: LCFF_X36_Y8_N25
\curr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \curr[2]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr(2));

-- Location: LCCOMB_X36_Y8_N30
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!curr(2) & (curr(5) & (!curr(1) & curr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => curr(2),
	datab => curr(5),
	datac => curr(1),
	datad => curr(4),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X33_Y8_N13
\second[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \second[26]~0_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(26));

-- Location: LCFF_X33_Y8_N7
\second[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \second[12]~feeder_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(12));

-- Location: LCCOMB_X33_Y8_N30
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(21) & (second(11) & (count(20) & count(22)))) # (!count(21) & (!second(11) & (!count(20) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => second(11),
	datac => count(20),
	datad => count(22),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X36_Y8_N20
\Selector33~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~4_combout\ = (\Equal1~3_combout\ & (\f_q.dark~regout\ & \Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~3_combout\,
	datac => \f_q.dark~regout\,
	datad => \Equal1~8_combout\,
	combout => \Selector33~4_combout\);

-- Location: LCFF_X38_Y8_N9
\pw[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[1][4]~regout\);

-- Location: LCFF_X37_Y8_N25
\pw[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[1][5]~regout\);

-- Location: LCFF_X32_Y8_N1
\pw[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[1][1]~regout\);

-- Location: LCFF_X32_Y8_N3
\pw[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[1][2]~regout\);

-- Location: LCFF_X36_Y8_N5
\curr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \pw[1][0]~regout\,
	sload => VCC,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr(0));

-- Location: LCCOMB_X36_Y8_N4
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (curr(0) & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => curr(0),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCFF_X37_Y8_N15
\pw2[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \pw[2][4]~regout\,
	sload => VCC,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[1][4]~regout\);

-- Location: LCCOMB_X38_Y8_N8
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\pw2[1][4]~regout\) # (!\f_q.dark~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.dark~regout\,
	datad => \pw2[1][4]~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X35_Y8_N18
\Selector33~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~5_combout\ = (\f_q.full~regout\) # (\f_q.wa~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.full~regout\,
	datad => \f_q.wa~regout\,
	combout => \Selector33~5_combout\);

-- Location: LCCOMB_X38_Y8_N14
\pw[1][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw[1][0]~2_combout\ = (!\Selector33~5_combout\ & (((\Equal1~3_combout\ & \Equal1~8_combout\)) # (!\f_q.dark~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~5_combout\,
	datab => \f_q.dark~regout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~8_combout\,
	combout => \pw[1][0]~2_combout\);

-- Location: LCFF_X36_Y8_N11
\pw2[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \pw[2][5]~regout\,
	sload => VCC,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[1][5]~regout\);

-- Location: LCCOMB_X37_Y8_N24
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\pw2[1][5]~regout\) # (!\f_q.dark~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f_q.dark~regout\,
	datad => \pw2[1][5]~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X32_Y8_N28
\Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~3_combout\ & \Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~3_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X32_Y8_N22
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\pw[1][1]~regout\ & ((\Selector33~5_combout\) # ((\f_q.dark~regout\ & !\Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.dark~regout\,
	datab => \Selector33~5_combout\,
	datac => \pw[1][1]~regout\,
	datad => \Equal1~9_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X36_Y8_N13
\pw2[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[1][1]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[1][1]~regout\);

-- Location: LCCOMB_X32_Y8_N0
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\pw2[1][1]~regout\ & \Selector33~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pw2[1][1]~regout\,
	datac => \Selector33~4_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X32_Y8_N12
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\pw[1][2]~regout\ & ((\Selector33~5_combout\) # ((\f_q.dark~regout\ & !\Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.dark~regout\,
	datab => \Selector33~5_combout\,
	datac => \pw[1][2]~regout\,
	datad => \Equal1~9_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X36_Y8_N27
\pw2[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[1][2]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[1][2]~regout\);

-- Location: LCCOMB_X32_Y8_N2
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\pw2[1][2]~regout\ & \Selector33~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pw2[1][2]~regout\,
	datac => \Selector33~4_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCFF_X38_Y8_N17
\pw[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[2][4]~regout\);

-- Location: LCFF_X37_Y8_N9
\pw[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[2][5]~regout\);

-- Location: LCFF_X32_Y8_N19
\pw[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[2][1]~regout\);

-- Location: LCFF_X38_Y8_N3
\pw[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[2][2]~regout\);

-- Location: LCCOMB_X38_Y8_N20
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\sw~combout\(0) & ((\sw~combout\(2)))) # (!\sw~combout\(0) & (!\sw~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => \Selector7~0_combout\);

-- Location: LCFF_X37_Y8_N31
\pw2[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[1][0]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[1][0]~regout\);

-- Location: LCFF_X37_Y8_N29
\pw2[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[2][4]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[2][4]~regout\);

-- Location: LCCOMB_X38_Y8_N0
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\sw~combout\(1) & \sw~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X38_Y8_N16
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\f_q.dark~regout\ & (\pw2[2][4]~regout\)) # (!\f_q.dark~regout\ & (((\sw~combout\(0)) # (!\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.dark~regout\,
	datab => \pw2[2][4]~regout\,
	datac => \sw~combout\(0),
	datad => \Mux9~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X37_Y8_N23
\pw2[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[2][5]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[2][5]~regout\);

-- Location: LCCOMB_X37_Y8_N8
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\pw2[2][5]~regout\) # (!\f_q.dark~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f_q.dark~regout\,
	datad => \pw2[2][5]~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X32_Y8_N18
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\pw[2][1]~regout\ & ((\Selector33~5_combout\) # ((\f_q.dark~regout\ & !\Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.dark~regout\,
	datab => \Selector33~5_combout\,
	datac => \pw[2][1]~regout\,
	datad => \Equal1~9_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X37_Y8_N13
\pw2[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[2][2]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[2][2]~regout\);

-- Location: LCCOMB_X38_Y8_N2
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\f_q.dark~regout\ & (\pw2[2][2]~regout\)) # (!\f_q.dark~regout\ & (((\Mux9~0_combout\ & !\sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pw2[2][2]~regout\,
	datab => \Mux9~0_combout\,
	datac => \sw~combout\(0),
	datad => \f_q.dark~regout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X38_Y8_N19
\pw[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw[3][5]~feeder_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[3][5]~regout\);

-- Location: LCCOMB_X38_Y8_N30
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\sw~combout\(0)) # (\sw~combout\(1) $ (\sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => \Selector15~0_combout\);

-- Location: LCFF_X37_Y8_N27
\pw2[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[2][0]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[2][0]~regout\);

-- Location: LCCOMB_X38_Y8_N12
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\sw~combout\(1) & !\sw~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datac => \sw~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X36_Y8_N1
\pw2[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[3][4]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[3][4]~regout\);

-- Location: LCFF_X37_Y8_N17
\pw2[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \pw[4][5]~regout\,
	sload => VCC,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[3][5]~regout\);

-- Location: LCCOMB_X37_Y8_N16
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\pw2[3][5]~regout\) # (!\f_q.dark~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f_q.dark~regout\,
	datac => \pw2[3][5]~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X37_Y8_N7
\pw2[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[3][2]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[3][2]~regout\);

-- Location: LCFF_X36_Y8_N7
\pw[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[4][4]~regout\);

-- Location: LCFF_X38_Y8_N27
\pw[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector26~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[4][5]~regout\);

-- Location: LCFF_X38_Y8_N29
\pw[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector29~0_combout\,
	ena => \pw[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw[4][2]~regout\);

-- Location: LCCOMB_X38_Y8_N24
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\sw~combout\(1) & ((\sw~combout\(0)) # (\sw~combout\(2)))) # (!\sw~combout\(1) & ((!\sw~combout\(2)) # (!\sw~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => \Selector23~0_combout\);

-- Location: LCFF_X37_Y8_N1
\pw2[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[3][0]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[3][0]~regout\);

-- Location: LCCOMB_X38_Y8_N10
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = \sw~combout\(0) $ (((\sw~combout\(1) & !\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datac => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X36_Y8_N6
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\f_q.re~regout\ & (!\Selector33~4_combout\ & (\pw[4][4]~regout\))) # (!\f_q.re~regout\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~4_combout\,
	datab => \f_q.re~regout\,
	datac => \pw[4][4]~regout\,
	datad => \Mux8~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCFF_X36_Y8_N9
\pw2[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \pw2[4][0]~feeder_combout\,
	ena => \Selector33~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pw2[4][0]~regout\);

-- Location: LCCOMB_X38_Y8_N26
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\pw2[4][0]~regout\) # (!\f_q.dark~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f_q.dark~regout\,
	datac => \pw2[4][0]~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X38_Y8_N28
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\f_q.dark~regout\ & (\pw2[4][0]~regout\)) # (!\f_q.dark~regout\ & ((!\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.dark~regout\,
	datac => \pw2[4][0]~regout\,
	datad => \Mux8~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X38_Y8_N6
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\sw~combout\(1)) # ((!\sw~combout\(2)) # (!\sw~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X33_Y8_N12
\second[26]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[26]~0_combout\ = !\Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \second[26]~0_combout\);

-- Location: LCCOMB_X38_Y8_N4
\Mux5~0_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_wirecell_combout\ = !\Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~0_combout\,
	combout => \Mux5~0_wirecell_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[2]~I\ : cycloneii_io
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
	padio => ww_sw(2),
	combout => \sw~combout\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
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
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
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
	padio => ww_sw(1),
	combout => \sw~combout\(1));

-- Location: LCCOMB_X37_Y8_N30
\pw2[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[1][0]~feeder_combout\ = \pw[2][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[2][0]~regout\,
	combout => \pw2[1][0]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N28
\pw2[2][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[2][4]~feeder_combout\ = \pw[3][4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[3][4]~regout\,
	combout => \pw2[2][4]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N12
\pw2[2][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[2][2]~feeder_combout\ = \pw[3][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[3][2]~regout\,
	combout => \pw2[2][2]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N26
\pw2[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[2][0]~feeder_combout\ = \pw[3][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[3][0]~regout\,
	combout => \pw2[2][0]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N0
\pw2[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[3][0]~feeder_combout\ = \pw[4][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[4][0]~regout\,
	combout => \pw2[3][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N22
\curr[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr[4]~feeder_combout\ = \pw[1][4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[1][4]~regout\,
	combout => \curr[4]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N28
\curr[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr[5]~feeder_combout\ = \pw[1][5]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[1][5]~regout\,
	combout => \curr[5]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N24
\curr[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr[2]~feeder_combout\ = \pw[1][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[1][2]~regout\,
	combout => \curr[2]~feeder_combout\);

-- Location: LCCOMB_X33_Y8_N6
\second[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[12]~feeder_combout\ = \Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \second[12]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N12
\pw2[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[1][1]~feeder_combout\ = \pw[2][1]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[2][1]~regout\,
	combout => \pw2[1][1]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N26
\pw2[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[1][2]~feeder_combout\ = \pw[2][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[2][2]~regout\,
	combout => \pw2[1][2]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N22
\pw2[2][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[2][5]~feeder_combout\ = \pw[3][5]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[3][5]~regout\,
	combout => \pw2[2][5]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N22
\pw[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw[3][2]~feeder_combout\ = \Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~0_combout\,
	combout => \pw[3][2]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N18
\pw[3][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw[3][5]~feeder_combout\ = \Selector18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector18~0_combout\,
	combout => \pw[3][5]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N0
\pw2[3][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[3][4]~feeder_combout\ = \pw[4][4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[4][4]~regout\,
	combout => \pw2[3][4]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N6
\pw2[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[3][2]~feeder_combout\ = \pw[4][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pw[4][2]~regout\,
	combout => \pw2[3][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N8
\pw2[4][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pw2[4][0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \pw2[4][0]~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: CLKCTRL_G2
\clock_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y8_N26
\f_p.re~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \f_p.re~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \f_p.re~feeder_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
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
	padio => ww_key(1),
	combout => \key~combout\(1));

-- Location: LCCOMB_X35_Y8_N16
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Selector33~3_combout\ & (!\Selector33~0_combout\ & (!\f_q.re~regout\))) # (!\Selector33~3_combout\ & (((\f_p.wa~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \f_q.re~regout\,
	datac => \f_p.wa~regout\,
	datad => \Selector33~3_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCFF_X35_Y8_N17
\f_p.wa\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_p.wa~regout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
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
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: LCFF_X35_Y8_N3
\f_q.wa\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \f_p.wa~regout\,
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_q.wa~regout\);

-- Location: LCCOMB_X36_Y8_N14
\Selector33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (!\f_q.full~regout\ & (!\key~combout\(1) & \f_q.wa~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.full~regout\,
	datab => \key~combout\(1),
	datad => \f_q.wa~regout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X35_Y8_N20
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\Selector33~3_combout\ & (!\Selector33~0_combout\ & (\f_q.re~regout\))) # (!\Selector33~3_combout\ & (((\f_p.dark~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \f_q.re~regout\,
	datac => \f_p.dark~regout\,
	datad => \Selector33~3_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCFF_X35_Y8_N21
\f_p.dark\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_p.dark~regout\);

-- Location: LCFF_X35_Y8_N7
\f_q.dark\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \f_p.dark~regout\,
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_q.dark~regout\);

-- Location: LCCOMB_X34_Y9_N6
\count[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~29_combout\ = count(0) $ (VCC)
-- \count[0]~30\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~29_combout\,
	cout => \count[0]~30\);

-- Location: LCCOMB_X34_Y9_N8
\count[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~33_combout\ = (count(1) & (!\count[0]~30\)) # (!count(1) & ((\count[0]~30\) # (GND)))
-- \count[1]~34\ = CARRY((!\count[0]~30\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~30\,
	combout => \count[1]~33_combout\,
	cout => \count[1]~34\);

-- Location: LCCOMB_X34_Y8_N4
\count[15]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~61_combout\ = (count(15) & (!\count[14]~60\)) # (!count(15) & ((\count[14]~60\) # (GND)))
-- \count[15]~62\ = CARRY((!\count[14]~60\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~60\,
	combout => \count[15]~61_combout\,
	cout => \count[15]~62\);

-- Location: LCCOMB_X34_Y8_N6
\count[16]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~63_combout\ = (count(16) & (\count[15]~62\ $ (GND))) # (!count(16) & (!\count[15]~62\ & VCC))
-- \count[16]~64\ = CARRY((count(16) & !\count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~62\,
	combout => \count[16]~63_combout\,
	cout => \count[16]~64\);

-- Location: LCCOMB_X34_Y8_N8
\count[17]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~65_combout\ = (count(17) & (!\count[16]~64\)) # (!count(17) & ((\count[16]~64\) # (GND)))
-- \count[17]~66\ = CARRY((!\count[16]~64\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~64\,
	combout => \count[17]~65_combout\,
	cout => \count[17]~66\);

-- Location: LCCOMB_X35_Y8_N30
\count~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~32_combout\ = (!\f_q.wa~regout\ & \f_q.re~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f_q.wa~regout\,
	datad => \f_q.re~regout\,
	combout => \count~32_combout\);

-- Location: LCFF_X34_Y8_N9
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[17]~65_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X34_Y8_N10
\count[18]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~67_combout\ = (count(18) & (\count[17]~66\ $ (GND))) # (!count(18) & (!\count[17]~66\ & VCC))
-- \count[18]~68\ = CARRY((count(18) & !\count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~66\,
	combout => \count[18]~67_combout\,
	cout => \count[18]~68\);

-- Location: LCCOMB_X34_Y8_N12
\count[19]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~69_combout\ = (count(19) & (!\count[18]~68\)) # (!count(19) & ((\count[18]~68\) # (GND)))
-- \count[19]~70\ = CARRY((!\count[18]~68\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~68\,
	combout => \count[19]~69_combout\,
	cout => \count[19]~70\);

-- Location: LCFF_X34_Y8_N13
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[19]~69_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCFF_X34_Y8_N11
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[18]~67_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCCOMB_X33_Y8_N26
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (count(16) & (!count(19) & (count(18) & count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(19),
	datac => count(18),
	datad => count(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X34_Y8_N14
\count[20]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~71_combout\ = (count(20) & (\count[19]~70\ $ (GND))) # (!count(20) & (!\count[19]~70\ & VCC))
-- \count[20]~72\ = CARRY((count(20) & !\count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~70\,
	combout => \count[20]~71_combout\,
	cout => \count[20]~72\);

-- Location: LCFF_X34_Y8_N15
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[20]~71_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCCOMB_X34_Y8_N18
\count[22]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~75_combout\ = (count(22) & (\count[21]~74\ $ (GND))) # (!count(22) & (!\count[21]~74\ & VCC))
-- \count[22]~76\ = CARRY((count(22) & !\count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~74\,
	combout => \count[22]~75_combout\,
	cout => \count[22]~76\);

-- Location: LCFF_X34_Y8_N19
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[22]~75_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCCOMB_X34_Y8_N20
\count[23]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~77_combout\ = (count(23) & (!\count[22]~76\)) # (!count(23) & ((\count[22]~76\) # (GND)))
-- \count[23]~78\ = CARRY((!\count[22]~76\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \count[22]~76\,
	combout => \count[23]~77_combout\,
	cout => \count[23]~78\);

-- Location: LCFF_X34_Y8_N21
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[23]~77_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCCOMB_X33_Y8_N24
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (count(21) & (!count(22) & (count(23) & count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => count(23),
	datad => count(20),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X33_Y8_N28
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!count(14) & (!count(13) & (count(11) & count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(13),
	datac => count(11),
	datad => count(12),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X33_Y8_N20
\Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~7_combout\ & (\Equal1~5_combout\ & (\Equal1~6_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X34_Y8_N22
\count[24]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[24]~79_combout\ = (count(24) & (\count[23]~78\ $ (GND))) # (!count(24) & (!\count[23]~78\ & VCC))
-- \count[24]~80\ = CARRY((count(24) & !\count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~78\,
	combout => \count[24]~79_combout\,
	cout => \count[24]~80\);

-- Location: LCFF_X34_Y8_N23
\count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[24]~79_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LCCOMB_X34_Y8_N26
\count[26]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[26]~83_combout\ = \count[25]~82\ $ (!count(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(26),
	cin => \count[25]~82\,
	combout => \count[26]~83_combout\);

-- Location: LCFF_X34_Y8_N27
\count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[26]~83_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LCCOMB_X34_Y9_N24
\count[9]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~49_combout\ = (count(9) & (!\count[8]~48\)) # (!count(9) & ((\count[8]~48\) # (GND)))
-- \count[9]~50\ = CARRY((!\count[8]~48\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~48\,
	combout => \count[9]~49_combout\,
	cout => \count[9]~50\);

-- Location: LCFF_X34_Y9_N25
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[9]~49_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X35_Y8_N28
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(8) & (!count(9) & (second(26) $ (!count(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(26),
	datab => count(26),
	datac => count(8),
	datad => count(9),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X35_Y8_N4
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(17) & (!count(23) & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(23),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X33_Y8_N18
\second[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[11]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \second[11]~feeder_combout\);

-- Location: LCFF_X33_Y8_N19
\second[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \second[11]~feeder_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(11));

-- Location: LCCOMB_X33_Y8_N22
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(14) & (count(13) & (count(19) & second(11)))) # (!count(14) & (!count(13) & (!count(19) & !second(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(13),
	datac => count(19),
	datad => second(11),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X34_Y8_N7
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[16]~63_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X33_Y8_N0
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (second(12) & (count(18) & (count(16) & count(24)))) # (!second(12) & (!count(18) & (!count(16) & !count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(12),
	datab => count(18),
	datac => count(16),
	datad => count(24),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X33_Y8_N16
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (second(12) & (count(12) & (second(11) $ (!count(11))))) # (!second(12) & (!count(12) & (second(11) $ (!count(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(12),
	datab => second(11),
	datac => count(11),
	datad => count(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X34_Y8_N30
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X35_Y8_N6
\count[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~31_combout\ = (\Equal0~1_combout\ & (\Equal0~8_combout\ & (!\f_q.dark~regout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~8_combout\,
	datac => \f_q.dark~regout\,
	datad => \Equal0~6_combout\,
	combout => \count[16]~31_combout\);

-- Location: LCCOMB_X35_Y8_N0
\count[16]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~85_combout\ = (\count[16]~31_combout\) # ((\Equal1~3_combout\ & (\f_q.dark~regout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \f_q.dark~regout\,
	datac => \Equal1~8_combout\,
	datad => \count[16]~31_combout\,
	combout => \count[16]~85_combout\);

-- Location: LCFF_X34_Y9_N9
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[1]~33_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X34_Y9_N10
\count[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~35_combout\ = (count(2) & (\count[1]~34\ $ (GND))) # (!count(2) & (!\count[1]~34\ & VCC))
-- \count[2]~36\ = CARRY((count(2) & !\count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~34\,
	combout => \count[2]~35_combout\,
	cout => \count[2]~36\);

-- Location: LCCOMB_X34_Y9_N14
\count[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~39_combout\ = (count(4) & (\count[3]~38\ $ (GND))) # (!count(4) & (!\count[3]~38\ & VCC))
-- \count[4]~40\ = CARRY((count(4) & !\count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~38\,
	combout => \count[4]~39_combout\,
	cout => \count[4]~40\);

-- Location: LCFF_X34_Y9_N15
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[4]~39_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X34_Y9_N18
\count[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~43_combout\ = (count(6) & (\count[5]~42\ $ (GND))) # (!count(6) & (!\count[5]~42\ & VCC))
-- \count[6]~44\ = CARRY((count(6) & !\count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~42\,
	combout => \count[6]~43_combout\,
	cout => \count[6]~44\);

-- Location: LCFF_X34_Y9_N19
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[6]~43_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X34_Y9_N20
\count[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~45_combout\ = (count(7) & (!\count[6]~44\)) # (!count(7) & ((\count[6]~44\) # (GND)))
-- \count[7]~46\ = CARRY((!\count[6]~44\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~44\,
	combout => \count[7]~45_combout\,
	cout => \count[7]~46\);

-- Location: LCCOMB_X34_Y9_N22
\count[8]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~47_combout\ = (count(8) & (\count[7]~46\ $ (GND))) # (!count(8) & (!\count[7]~46\ & VCC))
-- \count[8]~48\ = CARRY((count(8) & !\count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~46\,
	combout => \count[8]~47_combout\,
	cout => \count[8]~48\);

-- Location: LCFF_X34_Y9_N23
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[8]~47_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X34_Y9_N26
\count[10]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~51_combout\ = (count(10) & (\count[9]~50\ $ (GND))) # (!count(10) & (!\count[9]~50\ & VCC))
-- \count[10]~52\ = CARRY((count(10) & !\count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~50\,
	combout => \count[10]~51_combout\,
	cout => \count[10]~52\);

-- Location: LCFF_X34_Y9_N27
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[10]~51_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X34_Y9_N28
\count[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~53_combout\ = (count(11) & (!\count[10]~52\)) # (!count(11) & ((\count[10]~52\) # (GND)))
-- \count[11]~54\ = CARRY((!\count[10]~52\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~52\,
	combout => \count[11]~53_combout\,
	cout => \count[11]~54\);

-- Location: LCFF_X34_Y9_N29
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[11]~53_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X34_Y9_N30
\count[12]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~55_combout\ = (count(12) & (\count[11]~54\ $ (GND))) # (!count(12) & (!\count[11]~54\ & VCC))
-- \count[12]~56\ = CARRY((count(12) & !\count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~54\,
	combout => \count[12]~55_combout\,
	cout => \count[12]~56\);

-- Location: LCFF_X34_Y9_N31
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[12]~55_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X34_Y8_N0
\count[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~57_combout\ = (count(13) & (!\count[12]~56\)) # (!count(13) & ((\count[12]~56\) # (GND)))
-- \count[13]~58\ = CARRY((!\count[12]~56\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~56\,
	combout => \count[13]~57_combout\,
	cout => \count[13]~58\);

-- Location: LCFF_X34_Y8_N1
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[13]~57_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X34_Y8_N2
\count[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~59_combout\ = (count(14) & (\count[13]~58\ $ (GND))) # (!count(14) & (!\count[13]~58\ & VCC))
-- \count[14]~60\ = CARRY((count(14) & !\count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~58\,
	combout => \count[14]~59_combout\,
	cout => \count[14]~60\);

-- Location: LCFF_X34_Y8_N3
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[14]~59_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCFF_X34_Y8_N5
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[15]~61_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X35_Y8_N14
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(5) & (!count(15) & (!count(4) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(15),
	datac => count(4),
	datad => count(10),
	combout => \Equal1~1_combout\);

-- Location: LCFF_X34_Y9_N7
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[0]~29_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCFF_X34_Y9_N11
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[2]~35_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X34_Y9_N4
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(3) & (!count(1) & (!count(0) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => count(0),
	datad => count(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X34_Y9_N2
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!count(7) & (!count(6) & (count(9) & count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(6),
	datac => count(9),
	datad => count(8),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X35_Y8_N24
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!count(25) & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X35_Y8_N8
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\Equal2~0_combout\ & (\f_q.dark~regout\ & (\Equal1~3_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \f_q.dark~regout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~8_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCFF_X34_Y9_N21
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \count[7]~45_combout\,
	sclr => \count[16]~85_combout\,
	ena => \count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X34_Y8_N28
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (second(26) & (count(7) & (second(11) $ (!count(6))))) # (!second(26) & (!count(7) & (second(11) $ (!count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(26),
	datab => second(11),
	datac => count(7),
	datad => count(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X35_Y8_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(25) & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X35_Y8_N22
\Selector33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\f_q.full~regout\ & (\Equal0~8_combout\ & (\Equal0~6_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.full~regout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X35_Y8_N12
\Selector33~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = \f_q.re~regout\ $ (\Selector33~0_combout\ $ (((!\Selector33~2_combout\ & !\Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_q.re~regout\,
	datab => \Selector33~2_combout\,
	datac => \Selector33~0_combout\,
	datad => \Selector33~1_combout\,
	combout => \Selector33~3_combout\);

-- Location: LCFF_X35_Y8_N27
\f_p.re\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \f_p.re~feeder_combout\,
	ena => \Selector33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_p.re~regout\);

-- Location: LCFF_X35_Y8_N19
\f_q.re\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \f_p.re~regout\,
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_q.re~regout\);

-- Location: LCCOMB_X36_Y8_N16
\ledg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledg[0]~0_combout\ = !\f_q.re~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f_q.re~regout\,
	combout => \ledg[0]~0_combout\);

-- Location: LCFF_X36_Y8_N17
\ledg[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \ledg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledg[0]~reg0_regout\);

-- Location: LCCOMB_X36_Y8_N18
\ledg[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledg[1]~reg0feeder_combout\ = \f_q.wa~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f_q.wa~regout\,
	combout => \ledg[1]~reg0feeder_combout\);

-- Location: LCFF_X36_Y8_N19
\ledg[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \ledg[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledg[1]~reg0_regout\);

-- Location: LCFF_X35_Y8_N9
\f_p.full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Selector33~0_combout\,
	ena => \Selector33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_p.full~regout\);

-- Location: LCFF_X35_Y8_N31
\f_q.full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \f_p.full~regout\,
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f_q.full~regout\);

-- Location: LCCOMB_X46_Y8_N16
\ledg[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledg[2]~reg0feeder_combout\ = \f_q.full~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f_q.full~regout\,
	combout => \ledg[2]~reg0feeder_combout\);

-- Location: LCFF_X46_Y8_N17
\ledg[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \ledg[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledg[2]~reg0_regout\);

-- Location: LCFF_X36_Y8_N21
\ledg[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \f_q.dark~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledg[4]~reg0_regout\);

-- Location: LCCOMB_X46_Y8_N18
\ledr[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr[0]~reg0feeder_combout\ = \f_q.full~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f_q.full~regout\,
	combout => \ledr[0]~reg0feeder_combout\);

-- Location: LCFF_X46_Y8_N19
\ledr[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \ledr[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr[0]~reg0_regout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
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
	datain => \ledg[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
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
	datain => \ledg[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
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
	datain => \ledg[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
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
	datain => \ledg[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(4));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[0]~I\ : cycloneii_io
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
	datain => \ledr[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(9));
END structure;


