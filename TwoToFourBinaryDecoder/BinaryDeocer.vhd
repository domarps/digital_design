----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    17:56:26 05/21/2014 
-- Design Name: 
-- Module Name:    BinaryDeocer - BinaryDeocer_Arch1 
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

entity BinaryDeocer is
    Port ( ip : in  STD_LOGIC_VECTOR (1 downto 0);
           op : out  STD_LOGIC_VECTOR(3 downto 0));
end BinaryDeocer;

architecture BinaryDeocer_Arch1 of BinaryDeocer is
begin
				
				op <= "0001"  when ip = "00" else
								"0010" when ip = "01" else				
								"0100" when ip = "10" else
								"1000" when ip = "11" else
								"0000";

end BinaryDeocer_Arch1;

