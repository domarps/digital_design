----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    22:54:39 05/22/2014 
-- Design Name: 
-- Module Name:    Adder - Behavioral 
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder is
	generic (
				        N :integer := 4
						  );
	
    Port ( a : in  STD_LOGIC_VECTOR (N-1 downto 0);
					b : in  STD_LOGIC_VECTOR (N-1 downto 0);
           sum : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Adder;

architecture Behavioral of Adder is
	signal max,min: std_logic_vector(N-2 downto 0);
	signal sign : std_logic;

begin
				max <= a(N-2 downto 0) when a(N-2 downto 0) > b(N-2 downto 0) else
								    b(N-2 downto 0);

				min <= a(N-2 downto 0) when a(N-2 downto 0) < b(N-2 downto 0) else
								    b(N-2 downto 0);
				
				sign	<= a(N-1) when max = a(N-2 downto 0) else
									b(N-1);

				sum <=  std_logic_vector(sign  &  (unsigned ((a(N-2 downto 0) )) + unsigned(b(N-2 downto 0))))  when a(N-1) = b(N-1) else
									std_logic_vector(sign  &  (unsigned ((a(N-2 downto 0) )) - unsigned(b(N-2 downto 0))))  ;
				
end Behavioral;

