----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    18:04:59 06/26/2014 
-- Design Name: 
-- Module Name:    BaudRateGenerator - Behavioral 
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
--  generates pulses for samples.... 
-- derived from a 100MHz clock 
-- 100 * 10^6 / (9600 * 16) ie a baud rate of 9600 and oversampling sceme of 16 samples.
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

entity BaudRateGenerator is
    Port (sampling_tick : out  STD_LOGIC;
					clk : in STD_LOGIC;
					reset : in STD_LOGIC);
end BaudRateGenerator;

architecture Behavioral of BaudRateGenerator is
CONSTANT BAUD_RATE : integer := 9600;
CONSTANT OVERSAMPLING_COUNT : integer := 16;
CONSTANT CLK_FREQ : integer := 100000000;

signal counter_reg, counter_next : std_logic_vector (9 downto 0);  --1010001011
begin
		     process(clk,reset)
			  begin
							if (reset = '1') then
									counter_reg <= "1010001011";
						   elsif (clk'event and clk = '1') then
											counter_reg <= counter_next;
							end if;
			  end process;
		     
			  counter_next <= "1010001011" when counter_reg = "0000000000"
													    else std_logic_vector( unsigned(counter_reg) - 1);
end Behavioral;

