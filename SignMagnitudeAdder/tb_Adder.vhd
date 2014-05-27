--------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
--
-- Create Date:   11:58:52 05/23/2014
-- Design Name:   
-- Module Name:   /home/rishav/Logic/SignMagnitudeAdder/tb_Adder.vhd
-- Project Name:  SignMagnitudeAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_Adder IS
END tb_Adder;
 
ARCHITECTURE behavior OF tb_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          a => a,
          b => b,
          sum => sum
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <=  1011;
		b<= 0010;
				
		wait for 100 ns;	
		a <=  0011;
		b<= 1010;
		
		wait for 100 ns;	
		a <=  -3;
		b<= -2;
		
		wait for 100 ns;	
		a <= +3;
		b<= +2;
		
		wait for 100 ns;	
		a <=  -3;
		b<= +2;
		
		wait for 100 ns;	
		a <=  -3;
		b<= 2;
		
		wait for 100 ns;	
		a <=  -3;
		b<= 2;
		
		wait for 100 ns;	
		a <=  -3;
		b<= 2;
		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
