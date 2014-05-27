----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    16:58:14 05/22/2014 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
					generic ( 
									N: integer := 4
									);
									
					port (
										a : in std_logic_vector(N downto 0);
									   b : in std_logic_vector (N downto 0);
										sum : out std_logic_vector (N downto 0)
									);
end adder;

architecture SumWithoutCarry of adder is
begin
						sum  <= a + b; --UNFINSHED
						
end SumWithoutCarry;

