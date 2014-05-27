--------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
--
-- Create Date:   17:39:39 05/21/2014
-- Design Name:   
-- Module Name:   /home/rishav/Logic/PriorityEncoder/tb_PrioirityEncoder.vhd
-- Project Name:  PriorityEncoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PriorityEncoder
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
 
ENTITY tb_PrioirityEncoder IS
END tb_PrioirityEncoder;
 
ARCHITECTURE behavior OF tb_PrioirityEncoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PriorityEncoder
    PORT(
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         x3 : IN  std_logic;
         x4 : IN  std_logic;
         outPut : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';
   signal x3 : std_logic := '0';
   signal x4 : std_logic := '0';

 	--Outputs
   signal outPut : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PriorityEncoder PORT MAP (
          x1 => x1,
          x2 => x2,
          x3 => x3,
          x4 => x4,
          outPut => outPut
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

--      wait for <clock>_period*10;

      -- insert stimulus here 
		x1 <= '0';
		x2 <= '0';
		x3 <= '0';
		x4 <= '0';
		
		wait for 100ns;
		
		x1 <= '1';
		x2 <= '0';
		x3 <= '0';
		x4 <= '0';
		
		wait for 100ns;
		
		
		x1 <= '0';
		x2 <= '1';
		x3 <= '0';
		x4 <= '0';
		
		wait for 100ns;
		
		x1 <= '0';
		x2 <= '0';
		x3 <= '1';
		x4 <= '0';
		
		wait for 100ns;

		x1 <= '0';
		x2 <= '0';
		x3 <= '0';
		x4 <= '1';
		
		wait for 100ns;
		
		x1 <= '1';
		x2 <= '1';
		x3 <= '0';
		x4 <= '0';
		
		wait for 100ns;
		
		x1 <= '1';
		x2 <= '1';
		x3 <= '1';
		x4 <= '0';
		
		wait for 100ns;
		
		
		x1 <= '1';
		x2 <= '1';
		x3 <= '1';
		x4 <= '1';
		
		wait for 100ns;
   end process;

END;
