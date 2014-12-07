----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    19:45:32 07/02/2014 
-- Design Name: 
-- Module Name:    UART_Loopback_Top - Behavioral 
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

entity UART_Loopback_Top is
	generic (
	DBIT: integer := 8;
	SB_TICK: integer := 16
	);
	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           serial_in : in  STD_LOGIC;
           serial_out : out  STD_LOGIC);
end UART_Loopback_Top;

architecture Behavioral of UART_Loopback_Top is

signal initiateSend: STD_LOGIC;
signal dataBuff: STD_LOGIC_VECTOR(7 downto 0);
--signal byteCounter_reg,byteCounter_next : STD_LOGIC_VECTOR(1 downto 0);
--signal opcodeBuffer: STD_LOGIC_VECTOR (23 downto 0);

begin
Inst_Tx: entity work.Tx(Behavioral) PORT MAP(
		serial_out => serial_out,
		send_data =>initiateSend ,
		dataToBeSent => dataBuff  ,
		clk => clk,
		reset => reset 
	);

Inst_Rx: entity work.Rx(Behavioral) PORT MAP(
     clk => clk,
	  reset => reset,
	  rx=> serial_in,
	  rx_done_tick => initiateSend ,
	   dout => dataBuff 
);

end Behavioral;

