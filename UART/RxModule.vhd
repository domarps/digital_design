----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    22:59:05 06/25/2014 
-- Design Name: 
-- Module Name:    RxModule - Behavioral 
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

entity RxModule is
	generic (
	DBIT: integer := 8;
	SB_TICK: integer := 16
	);
	
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           s_tick : in  STD_LOGIC;
           rx_done_tick : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0));
end RxModule;

architecture Behavioral of RxModule is
type state_type is (idle, start, data, stop);
signal state_reg, state_next : state_type;  
signal s_reg, s_next : unsigned (3 downto 0);
signal n_reg, n_next : unsigned (2 downto 0);

signal b_reg, b_next : std_logic_vector (7 downto 0);

begin	
		process (clk, reset)
		begin
			if ( reset = '1')  then
					state_reg <= idle;
					s_reg <= (others => '0');  -- counts the number of sampling ticks. Counts to 7 in START state,15 in DATA and 1 in STOP
					n_reg <= (others => '0');   -- counts the number of data bits scanned in DATA state.
					b_reg <= (others => '0');
				elsif (clk'event and clk = '1') then
					state_reg <= state_next;
					s_reg <= s_next;
					n_reg <= n_next;
					b_reg <= b_next;	
			end if;	
		end process;	
-- Next state logic

	process (state_reg,s_reg,n_reg,s_tick, rx,b_reg)
	begin
		state_next <= state_reg;
		s_next <= s_reg;
		n_next <= n_reg;
		b_next <= b_reg;
		rx_done_tick <= '0';
		case state_reg is 
				when idle =>
						if (rx = '0') then
									state_next <= start;
									s_next <= ( others => '0');
						end if;

				when start => 
								if (s_tick = '1') then
									 if s_reg = 7 then
												state_next <= data;
												s_next <= (others => '0');
												n_next <= (others => '0');
									else
												s_next <= s_reg + 1;
									end if;
								end if ;

				when data =>
								if (s_tick = '1') then
									 if s_reg = 15 then
												s_next <= (others => '0');
												b_next <= rx & b_reg(7 downto 1);
													if (n_reg = (DBIT - 1 ))then
															state_next <= stop;
													else
															n_next <= n_reg + 1;
													end if;
													
									else
												s_next <= s_reg + 1;
									end if;
								end if ;
								
				when stop =>
						if (s_tick = '1') then
									 if (s_reg = (SB_TICK - 1)) then
												state_next <= idle;
												rx_done_tick <= '1';
									else
												s_next <= s_reg + 1;
									end if;
								end if ;
				end case;				
	end process;
	dout <= b_reg;
end Behavioral;

