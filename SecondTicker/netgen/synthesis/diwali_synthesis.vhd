--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: diwali_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 26 15:40:00 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm diwali -w -dir netgen/synthesis -ofmt vhdl -sim diwali.ngc diwali_synthesis.vhd 
-- Device	: xa7a100t-2I-csg324
-- Input file	: diwali.ngc
-- Output file	: /home/rishav/logic/code_repository/SecondTicker/netgen/synthesis/diwali_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: diwali
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity diwali is
  port (
    reset : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end diwali;

architecture Structure of diwali is
  signal reset_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_0 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_1 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_2 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_3 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_4 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_5 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_6 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_7 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_8 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_9 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_10 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_11 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_12 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_13 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_14 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_15 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_16 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_17 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_18 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_19 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_20 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_21 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_22 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_23 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_24 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_25 : STD_LOGIC; 
  signal Mcount_counter_reg_eqn_26 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_Q : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_1_147 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_2_148 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_3_149 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_4_150 : STD_LOGIC; 
  signal Mcount_counter_reg_cy_0_rt_161 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_41 : STD_LOGIC; 
  signal GND_4_o_counter_reg_26_equal_3_o_26_5_163 : STD_LOGIC; 
  signal counter_reg : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal led_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Mcount_counter_reg_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Mcount_counter_reg_lut : STD_LOGIC_VECTOR ( 26 downto 1 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  led_reg_0 : FDPE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      D => led_reg(7),
      PRE => reset_IBUF_0,
      Q => led_reg(0)
    );
  led_reg_1 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(0),
      Q => led_reg(1)
    );
  led_reg_2 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(1),
      Q => led_reg(2)
    );
  led_reg_3 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(2),
      Q => led_reg(3)
    );
  led_reg_4 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(3),
      Q => led_reg(4)
    );
  led_reg_5 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(4),
      Q => led_reg(5)
    );
  led_reg_6 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(5),
      Q => led_reg(6)
    );
  led_reg_7 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => GND_4_o_counter_reg_26_equal_3_o,
      CLR => reset_IBUF_0,
      D => led_reg(6),
      Q => led_reg(7)
    );
  counter_reg_0 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_0,
      Q => counter_reg(0)
    );
  counter_reg_1 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_1,
      Q => counter_reg(1)
    );
  counter_reg_2 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_2,
      Q => counter_reg(2)
    );
  counter_reg_5 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_5,
      Q => counter_reg(5)
    );
  counter_reg_3 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_3,
      Q => counter_reg(3)
    );
  counter_reg_4 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_4,
      Q => counter_reg(4)
    );
  counter_reg_6 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_6,
      Q => counter_reg(6)
    );
  counter_reg_7 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_7,
      Q => counter_reg(7)
    );
  counter_reg_8 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_8,
      PRE => reset_IBUF_0,
      Q => counter_reg(8)
    );
  counter_reg_9 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_9,
      Q => counter_reg(9)
    );
  counter_reg_12 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_12,
      Q => counter_reg(12)
    );
  counter_reg_10 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_10,
      Q => counter_reg(10)
    );
  counter_reg_11 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_11,
      Q => counter_reg(11)
    );
  counter_reg_13 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_13,
      PRE => reset_IBUF_0,
      Q => counter_reg(13)
    );
  counter_reg_14 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_14,
      PRE => reset_IBUF_0,
      Q => counter_reg(14)
    );
  counter_reg_15 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_15,
      PRE => reset_IBUF_0,
      Q => counter_reg(15)
    );
  counter_reg_16 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_16,
      PRE => reset_IBUF_0,
      Q => counter_reg(16)
    );
  counter_reg_19 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_19,
      Q => counter_reg(19)
    );
  counter_reg_17 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_17,
      Q => counter_reg(17)
    );
  counter_reg_18 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_18,
      PRE => reset_IBUF_0,
      Q => counter_reg(18)
    );
  counter_reg_20 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_20,
      PRE => reset_IBUF_0,
      Q => counter_reg(20)
    );
  counter_reg_21 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_21,
      PRE => reset_IBUF_0,
      Q => counter_reg(21)
    );
  counter_reg_22 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_22,
      PRE => reset_IBUF_0,
      Q => counter_reg(22)
    );
  counter_reg_23 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_23,
      PRE => reset_IBUF_0,
      Q => counter_reg(23)
    );
  counter_reg_26 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_26,
      PRE => reset_IBUF_0,
      Q => counter_reg(26)
    );
  counter_reg_24 : FDP
    port map (
      C => clk_BUFGP_1,
      D => Mcount_counter_reg_eqn_24,
      PRE => reset_IBUF_0,
      Q => counter_reg(24)
    );
  counter_reg_25 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_0,
      D => Mcount_counter_reg_eqn_25,
      Q => counter_reg(25)
    );
  Mcount_counter_reg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_counter_reg_cy_0_rt_161,
      O => Mcount_counter_reg_cy(0)
    );
  Mcount_counter_reg_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_counter_reg_cy_0_rt_161,
      O => Result(0)
    );
  Mcount_counter_reg_cy_1_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(0),
      DI => N0,
      S => Mcount_counter_reg_lut(1),
      O => Mcount_counter_reg_cy(1)
    );
  Mcount_counter_reg_xor_1_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(0),
      LI => Mcount_counter_reg_lut(1),
      O => Result(1)
    );
  Mcount_counter_reg_cy_2_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(1),
      DI => N0,
      S => Mcount_counter_reg_lut(2),
      O => Mcount_counter_reg_cy(2)
    );
  Mcount_counter_reg_xor_2_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(1),
      LI => Mcount_counter_reg_lut(2),
      O => Result(2)
    );
  Mcount_counter_reg_cy_3_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(2),
      DI => N0,
      S => Mcount_counter_reg_lut(3),
      O => Mcount_counter_reg_cy(3)
    );
  Mcount_counter_reg_xor_3_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(2),
      LI => Mcount_counter_reg_lut(3),
      O => Result(3)
    );
  Mcount_counter_reg_cy_4_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(3),
      DI => N0,
      S => Mcount_counter_reg_lut(4),
      O => Mcount_counter_reg_cy(4)
    );
  Mcount_counter_reg_xor_4_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(3),
      LI => Mcount_counter_reg_lut(4),
      O => Result(4)
    );
  Mcount_counter_reg_cy_5_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(4),
      DI => N0,
      S => Mcount_counter_reg_lut(5),
      O => Mcount_counter_reg_cy(5)
    );
  Mcount_counter_reg_xor_5_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(4),
      LI => Mcount_counter_reg_lut(5),
      O => Result(5)
    );
  Mcount_counter_reg_cy_6_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(5),
      DI => N0,
      S => Mcount_counter_reg_lut(6),
      O => Mcount_counter_reg_cy(6)
    );
  Mcount_counter_reg_xor_6_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(5),
      LI => Mcount_counter_reg_lut(6),
      O => Result(6)
    );
  Mcount_counter_reg_cy_7_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(6),
      DI => N0,
      S => Mcount_counter_reg_lut(7),
      O => Mcount_counter_reg_cy(7)
    );
  Mcount_counter_reg_xor_7_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(6),
      LI => Mcount_counter_reg_lut(7),
      O => Result(7)
    );
  Mcount_counter_reg_cy_8_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(7),
      DI => N0,
      S => Mcount_counter_reg_lut(8),
      O => Mcount_counter_reg_cy(8)
    );
  Mcount_counter_reg_xor_8_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(7),
      LI => Mcount_counter_reg_lut(8),
      O => Result(8)
    );
  Mcount_counter_reg_cy_9_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(8),
      DI => N0,
      S => Mcount_counter_reg_lut(9),
      O => Mcount_counter_reg_cy(9)
    );
  Mcount_counter_reg_xor_9_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(8),
      LI => Mcount_counter_reg_lut(9),
      O => Result(9)
    );
  Mcount_counter_reg_cy_10_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(9),
      DI => N0,
      S => Mcount_counter_reg_lut(10),
      O => Mcount_counter_reg_cy(10)
    );
  Mcount_counter_reg_xor_10_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(9),
      LI => Mcount_counter_reg_lut(10),
      O => Result(10)
    );
  Mcount_counter_reg_cy_11_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(10),
      DI => N0,
      S => Mcount_counter_reg_lut(11),
      O => Mcount_counter_reg_cy(11)
    );
  Mcount_counter_reg_xor_11_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(10),
      LI => Mcount_counter_reg_lut(11),
      O => Result(11)
    );
  Mcount_counter_reg_cy_12_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(11),
      DI => N0,
      S => Mcount_counter_reg_lut(12),
      O => Mcount_counter_reg_cy(12)
    );
  Mcount_counter_reg_xor_12_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(11),
      LI => Mcount_counter_reg_lut(12),
      O => Result(12)
    );
  Mcount_counter_reg_cy_13_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(12),
      DI => N0,
      S => Mcount_counter_reg_lut(13),
      O => Mcount_counter_reg_cy(13)
    );
  Mcount_counter_reg_xor_13_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(12),
      LI => Mcount_counter_reg_lut(13),
      O => Result(13)
    );
  Mcount_counter_reg_cy_14_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(13),
      DI => N0,
      S => Mcount_counter_reg_lut(14),
      O => Mcount_counter_reg_cy(14)
    );
  Mcount_counter_reg_xor_14_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(13),
      LI => Mcount_counter_reg_lut(14),
      O => Result(14)
    );
  Mcount_counter_reg_cy_15_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(14),
      DI => N0,
      S => Mcount_counter_reg_lut(15),
      O => Mcount_counter_reg_cy(15)
    );
  Mcount_counter_reg_xor_15_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(14),
      LI => Mcount_counter_reg_lut(15),
      O => Result(15)
    );
  Mcount_counter_reg_cy_16_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(15),
      DI => N0,
      S => Mcount_counter_reg_lut(16),
      O => Mcount_counter_reg_cy(16)
    );
  Mcount_counter_reg_xor_16_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(15),
      LI => Mcount_counter_reg_lut(16),
      O => Result(16)
    );
  Mcount_counter_reg_cy_17_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(16),
      DI => N0,
      S => Mcount_counter_reg_lut(17),
      O => Mcount_counter_reg_cy(17)
    );
  Mcount_counter_reg_xor_17_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(16),
      LI => Mcount_counter_reg_lut(17),
      O => Result(17)
    );
  Mcount_counter_reg_cy_18_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(17),
      DI => N0,
      S => Mcount_counter_reg_lut(18),
      O => Mcount_counter_reg_cy(18)
    );
  Mcount_counter_reg_xor_18_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(17),
      LI => Mcount_counter_reg_lut(18),
      O => Result(18)
    );
  Mcount_counter_reg_cy_19_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(18),
      DI => N0,
      S => Mcount_counter_reg_lut(19),
      O => Mcount_counter_reg_cy(19)
    );
  Mcount_counter_reg_xor_19_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(18),
      LI => Mcount_counter_reg_lut(19),
      O => Result(19)
    );
  Mcount_counter_reg_cy_20_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(19),
      DI => N0,
      S => Mcount_counter_reg_lut(20),
      O => Mcount_counter_reg_cy(20)
    );
  Mcount_counter_reg_xor_20_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(19),
      LI => Mcount_counter_reg_lut(20),
      O => Result(20)
    );
  Mcount_counter_reg_cy_21_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(20),
      DI => N0,
      S => Mcount_counter_reg_lut(21),
      O => Mcount_counter_reg_cy(21)
    );
  Mcount_counter_reg_xor_21_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(20),
      LI => Mcount_counter_reg_lut(21),
      O => Result(21)
    );
  Mcount_counter_reg_cy_22_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(21),
      DI => N0,
      S => Mcount_counter_reg_lut(22),
      O => Mcount_counter_reg_cy(22)
    );
  Mcount_counter_reg_xor_22_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(21),
      LI => Mcount_counter_reg_lut(22),
      O => Result(22)
    );
  Mcount_counter_reg_cy_23_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(22),
      DI => N0,
      S => Mcount_counter_reg_lut(23),
      O => Mcount_counter_reg_cy(23)
    );
  Mcount_counter_reg_xor_23_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(22),
      LI => Mcount_counter_reg_lut(23),
      O => Result(23)
    );
  Mcount_counter_reg_cy_24_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(23),
      DI => N0,
      S => Mcount_counter_reg_lut(24),
      O => Mcount_counter_reg_cy(24)
    );
  Mcount_counter_reg_xor_24_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(23),
      LI => Mcount_counter_reg_lut(24),
      O => Result(24)
    );
  Mcount_counter_reg_cy_25_Q : MUXCY
    port map (
      CI => Mcount_counter_reg_cy(24),
      DI => N0,
      S => Mcount_counter_reg_lut(25),
      O => Mcount_counter_reg_cy(25)
    );
  Mcount_counter_reg_xor_25_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(24),
      LI => Mcount_counter_reg_lut(25),
      O => Result(25)
    );
  Mcount_counter_reg_xor_26_Q : XORCY
    port map (
      CI => Mcount_counter_reg_cy(25),
      LI => Mcount_counter_reg_lut(26),
      O => Result(26)
    );
  GND_4_o_counter_reg_26_equal_3_o_26_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => counter_reg(5),
      O => GND_4_o_counter_reg_26_equal_3_o_26_Q
    );
  GND_4_o_counter_reg_26_equal_3_o_26_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => counter_reg(7),
      I1 => counter_reg(6),
      I2 => counter_reg(8),
      I3 => counter_reg(9),
      I4 => counter_reg(10),
      I5 => counter_reg(11),
      O => GND_4_o_counter_reg_26_equal_3_o_26_1_147
    );
  GND_4_o_counter_reg_26_equal_3_o_26_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => counter_reg(13),
      I1 => counter_reg(12),
      I2 => counter_reg(14),
      I3 => counter_reg(15),
      I4 => counter_reg(16),
      I5 => counter_reg(17),
      O => GND_4_o_counter_reg_26_equal_3_o_26_2_148
    );
  GND_4_o_counter_reg_26_equal_3_o_26_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(20),
      I3 => counter_reg(21),
      I4 => counter_reg(22),
      I5 => counter_reg(23),
      O => GND_4_o_counter_reg_26_equal_3_o_26_3_149
    );
  GND_4_o_counter_reg_26_equal_3_o_26_5 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => counter_reg(25),
      I1 => counter_reg(24),
      I2 => counter_reg(26),
      O => GND_4_o_counter_reg_26_equal_3_o_26_4_150
    );
  GND_4_o_counter_reg_26_equal_3_o_26_6 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_5_163,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_41,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      O => GND_4_o_counter_reg_26_equal_3_o
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_0
    );
  led_7_OBUF : OBUF
    port map (
      I => led_reg(7),
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => led_reg(6),
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => led_reg(5),
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => led_reg(4),
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => led_reg(3),
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => led_reg(2),
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => led_reg(1),
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => led_reg(0),
      O => led(0)
    );
  Mcount_counter_reg_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_reg(0),
      O => Mcount_counter_reg_cy_0_rt_161
    );
  Mcount_counter_reg_eqn_261 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(26),
      O => Mcount_counter_reg_eqn_26
    );
  Mcount_counter_reg_eqn_251 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(25),
      O => Mcount_counter_reg_eqn_25
    );
  Mcount_counter_reg_eqn_241 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(24),
      O => Mcount_counter_reg_eqn_24
    );
  Mcount_counter_reg_eqn_231 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(23),
      O => Mcount_counter_reg_eqn_23
    );
  Mcount_counter_reg_eqn_221 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(22),
      O => Mcount_counter_reg_eqn_22
    );
  Mcount_counter_reg_eqn_211 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(21),
      O => Mcount_counter_reg_eqn_21
    );
  Mcount_counter_reg_eqn_201 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(20),
      O => Mcount_counter_reg_eqn_20
    );
  Mcount_counter_reg_eqn_191 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(19),
      O => Mcount_counter_reg_eqn_19
    );
  Mcount_counter_reg_eqn_181 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(18),
      O => Mcount_counter_reg_eqn_18
    );
  Mcount_counter_reg_eqn_171 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(17),
      O => Mcount_counter_reg_eqn_17
    );
  Mcount_counter_reg_eqn_161 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(16),
      O => Mcount_counter_reg_eqn_16
    );
  Mcount_counter_reg_eqn_151 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(15),
      O => Mcount_counter_reg_eqn_15
    );
  Mcount_counter_reg_eqn_141 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(14),
      O => Mcount_counter_reg_eqn_14
    );
  Mcount_counter_reg_eqn_131 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(13),
      O => Mcount_counter_reg_eqn_13
    );
  Mcount_counter_reg_eqn_121 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(12),
      O => Mcount_counter_reg_eqn_12
    );
  Mcount_counter_reg_eqn_111 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(11),
      O => Mcount_counter_reg_eqn_11
    );
  Mcount_counter_reg_eqn_101 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(10),
      O => Mcount_counter_reg_eqn_10
    );
  Mcount_counter_reg_eqn_91 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(9),
      O => Mcount_counter_reg_eqn_9
    );
  Mcount_counter_reg_eqn_81 : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I5 => Result(8),
      O => Mcount_counter_reg_eqn_8
    );
  Mcount_counter_reg_eqn_71 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(7),
      O => Mcount_counter_reg_eqn_7
    );
  Mcount_counter_reg_eqn_61 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(6),
      O => Mcount_counter_reg_eqn_6
    );
  Mcount_counter_reg_eqn_51 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(5),
      O => Mcount_counter_reg_eqn_5
    );
  Mcount_counter_reg_eqn_41 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(4),
      O => Mcount_counter_reg_eqn_4
    );
  Mcount_counter_reg_eqn_31 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(3),
      O => Mcount_counter_reg_eqn_3
    );
  Mcount_counter_reg_eqn_01 : LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => Result(0),
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I5 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      O => Mcount_counter_reg_eqn_0
    );
  Mcount_counter_reg_eqn_110 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(1),
      O => Mcount_counter_reg_eqn_1
    );
  Mcount_counter_reg_eqn_27 : LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
    port map (
      I0 => GND_4_o_counter_reg_26_equal_3_o_26_4_150,
      I1 => GND_4_o_counter_reg_26_equal_3_o_26_3_149,
      I2 => GND_4_o_counter_reg_26_equal_3_o_26_Q,
      I3 => GND_4_o_counter_reg_26_equal_3_o_26_2_148,
      I4 => GND_4_o_counter_reg_26_equal_3_o_26_1_147,
      I5 => Result(2),
      O => Mcount_counter_reg_eqn_2
    );
  GND_4_o_counter_reg_26_equal_3_o_26_4_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(20),
      I3 => counter_reg(21),
      I4 => counter_reg(22),
      I5 => counter_reg(23),
      O => GND_4_o_counter_reg_26_equal_3_o_26_41
    );
  GND_4_o_counter_reg_26_equal_3_o_26_5_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => counter_reg(25),
      I1 => counter_reg(24),
      I2 => counter_reg(26),
      O => GND_4_o_counter_reg_26_equal_3_o_26_5_163
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  Mcount_counter_reg_lut_1_INV_0 : INV
    port map (
      I => counter_reg(1),
      O => Mcount_counter_reg_lut(1)
    );
  Mcount_counter_reg_lut_2_INV_0 : INV
    port map (
      I => counter_reg(2),
      O => Mcount_counter_reg_lut(2)
    );
  Mcount_counter_reg_lut_3_INV_0 : INV
    port map (
      I => counter_reg(3),
      O => Mcount_counter_reg_lut(3)
    );
  Mcount_counter_reg_lut_4_INV_0 : INV
    port map (
      I => counter_reg(4),
      O => Mcount_counter_reg_lut(4)
    );
  Mcount_counter_reg_lut_5_INV_0 : INV
    port map (
      I => counter_reg(5),
      O => Mcount_counter_reg_lut(5)
    );
  Mcount_counter_reg_lut_6_INV_0 : INV
    port map (
      I => counter_reg(6),
      O => Mcount_counter_reg_lut(6)
    );
  Mcount_counter_reg_lut_7_INV_0 : INV
    port map (
      I => counter_reg(7),
      O => Mcount_counter_reg_lut(7)
    );
  Mcount_counter_reg_lut_8_INV_0 : INV
    port map (
      I => counter_reg(8),
      O => Mcount_counter_reg_lut(8)
    );
  Mcount_counter_reg_lut_9_INV_0 : INV
    port map (
      I => counter_reg(9),
      O => Mcount_counter_reg_lut(9)
    );
  Mcount_counter_reg_lut_10_INV_0 : INV
    port map (
      I => counter_reg(10),
      O => Mcount_counter_reg_lut(10)
    );
  Mcount_counter_reg_lut_11_INV_0 : INV
    port map (
      I => counter_reg(11),
      O => Mcount_counter_reg_lut(11)
    );
  Mcount_counter_reg_lut_12_INV_0 : INV
    port map (
      I => counter_reg(12),
      O => Mcount_counter_reg_lut(12)
    );
  Mcount_counter_reg_lut_13_INV_0 : INV
    port map (
      I => counter_reg(13),
      O => Mcount_counter_reg_lut(13)
    );
  Mcount_counter_reg_lut_14_INV_0 : INV
    port map (
      I => counter_reg(14),
      O => Mcount_counter_reg_lut(14)
    );
  Mcount_counter_reg_lut_15_INV_0 : INV
    port map (
      I => counter_reg(15),
      O => Mcount_counter_reg_lut(15)
    );
  Mcount_counter_reg_lut_16_INV_0 : INV
    port map (
      I => counter_reg(16),
      O => Mcount_counter_reg_lut(16)
    );
  Mcount_counter_reg_lut_17_INV_0 : INV
    port map (
      I => counter_reg(17),
      O => Mcount_counter_reg_lut(17)
    );
  Mcount_counter_reg_lut_18_INV_0 : INV
    port map (
      I => counter_reg(18),
      O => Mcount_counter_reg_lut(18)
    );
  Mcount_counter_reg_lut_19_INV_0 : INV
    port map (
      I => counter_reg(19),
      O => Mcount_counter_reg_lut(19)
    );
  Mcount_counter_reg_lut_20_INV_0 : INV
    port map (
      I => counter_reg(20),
      O => Mcount_counter_reg_lut(20)
    );
  Mcount_counter_reg_lut_21_INV_0 : INV
    port map (
      I => counter_reg(21),
      O => Mcount_counter_reg_lut(21)
    );
  Mcount_counter_reg_lut_22_INV_0 : INV
    port map (
      I => counter_reg(22),
      O => Mcount_counter_reg_lut(22)
    );
  Mcount_counter_reg_lut_23_INV_0 : INV
    port map (
      I => counter_reg(23),
      O => Mcount_counter_reg_lut(23)
    );
  Mcount_counter_reg_lut_24_INV_0 : INV
    port map (
      I => counter_reg(24),
      O => Mcount_counter_reg_lut(24)
    );
  Mcount_counter_reg_lut_25_INV_0 : INV
    port map (
      I => counter_reg(25),
      O => Mcount_counter_reg_lut(25)
    );
  Mcount_counter_reg_lut_26_INV_0 : INV
    port map (
      I => counter_reg(26),
      O => Mcount_counter_reg_lut(26)
    );

end Structure;

