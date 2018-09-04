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

-- DATE "09/04/2018 01:05:07"

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

ENTITY 	HEXrun IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END HEXrun;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF HEXrun IS
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
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \second[2]~2_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \COUNT~14_combout\ : std_logic;
SIGNAL \COUNT~18_combout\ : std_logic;
SIGNAL \COUNT~20_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal14~8_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \COUNT~9_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \COUNT[0]~8_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~4_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \COUNT~10_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \COUNT~11_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \COUNT~12_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \COUNT~13_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \COUNT~15_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \COUNT~17_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \COUNT~19_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \COUNT~16_combout\ : std_logic;
SIGNAL \Equal14~6_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \COUNT[18]~feeder_combout\ : std_logic;
SIGNAL \Equal14~5_combout\ : std_logic;
SIGNAL \Equal14~7_combout\ : std_logic;
SIGNAL \second[4]~1_combout\ : std_logic;
SIGNAL \second[3]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \second[0]~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \char1~0_combout\ : std_logic;
SIGNAL \char1[1]~1_combout\ : std_logic;
SIGNAL \char2~0_combout\ : std_logic;
SIGNAL \char1~2_combout\ : std_logic;
SIGNAL \char1[3]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \stage|Mux6~0_combout\ : std_logic;
SIGNAL \char1[6]~feeder_combout\ : std_logic;
SIGNAL \stage|Mux6~1_combout\ : std_logic;
SIGNAL \stage|Mux5~0_combout\ : std_logic;
SIGNAL \char1[4]~3_combout\ : std_logic;
SIGNAL \stage|Mux5~1_combout\ : std_logic;
SIGNAL \stage|Mux5~2_combout\ : std_logic;
SIGNAL \stage|Mux5~3_combout\ : std_logic;
SIGNAL \stage|Mux4~0_combout\ : std_logic;
SIGNAL \stage|Mux4~1_combout\ : std_logic;
SIGNAL \stage|Mux3~0_combout\ : std_logic;
SIGNAL \stage|Mux3~1_combout\ : std_logic;
SIGNAL \stage|Mux2~1_combout\ : std_logic;
SIGNAL \stage|Mux2~2_combout\ : std_logic;
SIGNAL \stage|Mux2~0_combout\ : std_logic;
SIGNAL \stage|Mux2~3_combout\ : std_logic;
SIGNAL \stage|Mux1~0_combout\ : std_logic;
SIGNAL \stage|Mux1~1_combout\ : std_logic;
SIGNAL \stage|Mux0~0_combout\ : std_logic;
SIGNAL \stage|Mux0~1_combout\ : std_logic;
SIGNAL \char3~0_combout\ : std_logic;
SIGNAL \stage1|Mux6~0_combout\ : std_logic;
SIGNAL \stage1|Mux5~0_combout\ : std_logic;
SIGNAL \stage1|Mux4~0_combout\ : std_logic;
SIGNAL \stage1|Mux3~0_combout\ : std_logic;
SIGNAL \stage1|Mux2~0_combout\ : std_logic;
SIGNAL \stage1|Mux0~0_combout\ : std_logic;
SIGNAL \stage2|Mux6~0_combout\ : std_logic;
SIGNAL \stage2|Mux5~0_combout\ : std_logic;
SIGNAL \stage2|Mux4~0_combout\ : std_logic;
SIGNAL \stage2|Mux3~0_combout\ : std_logic;
SIGNAL \stage2|Mux2~0_combout\ : std_logic;
SIGNAL \stage2|Mux1~0_combout\ : std_logic;
SIGNAL \stage2|Mux0~0_combout\ : std_logic;
SIGNAL \stage3|Mux5~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \blink[0]~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \blink~1_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \blink~3_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \blink~4_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \blink~6_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \blink~7_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \blink~8_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \blink~9_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Equal15~6_combout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \Equal15~7_combout\ : std_logic;
SIGNAL \blink[5]~0_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \blink~5_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \i[4]~1_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \LEDR[0]~reg0_regout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_regout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \LEDR[2]~reg0_regout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \LEDR[3]~reg0_regout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \LEDR[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[4]~reg0_regout\ : std_logic;
SIGNAL \LEDR[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[5]~reg0_regout\ : std_logic;
SIGNAL \LEDR[6]~reg0_regout\ : std_logic;
SIGNAL \LEDR[7]~reg0_regout\ : std_logic;
SIGNAL \LEDR[8]~reg0_regout\ : std_logic;
SIGNAL \LEDR[9]~reg0_regout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_regout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \LEDG[3]~reg0_regout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \LEDG[4]~reg0_regout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \LEDG[5]~reg0_regout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \LEDG[6]~reg0_regout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \LEDG[7]~reg0_regout\ : std_logic;
SIGNAL second : std_logic_vector(4 DOWNTO 0);
SIGNAL COUNT : std_logic_vector(25 DOWNTO 0);
SIGNAL char2 : std_logic_vector(7 DOWNTO 0);
SIGNAL blink : std_logic_vector(25 DOWNTO 0);
SIGNAL i : std_logic_vector(4 DOWNTO 0);
SIGNAL char3 : std_logic_vector(7 DOWNTO 0);
SIGNAL char1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Equal14~8_combout\ : std_logic;
SIGNAL \stage3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_Equal14~8_combout\ <= NOT \Equal14~8_combout\;
\stage3|ALT_INV_Mux5~0_combout\ <= NOT \stage3|Mux5~0_combout\;
\stage2|ALT_INV_Mux0~0_combout\ <= NOT \stage2|Mux0~0_combout\;
\stage2|ALT_INV_Mux1~0_combout\ <= NOT \stage2|Mux1~0_combout\;
\stage2|ALT_INV_Mux2~0_combout\ <= NOT \stage2|Mux2~0_combout\;
\stage2|ALT_INV_Mux3~0_combout\ <= NOT \stage2|Mux3~0_combout\;
\stage2|ALT_INV_Mux4~0_combout\ <= NOT \stage2|Mux4~0_combout\;
\stage2|ALT_INV_Mux5~0_combout\ <= NOT \stage2|Mux5~0_combout\;
\stage2|ALT_INV_Mux6~0_combout\ <= NOT \stage2|Mux6~0_combout\;
\stage1|ALT_INV_Mux0~0_combout\ <= NOT \stage1|Mux0~0_combout\;
\stage1|ALT_INV_Mux2~0_combout\ <= NOT \stage1|Mux2~0_combout\;
\stage1|ALT_INV_Mux3~0_combout\ <= NOT \stage1|Mux3~0_combout\;
\stage1|ALT_INV_Mux4~0_combout\ <= NOT \stage1|Mux4~0_combout\;
\stage1|ALT_INV_Mux5~0_combout\ <= NOT \stage1|Mux5~0_combout\;
\stage1|ALT_INV_Mux6~0_combout\ <= NOT \stage1|Mux6~0_combout\;

-- Location: LCCOMB_X9_Y22_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (second(1) & (second(0) $ (VCC))) # (!second(1) & (second(0) & VCC))
-- \Add1~1\ = CARRY((second(1) & second(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(1),
	datab => second(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X9_Y22_N8
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (second(2) & (!\Add1~1\)) # (!second(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!second(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X9_Y22_N10
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (second(3) & (\Add1~3\ $ (GND))) # (!second(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((second(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X9_Y22_N12
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \Add1~5\ $ (second(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => second(4),
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X14_Y18_N10
\Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (i(3) & (!\Add7~5\)) # (!i(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X14_Y18_N12
\Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = \Add7~7\ $ (!i(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => i(4),
	cin => \Add7~7\,
	combout => \Add7~8_combout\);

-- Location: LCCOMB_X11_Y23_N10
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (COUNT(2) & (!\Add4~1\)) # (!COUNT(2) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!COUNT(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(2),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X11_Y23_N16
\Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (COUNT(5) & (\Add4~7\ $ (GND))) # (!COUNT(5) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((COUNT(5) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X11_Y23_N24
\Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (COUNT(9) & (\Add4~15\ $ (GND))) # (!COUNT(9) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((COUNT(9) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(9),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X11_Y22_N8
\Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (COUNT(17) & (\Add4~31\ $ (GND))) # (!COUNT(17) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((COUNT(17) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(17),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X11_Y22_N18
\Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (COUNT(22) & (!\Add4~41\)) # (!COUNT(22) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!COUNT(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(22),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X11_Y22_N22
\Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (COUNT(24) & (!\Add4~45\)) # (!COUNT(24) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!COUNT(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(24),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X11_Y22_N24
\Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = \Add4~47\ $ (!COUNT(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => COUNT(25),
	cin => \Add4~47\,
	combout => \Add4~48_combout\);

-- Location: LCCOMB_X14_Y23_N10
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (blink(2) & (!\Add3~1\)) # (!blink(2) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!blink(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(2),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X14_Y23_N12
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (blink(3) & (\Add3~3\ $ (GND))) # (!blink(3) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((blink(3) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X14_Y23_N16
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (blink(5) & (\Add3~7\ $ (GND))) # (!blink(5) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((blink(5) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(5),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X14_Y22_N6
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (blink(16) & (!\Add3~29\)) # (!blink(16) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!blink(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(16),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X14_Y22_N16
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (blink(21) & (\Add3~39\ $ (GND))) # (!blink(21) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((blink(21) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(21),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X14_Y22_N22
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (blink(24) & (!\Add3~45\)) # (!blink(24) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!blink(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(24),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X14_Y22_N24
\Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = blink(25) $ (!\Add3~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(25),
	cin => \Add3~47\,
	combout => \Add3~48_combout\);

-- Location: LCFF_X9_Y22_N5
\second[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \second[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(2));

-- Location: LCFF_X14_Y18_N13
\i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add7~8_combout\,
	ena => \i[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(4));

-- Location: LCFF_X11_Y23_N11
\COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~2_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(2));

-- Location: LCFF_X11_Y23_N17
\COUNT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~8_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(5));

-- Location: LCFF_X11_Y23_N25
\COUNT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(9));

-- Location: LCCOMB_X12_Y22_N4
\Equal14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~3_combout\ = (COUNT(12) & (COUNT(14) & (COUNT(13) & COUNT(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(12),
	datab => COUNT(14),
	datac => COUNT(13),
	datad => COUNT(15),
	combout => \Equal14~3_combout\);

-- Location: LCFF_X12_Y22_N17
\COUNT[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(17));

-- Location: LCFF_X12_Y22_N7
\COUNT[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(22));

-- Location: LCFF_X11_Y22_N27
\COUNT[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(25));

-- Location: LCCOMB_X9_Y22_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (second(1)) # ((second(3)) # ((second(0)) # (second(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(1),
	datab => second(3),
	datac => second(0),
	datad => second(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y22_N4
\second[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[2]~2_combout\ = (\Equal14~8_combout\ & (((second(2) & \Equal0~1_combout\)))) # (!\Equal14~8_combout\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~8_combout\,
	datab => \Add1~2_combout\,
	datac => second(2),
	datad => \Equal0~1_combout\,
	combout => \second[2]~2_combout\);

-- Location: LCFF_X14_Y23_N17
\blink[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~8_combout\,
	ena => \blink[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(5));

-- Location: LCFF_X14_Y23_N13
\blink[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~4_combout\,
	ena => \blink[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(3));

-- Location: LCFF_X14_Y23_N11
\blink[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~2_combout\,
	ena => \blink[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(2));

-- Location: LCCOMB_X14_Y23_N4
\Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (!blink(2) & (!blink(4) & (!blink(5) & !blink(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(2),
	datab => blink(4),
	datac => blink(5),
	datad => blink(3),
	combout => \Equal15~0_combout\);

-- Location: LCFF_X14_Y22_N7
\blink[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~30_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(16));

-- Location: LCFF_X14_Y22_N17
\blink[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~40_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(21));

-- Location: LCFF_X14_Y22_N25
\blink[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~48_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(25));

-- Location: LCCOMB_X12_Y22_N16
\COUNT~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~14_combout\ = (\Add4~32_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => \Equal14~4_combout\,
	datad => \Add4~32_combout\,
	combout => \COUNT~14_combout\);

-- Location: LCCOMB_X12_Y22_N6
\COUNT~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~18_combout\ = (\Add4~42_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => \Equal14~4_combout\,
	datad => \Add4~42_combout\,
	combout => \COUNT~18_combout\);

-- Location: LCCOMB_X11_Y22_N26
\COUNT~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~20_combout\ = (\Add4~48_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~7_combout\,
	datab => \Equal14~4_combout\,
	datac => \Add4~48_combout\,
	combout => \COUNT~20_combout\);

-- Location: LCCOMB_X11_Y23_N8
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (COUNT(0) & (COUNT(1) $ (VCC))) # (!COUNT(0) & (COUNT(1) & VCC))
-- \Add4~1\ = CARRY((COUNT(0) & COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(0),
	datab => COUNT(1),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X12_Y22_N0
\Equal14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~8_combout\ = (!\Equal14~4_combout\) # (!\Equal14~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datad => \Equal14~4_combout\,
	combout => \Equal14~8_combout\);

-- Location: LCFF_X11_Y23_N9
\COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~0_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(1));

-- Location: LCCOMB_X11_Y23_N12
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (COUNT(3) & (\Add4~3\ $ (GND))) # (!COUNT(3) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((COUNT(3) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X11_Y23_N14
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (COUNT(4) & (!\Add4~5\)) # (!COUNT(4) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!COUNT(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCFF_X11_Y23_N15
\COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~6_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(4));

-- Location: LCCOMB_X11_Y23_N18
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (COUNT(6) & (!\Add4~9\)) # (!COUNT(6) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!COUNT(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCFF_X11_Y23_N19
\COUNT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~10_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(6));

-- Location: LCCOMB_X11_Y23_N20
\Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (COUNT(7) & (\Add4~11\ $ (GND))) # (!COUNT(7) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((COUNT(7) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(7),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X11_Y23_N2
\COUNT~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~9_combout\ = (\Add4~12_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => \Add4~12_combout\,
	datad => \Equal14~4_combout\,
	combout => \COUNT~9_combout\);

-- Location: LCFF_X11_Y23_N3
\COUNT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(7));

-- Location: LCCOMB_X11_Y23_N4
\Equal14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (!COUNT(5) & (!COUNT(6) & (!COUNT(4) & COUNT(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(5),
	datab => COUNT(6),
	datac => COUNT(4),
	datad => COUNT(7),
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X11_Y23_N22
\Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (COUNT(8) & (!\Add4~13\)) # (!COUNT(8) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!COUNT(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCFF_X11_Y23_N23
\COUNT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(8));

-- Location: LCCOMB_X11_Y23_N26
\Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (COUNT(10) & (!\Add4~17\)) # (!COUNT(10) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!COUNT(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(10),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCFF_X11_Y23_N27
\COUNT[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(10));

-- Location: LCCOMB_X11_Y23_N28
\Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (COUNT(11) & (\Add4~19\ $ (GND))) # (!COUNT(11) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((COUNT(11) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(11),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCFF_X11_Y23_N29
\COUNT[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(11));

-- Location: LCCOMB_X11_Y23_N6
\Equal14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (!COUNT(9) & (!COUNT(10) & (!COUNT(8) & !COUNT(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(9),
	datab => COUNT(10),
	datac => COUNT(8),
	datad => COUNT(11),
	combout => \Equal14~2_combout\);

-- Location: LCCOMB_X12_Y22_N22
\COUNT[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[0]~8_combout\ = (!COUNT(0) & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => COUNT(0),
	datad => \Equal14~4_combout\,
	combout => \COUNT[0]~8_combout\);

-- Location: LCFF_X11_Y23_N1
\COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \COUNT[0]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(0));

-- Location: LCFF_X11_Y23_N13
\COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~4_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(3));

-- Location: LCCOMB_X11_Y23_N0
\Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!COUNT(2) & (!COUNT(1) & (!COUNT(0) & !COUNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(2),
	datab => COUNT(1),
	datac => COUNT(0),
	datad => COUNT(3),
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X12_Y22_N26
\Equal14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~4_combout\ = (\Equal14~3_combout\ & (\Equal14~1_combout\ & (\Equal14~2_combout\ & \Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~3_combout\,
	datab => \Equal14~1_combout\,
	datac => \Equal14~2_combout\,
	datad => \Equal14~0_combout\,
	combout => \Equal14~4_combout\);

-- Location: LCCOMB_X11_Y23_N30
\Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (COUNT(12) & (!\Add4~21\)) # (!COUNT(12) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!COUNT(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(12),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X12_Y22_N20
\COUNT~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~10_combout\ = (\Add4~22_combout\ & ((!\Equal14~7_combout\) # (!\Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~4_combout\,
	datac => \Add4~22_combout\,
	datad => \Equal14~7_combout\,
	combout => \COUNT~10_combout\);

-- Location: LCFF_X12_Y22_N21
\COUNT[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(12));

-- Location: LCCOMB_X11_Y22_N0
\Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (COUNT(13) & (\Add4~23\ $ (GND))) # (!COUNT(13) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((COUNT(13) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(13),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X12_Y22_N14
\COUNT~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~11_combout\ = (\Add4~24_combout\ & ((!\Equal14~7_combout\) # (!\Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~4_combout\,
	datac => \Add4~24_combout\,
	datad => \Equal14~7_combout\,
	combout => \COUNT~11_combout\);

-- Location: LCFF_X12_Y22_N15
\COUNT[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(13));

-- Location: LCCOMB_X11_Y22_N2
\Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (COUNT(14) & (!\Add4~25\)) # (!COUNT(14) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!COUNT(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(14),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X12_Y22_N28
\COUNT~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~12_combout\ = (\Add4~26_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => \Equal14~4_combout\,
	datad => \Add4~26_combout\,
	combout => \COUNT~12_combout\);

-- Location: LCFF_X12_Y22_N29
\COUNT[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(14));

-- Location: LCCOMB_X11_Y22_N4
\Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (COUNT(15) & (\Add4~27\ $ (GND))) # (!COUNT(15) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((COUNT(15) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(15),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X12_Y22_N10
\COUNT~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~13_combout\ = (\Add4~28_combout\ & ((!\Equal14~7_combout\) # (!\Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~4_combout\,
	datac => \Add4~28_combout\,
	datad => \Equal14~7_combout\,
	combout => \COUNT~13_combout\);

-- Location: LCFF_X12_Y22_N11
\COUNT[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(15));

-- Location: LCCOMB_X11_Y22_N6
\Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (COUNT(16) & (!\Add4~29\)) # (!COUNT(16) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!COUNT(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(16),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X11_Y22_N10
\Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (COUNT(18) & (!\Add4~33\)) # (!COUNT(18) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!COUNT(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(18),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X11_Y22_N12
\Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (COUNT(19) & (\Add4~35\ $ (GND))) # (!COUNT(19) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((COUNT(19) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(19),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X11_Y22_N30
\COUNT~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~15_combout\ = (\Add4~36_combout\ & ((!\Equal14~7_combout\) # (!\Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~4_combout\,
	datac => \Equal14~7_combout\,
	datad => \Add4~36_combout\,
	combout => \COUNT~15_combout\);

-- Location: LCFF_X11_Y22_N31
\COUNT[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(19));

-- Location: LCCOMB_X11_Y22_N14
\Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (COUNT(20) & (!\Add4~37\)) # (!COUNT(20) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!COUNT(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(20),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X11_Y22_N16
\Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (COUNT(21) & (\Add4~39\ $ (GND))) # (!COUNT(21) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((COUNT(21) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(21),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X12_Y22_N8
\COUNT~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~17_combout\ = (\Add4~40_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => \Equal14~4_combout\,
	datad => \Add4~40_combout\,
	combout => \COUNT~17_combout\);

-- Location: LCFF_X12_Y22_N9
\COUNT[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(21));

-- Location: LCCOMB_X11_Y22_N20
\Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (COUNT(23) & (\Add4~43\ $ (GND))) # (!COUNT(23) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((COUNT(23) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(23),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X11_Y22_N28
\COUNT~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~19_combout\ = (\Add4~44_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~7_combout\,
	datab => \Equal14~4_combout\,
	datac => \Add4~44_combout\,
	combout => \COUNT~19_combout\);

-- Location: LCFF_X11_Y22_N29
\COUNT[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(23));

-- Location: LCFF_X11_Y22_N23
\COUNT[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(24));

-- Location: LCCOMB_X12_Y22_N2
\COUNT~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT~16_combout\ = (\Add4~38_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~7_combout\,
	datac => \Equal14~4_combout\,
	datad => \Add4~38_combout\,
	combout => \COUNT~16_combout\);

-- Location: LCFF_X12_Y22_N3
\COUNT[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(20));

-- Location: LCCOMB_X12_Y22_N24
\Equal14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~6_combout\ = (COUNT(22) & (COUNT(21) & (COUNT(20) & COUNT(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(22),
	datab => COUNT(21),
	datac => COUNT(20),
	datad => COUNT(23),
	combout => \Equal14~6_combout\);

-- Location: LCFF_X11_Y22_N7
\COUNT[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(16));

-- Location: LCCOMB_X12_Y22_N30
\COUNT[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[18]~feeder_combout\ = \Add4~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add4~34_combout\,
	combout => \COUNT[18]~feeder_combout\);

-- Location: LCFF_X12_Y22_N31
\COUNT[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \COUNT[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(18));

-- Location: LCCOMB_X12_Y22_N12
\Equal14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~5_combout\ = (COUNT(17) & (!COUNT(16) & (COUNT(19) & !COUNT(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(17),
	datab => COUNT(16),
	datac => COUNT(19),
	datad => COUNT(18),
	combout => \Equal14~5_combout\);

-- Location: LCCOMB_X12_Y22_N18
\Equal14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~7_combout\ = (COUNT(25) & (!COUNT(24) & (\Equal14~6_combout\ & \Equal14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(25),
	datab => COUNT(24),
	datac => \Equal14~6_combout\,
	datad => \Equal14~5_combout\,
	combout => \Equal14~7_combout\);

-- Location: LCCOMB_X9_Y22_N26
\second[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[4]~1_combout\ = (\Equal14~7_combout\ & ((\Equal14~4_combout\ & (\Add1~6_combout\)) # (!\Equal14~4_combout\ & ((second(4)))))) # (!\Equal14~7_combout\ & (((second(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Equal14~7_combout\,
	datac => second(4),
	datad => \Equal14~4_combout\,
	combout => \second[4]~1_combout\);

-- Location: LCFF_X9_Y22_N27
\second[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \second[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(4));

-- Location: LCCOMB_X9_Y22_N0
\second[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[3]~0_combout\ = (\Equal14~7_combout\ & ((\Equal14~4_combout\ & (\Add1~4_combout\)) # (!\Equal14~4_combout\ & ((second(3)))))) # (!\Equal14~7_combout\ & (((second(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Equal14~7_combout\,
	datac => second(3),
	datad => \Equal14~4_combout\,
	combout => \second[3]~0_combout\);

-- Location: LCFF_X9_Y22_N1
\second[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \second[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(3));

-- Location: LCCOMB_X9_Y22_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!second(4) & !second(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => second(4),
	datad => second(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y22_N2
\second[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second[0]~3_combout\ = !second(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => second(0),
	combout => \second[0]~3_combout\);

-- Location: LCFF_X9_Y22_N3
\second[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \second[0]~3_combout\,
	ena => \ALT_INV_Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(0));

-- Location: LCFF_X9_Y22_N7
\second[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	ena => \ALT_INV_Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second(1));

-- Location: LCCOMB_X1_Y22_N12
\char1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \char1~0_combout\ = (\Equal0~0_combout\ & ((second(2) & (!second(0) & !second(1))) # (!second(2) & (second(0) & second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(2),
	datab => \Equal0~0_combout\,
	datac => second(0),
	datad => second(1),
	combout => \char1~0_combout\);

-- Location: LCCOMB_X1_Y22_N30
\char1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \char1[1]~1_combout\ = (\Equal0~0_combout\ & (second(2) $ (((second(0)) # (second(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(2),
	datab => \Equal0~0_combout\,
	datac => second(0),
	datad => second(1),
	combout => \char1[1]~1_combout\);

-- Location: LCFF_X1_Y22_N13
\char1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char1~0_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char1(1));

-- Location: LCCOMB_X1_Y22_N26
\char2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \char2~0_combout\ = (\Equal0~0_combout\ & ((second(2) & (!second(0) & !second(1))) # (!second(2) & ((second(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(2),
	datab => \Equal0~0_combout\,
	datac => second(0),
	datad => second(1),
	combout => \char2~0_combout\);

-- Location: LCFF_X1_Y22_N27
\char1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char2~0_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char1(2));

-- Location: LCCOMB_X1_Y22_N24
\char1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \char1~2_combout\ = (!second(2) & second(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(2),
	datad => second(1),
	combout => \char1~2_combout\);

-- Location: LCCOMB_X1_Y22_N28
\char1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \char1[3]~4_combout\ = !\char1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \char1~2_combout\,
	combout => \char1[3]~4_combout\);

-- Location: LCFF_X1_Y22_N29
\char1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char1[3]~4_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char1(3));

-- Location: LCCOMB_X1_Y22_N18
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!second(2) & (\Equal0~0_combout\ & (!second(0) & second(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(2),
	datab => \Equal0~0_combout\,
	datac => second(0),
	datad => second(1),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X1_Y22_N19
\char1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal2~0_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char1(0));

-- Location: LCCOMB_X1_Y20_N8
\stage|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux6~0_combout\ = (char1(0) & ((char1(4) & (!char1(2) & char1(3))) # (!char1(4) & (char1(2) & !char1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(4),
	datab => char1(2),
	datac => char1(3),
	datad => char1(0),
	combout => \stage|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y22_N20
\char1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \char1[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \char1[6]~feeder_combout\);

-- Location: LCFF_X2_Y22_N21
\char1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char1[6]~feeder_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char1(6));

-- Location: LCCOMB_X1_Y20_N22
\stage|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux6~1_combout\ = (char1(1)) # ((!char1(6)) # (!\stage|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char1(1),
	datac => \stage|Mux6~0_combout\,
	datad => char1(6),
	combout => \stage|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y20_N12
\stage|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux5~0_combout\ = (char1(4) & (char1(1) & ((!char1(0))))) # (!char1(4) & ((char1(1) & (char1(3) & char1(0))) # (!char1(1) & (char1(3) $ (char1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(4),
	datab => char1(1),
	datac => char1(3),
	datad => char1(0),
	combout => \stage|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y22_N0
\char1[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \char1[4]~3_combout\ = !\Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~0_combout\,
	combout => \char1[4]~3_combout\);

-- Location: LCFF_X1_Y22_N1
\char1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char1[4]~3_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char1(4));

-- Location: LCCOMB_X1_Y20_N30
\stage|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux5~1_combout\ = (!char1(2) & (!char1(1) & (char1(4) & char1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(1),
	datac => char1(4),
	datad => char1(0),
	combout => \stage|Mux5~1_combout\);

-- Location: LCCOMB_X1_Y20_N4
\stage|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux5~2_combout\ = (\stage|Mux5~1_combout\ & char1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage|Mux5~1_combout\,
	datac => char1(3),
	combout => \stage|Mux5~2_combout\);

-- Location: LCCOMB_X1_Y20_N10
\stage|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux5~3_combout\ = ((!\stage|Mux5~2_combout\ & ((!char1(2)) # (!\stage|Mux5~0_combout\)))) # (!char1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage|Mux5~0_combout\,
	datab => char1(2),
	datac => \stage|Mux5~2_combout\,
	datad => char1(6),
	combout => \stage|Mux5~3_combout\);

-- Location: LCCOMB_X1_Y20_N20
\stage|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux4~0_combout\ = (char1(4) & (char1(1) & (!char1(3) & !char1(0)))) # (!char1(4) & ((char1(1) & (char1(3) & char1(0))) # (!char1(1) & (char1(3) $ (char1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(4),
	datab => char1(1),
	datac => char1(3),
	datad => char1(0),
	combout => \stage|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y20_N6
\stage|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux4~1_combout\ = ((!char1(6)) # (!\stage|Mux4~0_combout\)) # (!char1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char1(2),
	datac => \stage|Mux4~0_combout\,
	datad => char1(6),
	combout => \stage|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y20_N28
\stage|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux3~0_combout\ = (char1(1) & ((char1(3) & ((char1(0)))) # (!char1(3) & (char1(4) & !char1(0))))) # (!char1(1) & (!char1(4) & (char1(3) $ (char1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(4),
	datab => char1(1),
	datac => char1(3),
	datad => char1(0),
	combout => \stage|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y20_N26
\stage|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux3~1_combout\ = ((!\stage|Mux5~2_combout\ & ((!char1(2)) # (!\stage|Mux3~0_combout\)))) # (!char1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(6),
	datab => \stage|Mux3~0_combout\,
	datac => \stage|Mux5~2_combout\,
	datad => char1(2),
	combout => \stage|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y20_N14
\stage|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux2~1_combout\ = (char1(2) & (char1(1) & (!char1(3) & !char1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(1),
	datac => char1(3),
	datad => char1(0),
	combout => \stage|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y20_N0
\stage|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux2~2_combout\ = (char1(4) & \stage|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(4),
	datac => \stage|Mux2~1_combout\,
	combout => \stage|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y20_N24
\stage|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux2~0_combout\ = (char1(0) & ((char1(2) & (char1(1) & !char1(4))) # (!char1(2) & (!char1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(1),
	datac => char1(4),
	datad => char1(0),
	combout => \stage|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y20_N18
\stage|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux2~3_combout\ = ((!\stage|Mux2~2_combout\ & ((!\stage|Mux2~0_combout\) # (!char1(3))))) # (!char1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(3),
	datab => \stage|Mux2~2_combout\,
	datac => \stage|Mux2~0_combout\,
	datad => char1(6),
	combout => \stage|Mux2~3_combout\);

-- Location: LCCOMB_X1_Y20_N16
\stage|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux1~0_combout\ = (char1(2) & (char1(1) & (char1(4) $ (char1(0))))) # (!char1(2) & (!char1(1) & ((char1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(1),
	datac => char1(4),
	datad => char1(0),
	combout => \stage|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\stage|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux1~1_combout\ = ((!\stage|Mux2~2_combout\ & ((!\stage|Mux1~0_combout\) # (!char1(3))))) # (!char1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(3),
	datab => \stage|Mux2~2_combout\,
	datac => \stage|Mux1~0_combout\,
	datad => char1(6),
	combout => \stage|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y22_N14
\stage|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux0~0_combout\ = (char1(1) & (char1(3) & (char1(4) $ (char1(0))))) # (!char1(1) & (!char1(4) & (char1(0) & !char1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(1),
	datab => char1(4),
	datac => char1(0),
	datad => char1(3),
	combout => \stage|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y22_N20
\stage|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage|Mux0~1_combout\ = ((!char1(6)) # (!\stage|Mux0~0_combout\)) # (!char1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char1(2),
	datac => \stage|Mux0~0_combout\,
	datad => char1(6),
	combout => \stage|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y22_N2
\char3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \char3~0_combout\ = (\Equal0~0_combout\ & (!second(0) & (second(2) $ (second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(2),
	datab => \Equal0~0_combout\,
	datac => second(0),
	datad => second(1),
	combout => \char3~0_combout\);

-- Location: LCFF_X1_Y22_N3
\char2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char3~0_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char2(4));

-- Location: LCCOMB_X1_Y22_N4
\stage1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage1|Mux6~0_combout\ = (!char1(2) & (char1(4) & (char2(4) & char1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(4),
	datac => char2(4),
	datad => char1(6),
	combout => \stage1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\stage1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage1|Mux5~0_combout\ = (char1(6) & ((char1(2) & (char1(4) $ (char2(4)))) # (!char1(2) & (char1(4) & char2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(4),
	datac => char2(4),
	datad => char1(6),
	combout => \stage1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y22_N8
\stage1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage1|Mux4~0_combout\ = (char1(2) & (char1(6) & (char1(4) $ (char2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(4),
	datac => char2(4),
	datad => char1(6),
	combout => \stage1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\stage1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage1|Mux3~0_combout\ = (char1(6) & ((char2(4) & ((char1(4)) # (char1(2)))) # (!char2(4) & (char1(4) & char1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char1(2),
	datad => char1(6),
	combout => \stage1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y22_N6
\stage1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage1|Mux2~0_combout\ = (char1(6) & (char1(4) $ (((char1(2) & char2(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(2),
	datab => char1(4),
	datac => char2(4),
	datad => char1(6),
	combout => \stage1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N18
\stage1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage1|Mux0~0_combout\ = (!char2(4) & (char1(4) & (char1(2) & char1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char1(2),
	datad => char1(6),
	combout => \stage1|Mux0~0_combout\);

-- Location: LCFF_X1_Y22_N25
\char3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \char1~2_combout\,
	ena => \char1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char3(0));

-- Location: LCCOMB_X1_Y23_N4
\stage2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux6~0_combout\ = (!char2(4) & (char1(4) & (char3(0) & char1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char3(0),
	datad => char1(6),
	combout => \stage2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\stage2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux5~0_combout\ = (char1(6) & ((char2(4) & (char1(4) $ (char3(0)))) # (!char2(4) & (char1(4) & char3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char3(0),
	datad => char1(6),
	combout => \stage2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\stage2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux4~0_combout\ = (char2(4) & (!char1(4) & (char3(0) & char1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char3(0),
	datad => char1(6),
	combout => \stage2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\stage2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux3~0_combout\ = (char3(0) & (char1(6) & ((char2(4)) # (char1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char3(0),
	datad => char1(6),
	combout => \stage2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\stage2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux2~0_combout\ = (char3(0) & (char1(6) & ((!char1(4)) # (!char2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char3(0),
	datad => char1(6),
	combout => \stage2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\stage2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux1~0_combout\ = (char1(6) & (char3(0) $ (((char2(4) & char1(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char2(4),
	datab => char1(4),
	datac => char3(0),
	datad => char1(6),
	combout => \stage2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y22_N22
\stage2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage2|Mux0~0_combout\ = (char2(4) & (char1(6) & (char3(0) $ (char1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char3(0),
	datab => char1(4),
	datac => char2(4),
	datad => char1(6),
	combout => \stage2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y22_N16
\stage3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stage3|Mux5~0_combout\ = (!char1(1) & (!char1(4) & (char1(0) & char1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char1(1),
	datab => char1(4),
	datac => char1(0),
	datad => char1(6),
	combout => \stage3|Mux5~0_combout\);

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

-- Location: LCCOMB_X14_Y18_N4
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = i(0) $ (VCC)
-- \Add7~1\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X13_Y22_N24
\blink[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink[0]~2_combout\ = blink(0) $ (((\Equal14~8_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal14~8_combout\,
	datac => blink(0),
	datad => \Equal15~4_combout\,
	combout => \blink[0]~2_combout\);

-- Location: LCFF_X13_Y22_N25
\blink[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(0));

-- Location: LCCOMB_X14_Y23_N8
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (blink(1) & (blink(0) $ (VCC))) # (!blink(1) & (blink(0) & VCC))
-- \Add3~1\ = CARRY((blink(1) & blink(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(1),
	datab => blink(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X14_Y23_N14
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (blink(4) & (!\Add3~5\)) # (!blink(4) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!blink(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(4),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCFF_X14_Y23_N15
\blink[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~6_combout\,
	ena => \blink[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(4));

-- Location: LCCOMB_X14_Y23_N18
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (blink(6) & (!\Add3~9\)) # (!blink(6) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!blink(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(6),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X13_Y23_N16
\blink~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~1_combout\ = (\Add3~10_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Equal15~7_combout\,
	datad => \Add3~10_combout\,
	combout => \blink~1_combout\);

-- Location: LCFF_X13_Y23_N17
\blink[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~1_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(6));

-- Location: LCCOMB_X14_Y23_N20
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (blink(7) & (\Add3~11\ $ (GND))) # (!blink(7) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((blink(7) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(7),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X14_Y23_N22
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (blink(8) & (!\Add3~13\)) # (!blink(8) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!blink(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(8),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X13_Y22_N20
\blink~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~3_combout\ = (\Add3~14_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~4_combout\,
	datad => \Add3~14_combout\,
	combout => \blink~3_combout\);

-- Location: LCFF_X13_Y22_N21
\blink[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~3_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(8));

-- Location: LCCOMB_X14_Y23_N24
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (blink(9) & (\Add3~15\ $ (GND))) # (!blink(9) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((blink(9) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(9),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X13_Y22_N30
\blink~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~4_combout\ = (\Add3~16_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~4_combout\,
	datad => \Add3~16_combout\,
	combout => \blink~4_combout\);

-- Location: LCFF_X13_Y22_N31
\blink[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~4_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(9));

-- Location: LCCOMB_X14_Y23_N26
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (blink(10) & (!\Add3~17\)) # (!blink(10) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!blink(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(10),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCFF_X14_Y23_N27
\blink[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~18_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(10));

-- Location: LCCOMB_X14_Y23_N28
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (blink(11) & (\Add3~19\ $ (GND))) # (!blink(11) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((blink(11) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(11),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X14_Y23_N30
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (blink(12) & (!\Add3~21\)) # (!blink(12) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!blink(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(12),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCFF_X14_Y23_N31
\blink[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~22_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(12));

-- Location: LCCOMB_X14_Y22_N0
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (blink(13) & (\Add3~23\ $ (GND))) # (!blink(13) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((blink(13) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(13),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCFF_X14_Y22_N1
\blink[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~24_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(13));

-- Location: LCCOMB_X14_Y22_N2
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (blink(14) & (!\Add3~25\)) # (!blink(14) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!blink(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(14),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X13_Y22_N28
\blink~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~6_combout\ = (\Add3~26_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~4_combout\,
	datac => \Add3~26_combout\,
	combout => \blink~6_combout\);

-- Location: LCFF_X13_Y22_N29
\blink[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~6_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(14));

-- Location: LCCOMB_X14_Y22_N4
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (blink(15) & (\Add3~27\ $ (GND))) # (!blink(15) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((blink(15) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(15),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCFF_X14_Y22_N5
\blink[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~28_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(15));

-- Location: LCCOMB_X14_Y22_N8
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (blink(17) & (\Add3~31\ $ (GND))) # (!blink(17) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((blink(17) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(17),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCFF_X14_Y22_N9
\blink[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~32_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(17));

-- Location: LCCOMB_X14_Y22_N10
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (blink(18) & (!\Add3~33\)) # (!blink(18) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!blink(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(18),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X13_Y22_N26
\blink~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~7_combout\ = (\Add3~34_combout\ & ((!\Equal15~7_combout\) # (!\Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~4_combout\,
	datac => \Add3~34_combout\,
	datad => \Equal15~7_combout\,
	combout => \blink~7_combout\);

-- Location: LCFF_X13_Y22_N27
\blink[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~7_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(18));

-- Location: LCCOMB_X14_Y22_N12
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (blink(19) & (\Add3~35\ $ (GND))) # (!blink(19) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((blink(19) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(19),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X14_Y22_N30
\blink~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~8_combout\ = (\Add3~36_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datac => \Equal15~4_combout\,
	datad => \Add3~36_combout\,
	combout => \blink~8_combout\);

-- Location: LCFF_X14_Y22_N31
\blink[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~8_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(19));

-- Location: LCCOMB_X14_Y22_N14
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (blink(20) & (!\Add3~37\)) # (!blink(20) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!blink(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(20),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCFF_X14_Y22_N15
\blink[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~38_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(20));

-- Location: LCCOMB_X14_Y22_N18
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (blink(22) & (!\Add3~41\)) # (!blink(22) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!blink(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(22),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X14_Y22_N28
\blink~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~9_combout\ = (\Add3~42_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datac => \Equal15~4_combout\,
	datad => \Add3~42_combout\,
	combout => \blink~9_combout\);

-- Location: LCFF_X14_Y22_N29
\blink[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~9_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(22));

-- Location: LCCOMB_X14_Y22_N20
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (blink(23) & (\Add3~43\ $ (GND))) # (!blink(23) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((blink(23) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(23),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCFF_X14_Y22_N23
\blink[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~46_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(24));

-- Location: LCFF_X14_Y22_N21
\blink[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~44_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(23));

-- Location: LCCOMB_X14_Y22_N26
\Equal15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~6_combout\ = (!blink(21) & (!blink(20) & (!blink(23) & blink(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(21),
	datab => blink(20),
	datac => blink(23),
	datad => blink(22),
	combout => \Equal15~6_combout\);

-- Location: LCCOMB_X13_Y22_N12
\Equal15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~5_combout\ = (!blink(16) & (blink(18) & (!blink(17) & blink(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(16),
	datab => blink(18),
	datac => blink(17),
	datad => blink(19),
	combout => \Equal15~5_combout\);

-- Location: LCCOMB_X13_Y22_N10
\Equal15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~7_combout\ = (!blink(25) & (!blink(24) & (\Equal15~6_combout\ & \Equal15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(25),
	datab => blink(24),
	datac => \Equal15~6_combout\,
	datad => \Equal15~5_combout\,
	combout => \Equal15~7_combout\);

-- Location: LCCOMB_X13_Y23_N14
\blink[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink[5]~0_combout\ = (\Equal15~4_combout\ & (!\Equal15~7_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\)))) # (!\Equal15~4_combout\ & (((!\Equal14~4_combout\)) # (!\Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~4_combout\,
	datab => \Equal14~7_combout\,
	datac => \Equal15~7_combout\,
	datad => \Equal14~4_combout\,
	combout => \blink[5]~0_combout\);

-- Location: LCFF_X14_Y23_N9
\blink[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~0_combout\,
	ena => \blink[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(1));

-- Location: LCFF_X14_Y23_N21
\blink[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add3~12_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(7));

-- Location: LCCOMB_X13_Y22_N22
\Equal15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (!blink(0) & (!blink(1) & (blink(6) & !blink(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(0),
	datab => blink(1),
	datac => blink(6),
	datad => blink(7),
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X13_Y22_N14
\Equal15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~3_combout\ = (!blink(15) & (blink(14) & (!blink(12) & !blink(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(15),
	datab => blink(14),
	datac => blink(12),
	datad => blink(13),
	combout => \Equal15~3_combout\);

-- Location: LCCOMB_X13_Y22_N8
\blink~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~5_combout\ = (\Add3~20_combout\ & ((!\Equal15~4_combout\) # (!\Equal15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~4_combout\,
	datad => \Add3~20_combout\,
	combout => \blink~5_combout\);

-- Location: LCFF_X13_Y22_N9
\blink[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blink~5_combout\,
	ena => \Equal14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink(11));

-- Location: LCCOMB_X13_Y22_N6
\Equal15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (blink(8) & (blink(9) & (blink(11) & !blink(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(8),
	datab => blink(9),
	datac => blink(11),
	datad => blink(10),
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X13_Y22_N0
\Equal15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~4_combout\ = (\Equal15~0_combout\ & (\Equal15~1_combout\ & (\Equal15~3_combout\ & \Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~0_combout\,
	datab => \Equal15~1_combout\,
	datac => \Equal15~3_combout\,
	datad => \Equal15~2_combout\,
	combout => \Equal15~4_combout\);

-- Location: LCCOMB_X13_Y22_N16
\i[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[4]~1_combout\ = (\Equal15~7_combout\ & (\Equal15~4_combout\ & ((!\Equal14~4_combout\) # (!\Equal14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~4_combout\,
	datac => \Equal14~7_combout\,
	datad => \Equal14~4_combout\,
	combout => \i[4]~1_combout\);

-- Location: LCFF_X14_Y18_N5
\i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add7~0_combout\,
	ena => \i[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LCCOMB_X14_Y18_N6
\Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (i(1) & (!\Add7~1\)) # (!i(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X14_Y18_N28
\i~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\Add7~2_combout\ & ((!i(0)) # (!\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datac => i(0),
	datad => \Add7~2_combout\,
	combout => \i~2_combout\);

-- Location: LCFF_X14_Y18_N29
\i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \i~2_combout\,
	ena => \i[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1));

-- Location: LCCOMB_X14_Y18_N8
\Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (i(2) & (\Add7~3\ $ (GND))) # (!i(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((i(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCFF_X14_Y18_N9
\i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add7~4_combout\,
	ena => \i[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2));

-- Location: LCCOMB_X14_Y18_N30
\i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\Add7~6_combout\ & ((!i(0)) # (!\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datac => i(0),
	datad => \Add7~6_combout\,
	combout => \i~0_combout\);

-- Location: LCFF_X14_Y18_N31
\i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \i~0_combout\,
	ena => \i[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: LCCOMB_X14_Y18_N26
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!i(4) & (i(3) & (!i(2) & !i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => i(3),
	datac => i(2),
	datad => i(1),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X14_Y18_N0
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!i(4) & (!i(2) & !i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => i(2),
	datad => i(3),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X14_Y18_N20
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (i(0) & (((\Equal10~0_combout\)))) # (!i(0) & (!i(1) & ((\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Equal10~0_combout\,
	datac => i(0),
	datad => \Equal7~0_combout\,
	combout => \process_0~2_combout\);

-- Location: LCFF_X14_Y18_N1
\LEDR[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \process_0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[0]~reg0_regout\);

-- Location: LCCOMB_X25_Y18_N10
\process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (i(0) & (!i(1) & ((\Equal7~0_combout\)))) # (!i(0) & (((\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Equal10~0_combout\,
	datac => i(0),
	datad => \Equal7~0_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X25_Y18_N4
\LEDR[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[1]~reg0feeder_combout\ = \process_0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~3_combout\,
	combout => \LEDR[1]~reg0feeder_combout\);

-- Location: LCFF_X25_Y18_N5
\LEDR[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[1]~reg0_regout\);

-- Location: LCCOMB_X14_Y18_N22
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!i(4) & (i(2) & !i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datac => i(2),
	datad => i(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X14_Y18_N14
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (i(1) & ((i(0) & ((\Equal4~0_combout\))) # (!i(0) & (\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Equal7~0_combout\,
	datac => i(0),
	datad => \Equal4~0_combout\,
	combout => \process_0~4_combout\);

-- Location: LCFF_X14_Y18_N15
\LEDR[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[2]~reg0_regout\);

-- Location: LCCOMB_X14_Y18_N24
\process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (i(1) & ((i(0) & (\Equal7~0_combout\)) # (!i(0) & ((\Equal4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Equal7~0_combout\,
	datac => i(0),
	datad => \Equal4~0_combout\,
	combout => \process_0~5_combout\);

-- Location: LCFF_X14_Y18_N19
\LEDR[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \process_0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[3]~reg0_regout\);

-- Location: LCCOMB_X14_Y18_N2
\process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!i(4) & (!i(3) & (i(2) & !i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => i(3),
	datac => i(2),
	datad => i(1),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X18_Y10_N24
\LEDR[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[4]~reg0feeder_combout\ = \process_0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~6_combout\,
	combout => \LEDR[4]~reg0feeder_combout\);

-- Location: LCFF_X18_Y10_N25
\LEDR[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[4]~reg0_regout\);

-- Location: LCCOMB_X18_Y10_N26
\LEDR[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~reg0feeder_combout\ = \process_0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~6_combout\,
	combout => \LEDR[5]~reg0feeder_combout\);

-- Location: LCFF_X18_Y10_N27
\LEDR[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[5]~reg0_regout\);

-- Location: LCFF_X14_Y18_N11
\LEDR[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \process_0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[6]~reg0_regout\);

-- Location: LCFF_X14_Y18_N7
\LEDR[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \process_0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[7]~reg0_regout\);

-- Location: LCFF_X25_Y18_N11
\LEDR[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[8]~reg0_regout\);

-- Location: LCFF_X14_Y18_N17
\LEDR[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \process_0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[9]~reg0_regout\);

-- Location: LCCOMB_X25_Y18_N20
\Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!i(1) & (!i(0) & \Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datac => i(0),
	datad => \Equal7~0_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCFF_X25_Y18_N21
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCCOMB_X25_Y15_N20
\Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (i(0) & (\Equal7~0_combout\ & !i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datac => \Equal7~0_combout\,
	datad => i(1),
	combout => \Equal11~0_combout\);

-- Location: LCFF_X25_Y15_N21
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

-- Location: LCCOMB_X25_Y15_N18
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!i(0) & (\Equal7~0_combout\ & i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datac => \Equal7~0_combout\,
	datad => i(1),
	combout => \Equal9~0_combout\);

-- Location: LCFF_X25_Y15_N19
\LEDG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[2]~reg0_regout\);

-- Location: LCCOMB_X25_Y15_N4
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (i(0) & (\Equal7~0_combout\ & i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datac => \Equal7~0_combout\,
	datad => i(1),
	combout => \Equal7~1_combout\);

-- Location: LCFF_X25_Y15_N5
\LEDG[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[3]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N16
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!i(1) & (!i(0) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datac => i(0),
	datad => \Equal4~0_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCFF_X22_Y10_N17
\LEDG[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[4]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N10
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!i(1) & (i(0) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datac => i(0),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCFF_X22_Y10_N11
\LEDG[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[5]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N20
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (i(1) & (!i(0) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datac => i(0),
	datad => \Equal4~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCFF_X22_Y10_N21
\LEDG[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[6]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N18
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (i(1) & (i(0) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datac => i(0),
	datad => \Equal4~0_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCFF_X22_Y10_N19
\LEDG[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[7]~reg0_regout\);

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
	datain => \stage|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

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
	datain => \stage|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

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
	datain => \stage|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

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
	datain => \stage|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

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
	datain => \stage|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

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
	datain => \stage|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

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
	datain => \stage|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \stage1|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => \stage2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => \stage3|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => \stage3|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => \stage3|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \LEDR[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \LEDR[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \LEDR[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \LEDR[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \LEDR[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \LEDR[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \LEDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \LEDR[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => \LEDR[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => \LEDR[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \LEDG[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \LEDG[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => \LEDG[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => \LEDG[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => \LEDG[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => \LEDG[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \LEDG[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


