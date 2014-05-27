----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer:  Rishav Ambasta
-- 
-- Create Date:    06:53:14 05/14/2014 
-- Design Name: 
-- Module Name:    foo - Behavioral 
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

entity foo is
          port (
							i0,i1: in std_logic;
							eq: out std_logic
							);
end foo;

architecture OneBItComparatorArch of foo is
	signal p0, p1 :std_logic;

begin
	eq <= p0 or p1;
	p0 <= (not i0) and (not i1);
	p1 <= i0 and i1;
	
end OneBItComparatorArch;

