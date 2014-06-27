----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    14:43:59 06/26/2014 
-- Design Name: 
-- Module Name:    diwali - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity diwali is
    Port ( reset : in  STD_LOGIC;
				clk : in STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end diwali;

architecture Behavioral of diwali is
signal counter_reg,counter_next: std_LOGIC_VECTOR (26 downto 0);
signal led_reg, led_next : STD_LOGIC_VECTOR(7 downto 0);

begin
	process (clk, reset)
	begin
				if (reset = '1') then
						counter_reg <= "101111101011110000100000000";
						led_reg <= "00000001";
				elsif (clk'event and clk = '1') then
						led_reg <= led_next;
						counter_reg <= counter_next;
				end if;		
	end process;
	--next state logic
				led_next <= led_reg(6 downto 0) & led_reg(7) 
							when (counter_reg =  "000000000000000000000000000")
							else led_reg;
							
				counter_next <= "101111101011110000100000000"
					      when (counter_reg =  "000000000000000000000000000")
								else	STD_LOGIC_VECTOR(unsigned(counter_reg) - 1);
	--Output logic
				led <= led_reg;					
end Behavioral;

