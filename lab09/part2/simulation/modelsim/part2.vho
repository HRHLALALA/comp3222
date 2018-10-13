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

-- DATE "10/13/2018 22:27:43"

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

ENTITY 	search IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	start : IN std_logic;
	Restart : IN std_logic;
	clk : IN std_logic;
	result : OUT std_logic_vector(4 DOWNTO 0);
	debug : OUT std_logic_vector(6 DOWNTO 0);
	found : OUT std_logic
	);
END search;

-- Design Ports Information
-- result[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[5]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- found	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Restart	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF search IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_Restart : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_result : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_found : std_logic;
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Restart~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \min[2]~9_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \max~0_combout\ : std_logic;
SIGNAL \max~2_combout\ : std_logic;
SIGNAL \max~4_combout\ : std_logic;
SIGNAL \max~5_combout\ : std_logic;
SIGNAL \curr_max[1]~0_combout\ : std_logic;
SIGNAL \curr_max[0]~1_combout\ : std_logic;
SIGNAL \curr_max[3]~3_combout\ : std_logic;
SIGNAL \curr_max[4]~4_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \min[0]~6\ : std_logic;
SIGNAL \min[1]~8\ : std_logic;
SIGNAL \min[2]~10\ : std_logic;
SIGNAL \min[3]~11_combout\ : std_logic;
SIGNAL \Restart~combout\ : std_logic;
SIGNAL \Restart~clkctrl_outclk\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \curr_mid[0]~_wirecell_combout\ : std_logic;
SIGNAL \curr_mid[1]~_wirecell_combout\ : std_logic;
SIGNAL \curr_mid[2]~_wirecell_combout\ : std_logic;
SIGNAL \min[0]~5_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \max[4]~1_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \min[3]~12\ : std_logic;
SIGNAL \min[4]~13_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \curr_mid[3]~3_combout\ : std_logic;
SIGNAL \curr_mid[3]~_wirecell_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \y.T2~regout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \curr_mid[2]~2_combout\ : std_logic;
SIGNAL \curr_max[2]~2_combout\ : std_logic;
SIGNAL \max~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \curr_mid[1]~1_combout\ : std_logic;
SIGNAL \min[1]~7_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \curr_mid[0]~0_combout\ : std_logic;
SIGNAL \result[0]~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \y.T3~regout\ : std_logic;
SIGNAL \result[0]~0_combout\ : std_logic;
SIGNAL \result[0]~reg0_regout\ : std_logic;
SIGNAL \result[1]~2_combout\ : std_logic;
SIGNAL \result[1]~reg0_regout\ : std_logic;
SIGNAL \result[2]~3_combout\ : std_logic;
SIGNAL \result[2]~reg0_regout\ : std_logic;
SIGNAL \result[3]~4_combout\ : std_logic;
SIGNAL \result[3]~reg0_regout\ : std_logic;
SIGNAL \result[4]~reg0_regout\ : std_logic;
SIGNAL \debug[0]~reg0feeder_combout\ : std_logic;
SIGNAL \debug[0]~reg0_regout\ : std_logic;
SIGNAL \debug[1]~reg0_regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \y.T1~regout\ : std_logic;
SIGNAL \debug[2]~0_combout\ : std_logic;
SIGNAL \debug[2]~reg0_regout\ : std_logic;
SIGNAL \found~0_combout\ : std_logic;
SIGNAL \found~reg0_regout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL curr_max : std_logic_vector(4 DOWNTO 0);
SIGNAL curr_min : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL curr_mid : std_logic_vector(4 DOWNTO 0);
SIGNAL min : std_logic_vector(4 DOWNTO 0);
SIGNAL max : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Restart~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_start <= start;
ww_Restart <= Restart;
ww_clk <= clk;
result <= ww_result;
debug <= ww_debug;
found <= ww_found;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (curr_mid(4) & \curr_mid[3]~_wirecell_combout\ & \curr_mid[2]~_wirecell_combout\ & \curr_mid[1]~_wirecell_combout\ & \curr_mid[0]~_wirecell_combout\);

\mem|altsyncram_component|auto_generated|q_a\(0) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(1) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(2) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(3) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(4) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(5) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(6) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(7) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\Restart~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Restart~combout\);
\ALT_INV_Restart~clkctrl_outclk\ <= NOT \Restart~clkctrl_outclk\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;

-- Location: LCFF_X43_Y23_N21
\min[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \min[2]~9_combout\,
	sdata => curr_min(2),
	sload => \ALT_INV_LessThan0~14_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => min(2));

-- Location: LCCOMB_X43_Y23_N20
\min[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \min[2]~9_combout\ = (curr_mid(2) & (!\min[1]~8\ & VCC)) # (!curr_mid(2) & (\min[1]~8\ $ (GND)))
-- \min[2]~10\ = CARRY((!curr_mid(2) & !\min[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => curr_mid(2),
	datad => VCC,
	cin => \min[1]~8\,
	combout => \min[2]~9_combout\,
	cout => \min[2]~10\);

-- Location: LCFF_X43_Y23_N1
\max[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \max~0_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => max(1));

-- Location: LCFF_X43_Y23_N15
\max[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \max~2_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => max(0));

-- Location: LCCOMB_X42_Y23_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\A~combout\(4) & (\mem|altsyncram_component|auto_generated|q_a\(4) & (\A~combout\(5) $ (!\mem|altsyncram_component|auto_generated|q_a\(5))))) # (!\A~combout\(4) & (!\mem|altsyncram_component|auto_generated|q_a\(4) & (\A~combout\(5) $ 
-- (!\mem|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(5),
	datac => \mem|altsyncram_component|auto_generated|q_a\(4),
	datad => \mem|altsyncram_component|auto_generated|q_a\(5),
	combout => \Equal0~2_combout\);

-- Location: LCFF_X43_Y23_N13
\max[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \max~4_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => max(3));

-- Location: LCFF_X43_Y23_N3
\max[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \max~5_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => max(4));

-- Location: LCFF_X43_Y23_N5
\curr_max[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_max[1]~0_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_max(1));

-- Location: LCCOMB_X43_Y23_N0
\max~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \max~0_combout\ = (\LessThan0~14_combout\ & ((!curr_max(1)))) # (!\LessThan0~14_combout\ & (!curr_mid(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => curr_mid(1),
	datac => curr_max(1),
	datad => \LessThan0~14_combout\,
	combout => \max~0_combout\);

-- Location: LCFF_X43_Y23_N11
\curr_max[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_max[0]~1_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_max(0));

-- Location: LCCOMB_X43_Y23_N14
\max~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \max~2_combout\ = (\LessThan0~14_combout\ & ((!curr_max(0)))) # (!\LessThan0~14_combout\ & (!curr_mid(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => curr_mid(0),
	datac => curr_max(0),
	datad => \LessThan0~14_combout\,
	combout => \max~2_combout\);

-- Location: LCFF_X44_Y23_N9
\curr_min[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => min(2),
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	sload => VCC,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_min(2));

-- Location: LCFF_X43_Y23_N27
\curr_max[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_max[3]~3_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_max(3));

-- Location: LCCOMB_X43_Y23_N12
\max~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \max~4_combout\ = (\LessThan0~14_combout\ & (!curr_max(3))) # (!\LessThan0~14_combout\ & ((!curr_mid(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => curr_max(3),
	datac => curr_mid(3),
	datad => \LessThan0~14_combout\,
	combout => \max~4_combout\);

-- Location: LCFF_X44_Y23_N3
\curr_max[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_max[4]~4_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_max(4));

-- Location: LCCOMB_X43_Y23_N2
\max~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \max~5_combout\ = (\LessThan0~14_combout\ & (!curr_max(4))) # (!\LessThan0~14_combout\ & ((curr_mid(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => curr_max(4),
	datab => curr_mid(4),
	datad => \LessThan0~14_combout\,
	combout => \max~5_combout\);

-- Location: LCCOMB_X43_Y23_N4
\curr_max[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_max[1]~0_combout\ = !max(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => max(1),
	combout => \curr_max[1]~0_combout\);

-- Location: LCCOMB_X43_Y23_N10
\curr_max[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_max[0]~1_combout\ = !max(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => max(0),
	combout => \curr_max[0]~1_combout\);

-- Location: LCCOMB_X43_Y23_N26
\curr_max[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_max[3]~3_combout\ = !max(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => max(3),
	combout => \curr_max[3]~3_combout\);

-- Location: LCCOMB_X44_Y23_N2
\curr_max[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_max[4]~4_combout\ = !max(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => max(4),
	combout => \curr_max[4]~4_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y23_N16
\min[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \min[0]~5_combout\ = curr_mid(0) $ (GND)
-- \min[0]~6\ = CARRY(!curr_mid(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => curr_mid(0),
	datad => VCC,
	combout => \min[0]~5_combout\,
	cout => \min[0]~6\);

-- Location: LCCOMB_X43_Y23_N18
\min[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \min[1]~7_combout\ = (curr_mid(1) & ((\min[0]~6\) # (GND))) # (!curr_mid(1) & (!\min[0]~6\))
-- \min[1]~8\ = CARRY((curr_mid(1)) # (!\min[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => curr_mid(1),
	datad => VCC,
	cin => \min[0]~6\,
	combout => \min[1]~7_combout\,
	cout => \min[1]~8\);

-- Location: LCCOMB_X43_Y23_N22
\min[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \min[3]~11_combout\ = (curr_mid(3) & ((\min[2]~10\) # (GND))) # (!curr_mid(3) & (!\min[2]~10\))
-- \min[3]~12\ = CARRY((curr_mid(3)) # (!\min[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => curr_mid(3),
	datad => VCC,
	cin => \min[2]~10\,
	combout => \min[3]~11_combout\,
	cout => \min[3]~12\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Restart~I\ : cycloneii_io
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
	padio => ww_Restart,
	combout => \Restart~combout\);

-- Location: CLKCTRL_G1
\Restart~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Restart~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Restart~clkctrl_outclk\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X40_Y23_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X44_Y23_N6
\curr_mid[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[0]~_wirecell_combout\ = !curr_mid(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => curr_mid(0),
	combout => \curr_mid[0]~_wirecell_combout\);

-- Location: LCCOMB_X44_Y23_N0
\curr_mid[1]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[1]~_wirecell_combout\ = !curr_mid(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(1),
	combout => \curr_mid[1]~_wirecell_combout\);

-- Location: LCCOMB_X45_Y23_N20
\curr_mid[2]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[2]~_wirecell_combout\ = !curr_mid(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(2),
	combout => \curr_mid[2]~_wirecell_combout\);

-- Location: LCFF_X44_Y23_N11
\curr_min[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => min(0),
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	sload => VCC,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_min(0));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: M4K_X41_Y23
\mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "my_array.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory_block:mem|altsyncram:altsyncram_component|altsyncram_2cc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 5,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X42_Y23_N12
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\mem|altsyncram_component|auto_generated|q_a\(0) & \A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(0),
	datab => \A~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X42_Y23_N14
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A~combout\(1) & (\mem|altsyncram_component|auto_generated|q_a\(1) & !\LessThan0~1_cout\)) # (!\A~combout\(1) & ((\mem|altsyncram_component|auto_generated|q_a\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \mem|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X42_Y23_N16
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A~combout\(2) & ((!\LessThan0~3_cout\) # (!\mem|altsyncram_component|auto_generated|q_a\(2)))) # (!\A~combout\(2) & (!\mem|altsyncram_component|auto_generated|q_a\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \mem|altsyncram_component|auto_generated|q_a\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X42_Y23_N18
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\A~combout\(3) & (\mem|altsyncram_component|auto_generated|q_a\(3) & !\LessThan0~5_cout\)) # (!\A~combout\(3) & ((\mem|altsyncram_component|auto_generated|q_a\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \mem|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X42_Y23_N20
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A~combout\(4) & ((!\LessThan0~7_cout\) # (!\mem|altsyncram_component|auto_generated|q_a\(4)))) # (!\A~combout\(4) & (!\mem|altsyncram_component|auto_generated|q_a\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \mem|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X42_Y23_N22
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A~combout\(5) & (\mem|altsyncram_component|auto_generated|q_a\(5) & !\LessThan0~9_cout\)) # (!\A~combout\(5) & ((\mem|altsyncram_component|auto_generated|q_a\(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \mem|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X42_Y23_N24
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\mem|altsyncram_component|auto_generated|q_a\(6) & (\A~combout\(6) & !\LessThan0~11_cout\)) # (!\mem|altsyncram_component|auto_generated|q_a\(6) & ((\A~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(6),
	datab => \A~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X42_Y23_N26
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\A~combout\(7) & ((\LessThan0~13_cout\) # (!\mem|altsyncram_component|auto_generated|q_a\(7)))) # (!\A~combout\(7) & (\LessThan0~13_cout\ & !\mem|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	datad => \mem|altsyncram_component|auto_generated|q_a\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X43_Y23_N30
\max[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \max[4]~1_combout\ = (\y.T2~regout\ & (\Restart~combout\ & !\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.T2~regout\,
	datac => \Restart~combout\,
	datad => \Equal0~4_combout\,
	combout => \max[4]~1_combout\);

-- Location: LCFF_X43_Y23_N17
\min[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \min[0]~5_combout\,
	sdata => curr_min(0),
	sload => \ALT_INV_LessThan0~14_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => min(0));

-- Location: LCCOMB_X44_Y23_N8
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((max(0) & min(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max(0),
	datab => min(0),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X44_Y23_N10
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (max(1) & ((min(1) & (\Add1~1_cout\ & VCC)) # (!min(1) & (!\Add1~1_cout\)))) # (!max(1) & ((min(1) & (!\Add1~1_cout\)) # (!min(1) & ((\Add1~1_cout\) # (GND)))))
-- \Add1~3\ = CARRY((max(1) & (!min(1) & !\Add1~1_cout\)) # (!max(1) & ((!\Add1~1_cout\) # (!min(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max(1),
	datab => min(1),
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X44_Y23_N12
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((min(2) $ (max(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((min(2) & ((max(2)) # (!\Add1~3\))) # (!min(2) & (max(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => max(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X44_Y23_N14
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (max(3) & ((min(3) & (\Add1~5\ & VCC)) # (!min(3) & (!\Add1~5\)))) # (!max(3) & ((min(3) & (!\Add1~5\)) # (!min(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((max(3) & (!min(3) & !\Add1~5\)) # (!max(3) & ((!\Add1~5\) # (!min(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max(3),
	datab => min(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X44_Y23_N16
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((max(4) $ (min(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((max(4) & ((min(4)) # (!\Add1~7\))) # (!max(4) & (min(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max(4),
	datab => min(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X44_Y23_N18
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCFF_X44_Y23_N19
\curr_mid[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_mid(4));

-- Location: LCCOMB_X43_Y23_N24
\min[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \min[4]~13_combout\ = \min[3]~12\ $ (!curr_mid(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(4),
	cin => \min[3]~12\,
	combout => \min[4]~13_combout\);

-- Location: LCFF_X44_Y23_N21
\curr_min[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => min(4),
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	sload => VCC,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_min(4));

-- Location: LCFF_X43_Y23_N25
\min[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \min[4]~13_combout\,
	sdata => curr_min(4),
	sload => \ALT_INV_LessThan0~14_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => min(4));

-- Location: LCCOMB_X44_Y23_N26
\curr_mid[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[3]~3_combout\ = !\Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	combout => \curr_mid[3]~3_combout\);

-- Location: LCFF_X44_Y23_N27
\curr_mid[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_mid[3]~3_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_mid(3));

-- Location: LCCOMB_X42_Y23_N2
\curr_mid[3]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[3]~_wirecell_combout\ = !curr_mid(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(3),
	combout => \curr_mid[3]~_wirecell_combout\);

-- Location: LCCOMB_X42_Y23_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\A~combout\(3) & (\mem|altsyncram_component|auto_generated|q_a\(3) & (\A~combout\(2) $ (!\mem|altsyncram_component|auto_generated|q_a\(2))))) # (!\A~combout\(3) & (!\mem|altsyncram_component|auto_generated|q_a\(3) & (\A~combout\(2) $ 
-- (!\mem|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(2),
	datac => \mem|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem|altsyncram_component|auto_generated|q_a\(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X42_Y23_N6
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\A~combout\(1) & (\mem|altsyncram_component|auto_generated|q_a\(1) & (\A~combout\(0) $ (!\mem|altsyncram_component|auto_generated|q_a\(0))))) # (!\A~combout\(1) & (!\mem|altsyncram_component|auto_generated|q_a\(1) & (\A~combout\(0) $ 
-- (!\mem|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(0),
	datac => \mem|altsyncram_component|auto_generated|q_a\(0),
	datad => \mem|altsyncram_component|auto_generated|q_a\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X42_Y23_N28
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\A~combout\(6) & (\mem|altsyncram_component|auto_generated|q_a\(6) & (\mem|altsyncram_component|auto_generated|q_a\(7) $ (!\A~combout\(7))))) # (!\A~combout\(6) & (!\mem|altsyncram_component|auto_generated|q_a\(6) & 
-- (\mem|altsyncram_component|auto_generated|q_a\(7) $ (!\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \mem|altsyncram_component|auto_generated|q_a\(7),
	datac => \A~combout\(7),
	datad => \mem|altsyncram_component|auto_generated|q_a\(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X43_Y23_N28
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X42_Y23_N10
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\y.T1~regout\ & (((\y.T2~regout\ & !\Equal0~4_combout\)))) # (!\y.T1~regout\ & ((\start~combout\) # ((\y.T2~regout\ & !\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.T1~regout\,
	datab => \start~combout\,
	datac => \y.T2~regout\,
	datad => \Equal0~4_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X42_Y23_N11
\y.T2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.T2~regout\);

-- Location: LCFF_X44_Y23_N1
\curr_min[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => min(3),
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	sload => VCC,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_min(3));

-- Location: LCFF_X43_Y23_N23
\min[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \min[3]~11_combout\,
	sdata => curr_min(3),
	sload => \ALT_INV_LessThan0~14_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => min(3));

-- Location: LCCOMB_X44_Y23_N24
\curr_mid[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[2]~2_combout\ = !\Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	combout => \curr_mid[2]~2_combout\);

-- Location: LCFF_X44_Y23_N25
\curr_mid[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_mid[2]~2_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_mid(2));

-- Location: LCCOMB_X43_Y23_N8
\curr_max[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_max[2]~2_combout\ = !max(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => max(2),
	combout => \curr_max[2]~2_combout\);

-- Location: LCFF_X43_Y23_N9
\curr_max[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_max[2]~2_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_max(2));

-- Location: LCCOMB_X43_Y23_N6
\max~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \max~3_combout\ = (\LessThan0~14_combout\ & ((!curr_max(2)))) # (!\LessThan0~14_combout\ & (!curr_mid(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => curr_mid(2),
	datac => curr_max(2),
	datad => \LessThan0~14_combout\,
	combout => \max~3_combout\);

-- Location: LCFF_X43_Y23_N7
\max[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \max~3_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => max(2));

-- Location: LCCOMB_X44_Y23_N30
\curr_mid[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[1]~1_combout\ = !\Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~4_combout\,
	combout => \curr_mid[1]~1_combout\);

-- Location: LCFF_X44_Y23_N31
\curr_mid[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_mid[1]~1_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_mid(1));

-- Location: LCFF_X44_Y23_N13
\curr_min[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => min(1),
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	sload => VCC,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_min(1));

-- Location: LCFF_X43_Y23_N19
\min[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \min[1]~7_combout\,
	sdata => curr_min(1),
	sload => \ALT_INV_LessThan0~14_combout\,
	ena => \max[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => min(1));

-- Location: LCCOMB_X44_Y23_N4
\curr_mid[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \curr_mid[0]~0_combout\ = !\Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~2_combout\,
	combout => \curr_mid[0]~0_combout\);

-- Location: LCFF_X44_Y23_N5
\curr_mid[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \curr_mid[0]~0_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	ena => \y.T2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => curr_mid(0));

-- Location: LCCOMB_X44_Y23_N20
\result[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~1_combout\ = !curr_mid(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => curr_mid(0),
	combout => \result[0]~1_combout\);

-- Location: LCCOMB_X42_Y23_N8
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\y.T2~regout\ & ((\Equal0~4_combout\) # ((\start~combout\ & \y.T3~regout\)))) # (!\y.T2~regout\ & (\start~combout\ & (\y.T3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.T2~regout\,
	datab => \start~combout\,
	datac => \y.T3~regout\,
	datad => \Equal0~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X42_Y23_N9
\y.T3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.T3~regout\);

-- Location: LCCOMB_X45_Y23_N4
\result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~0_combout\ = (\Restart~combout\ & \y.T3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Restart~combout\,
	datad => \y.T3~regout\,
	combout => \result[0]~0_combout\);

-- Location: LCFF_X45_Y23_N17
\result[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \result[0]~1_combout\,
	sload => VCC,
	ena => \result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[0]~reg0_regout\);

-- Location: LCCOMB_X44_Y23_N28
\result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[1]~2_combout\ = !curr_mid(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(1),
	combout => \result[1]~2_combout\);

-- Location: LCFF_X44_Y23_N29
\result[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[1]~2_combout\,
	ena => \result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[1]~reg0_regout\);

-- Location: LCCOMB_X45_Y23_N10
\result[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[2]~3_combout\ = !curr_mid(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(2),
	combout => \result[2]~3_combout\);

-- Location: LCFF_X45_Y23_N11
\result[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[2]~3_combout\,
	ena => \result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[2]~reg0_regout\);

-- Location: LCCOMB_X44_Y23_N22
\result[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[3]~4_combout\ = !curr_mid(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => curr_mid(3),
	combout => \result[3]~4_combout\);

-- Location: LCFF_X44_Y23_N23
\result[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[3]~4_combout\,
	ena => \result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[3]~reg0_regout\);

-- Location: LCFF_X45_Y23_N5
\result[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => curr_mid(4),
	sload => VCC,
	ena => \result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[4]~reg0_regout\);

-- Location: LCCOMB_X45_Y23_N6
\debug[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \debug[0]~reg0feeder_combout\ = \y.T3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y.T3~regout\,
	combout => \debug[0]~reg0feeder_combout\);

-- Location: LCFF_X45_Y23_N7
\debug[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debug[0]~reg0feeder_combout\,
	ena => \Restart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debug[0]~reg0_regout\);

-- Location: LCFF_X45_Y23_N9
\debug[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \y.T2~regout\,
	sload => VCC,
	ena => \Restart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debug[1]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N0
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\y.T2~regout\) # (\start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.T2~regout\,
	datad => \start~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X42_Y23_N1
\y.T1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.T1~regout\);

-- Location: LCCOMB_X45_Y23_N2
\debug[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debug[2]~0_combout\ = !\y.T1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y.T1~regout\,
	combout => \debug[2]~0_combout\);

-- Location: LCFF_X45_Y23_N3
\debug[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debug[2]~0_combout\,
	ena => \Restart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debug[2]~reg0_regout\);

-- Location: LCCOMB_X46_Y23_N4
\found~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \found~0_combout\ = (\found~reg0_regout\) # (\y.T3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \found~reg0_regout\,
	datad => \y.T3~regout\,
	combout => \found~0_combout\);

-- Location: LCFF_X46_Y23_N5
\found~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \found~0_combout\,
	aclr => \ALT_INV_Restart~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \found~reg0_regout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cycloneii_io
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
	datain => \result[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cycloneii_io
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
	datain => \result[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cycloneii_io
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
	datain => \result[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cycloneii_io
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
	datain => \result[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cycloneii_io
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
	datain => \result[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[0]~I\ : cycloneii_io
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
	datain => \debug[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(0));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[1]~I\ : cycloneii_io
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
	datain => \debug[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[2]~I\ : cycloneii_io
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
	datain => \debug[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(2));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[3]~I\ : cycloneii_io
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
	datain => \mem|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[4]~I\ : cycloneii_io
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
	datain => \mem|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(4));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[5]~I\ : cycloneii_io
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
	datain => \mem|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(5));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[6]~I\ : cycloneii_io
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
	datain => \mem|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(6));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\found~I\ : cycloneii_io
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
	datain => \found~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_found);
END structure;


