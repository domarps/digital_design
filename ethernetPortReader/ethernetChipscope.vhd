----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    18:47:10 07/18/2014 
-- Design Name: 
-- Module Name:    ethernetChipscope - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity ethernetChipscope is
    Port ( fa_in : in  STD_LOGIC;
					reset : in STD_LOGIC;
           fa_out : out  STD_LOGIC;
			  clk_r: in STD_LOGIC);
--			  clk_p: in STD_LOGIC;
--			  clk_n: in STD_LOGIC);
end ethernetChipscope;

architecture Behavioral of ethernetChipscope is
signal tempReg,tempNext: STD_LOGIC	;
signal clk: STD_LOGIC;
--signal clk: STD_LOGIC;
begin
					process(clk) 
					begin
									if (clk'event and clk = '1') then
									      if (reset = '1') then 
												tempReg <= '0';
											else
													tempReg <= tempNext;
													end if;
								   end if;
					end process;
					clk_instance : IBUFG
					Port map(
					I => clk_r,
					o => clk);
					
--					clk_instance : IBUFDS
--					Port map(
--					I => clk_p,
--					IB => clk_n,
--					o => clk);
					
					process(fa_in)
					begin
					tempNext <= fa_in;
					end process;

fa_out <= tempReg;

end Behavioral;

