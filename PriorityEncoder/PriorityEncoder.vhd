----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    17:24:47 05/21/2014 
-- Design Name: 
-- Module Name:    PriorityEncoder - PriorityEncoder_Book_Arch 
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

entity PriorityEncoder is
    Port ( 
			  x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           x4 : in  STD_LOGIC;
           outPut : out  STD_LOGIC_VECTOR (2 downto 0));
end PriorityEncoder;

architecture PriorityEncoder_Book_Arch of PriorityEncoder is
				
begin
				
				outPut <= "100" when  x4 = '1' else 
											"011" when  x3 = '1' else 
											"010" when  x2 = '1' else 
											"001" when  x1 = '1'  else
											"000";

end PriorityEncoder_Book_Arch;

