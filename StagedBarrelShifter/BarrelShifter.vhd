----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    18:09:05 05/23/2014 
-- Design Name: 
-- Module Name:    BarrelShifter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BarrelShifter is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           amt : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (7 downto 0));
end BarrelShifter;

architecture Behavioral of BarrelShifter is
		signal stage1,stage2 : std_logic_vector (7 downto 0);
begin
--stage 1
		stage1<= a(0) & a(7 downto 1) when amt(0) = '1' else 
					a;

		stage2 <= a(1 downto 0) & a(7 downto 2) when amt(1) = '1' else 
					stage1;

		y <= a(3 downto 0) & a(7 downto 4) when amt(2) = '1' else 
					stage1;
					
end Behavioral;

