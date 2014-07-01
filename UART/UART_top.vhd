----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    16:46:58 06/27/2014 
-- Design Name: 
-- Module Name:    UART_top - Behavioral 
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

entity UART_top is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           rx_done_tick : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
			  stage: out STD_LOGIC_VECTOR (4 downto 0));

end UART_top;

architecture Behavioral of UART_top is
signal s_tick: std_logic;
begin
	Inst_RxModule: entity work.RxModule(Behavioral) PORT MAP(
		clk => clk,
		reset => reset,
		rx => rx,
		s_tick => s_tick,
		rx_done_tick => rx_done_tick ,
		dout => dout,
		stage => stage
	);

	Inst_BaudRateGenerator: entity work.BaudRateGenerator(Behavioral) PORT MAP(
		sampling_tick => s_tick,
		clk => clk,
		reset => reset 
	);

end Behavioral;

