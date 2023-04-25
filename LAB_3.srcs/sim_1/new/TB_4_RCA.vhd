----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2023 03:07:23 PM
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is
COMPONENT RCA_4
    PORT( A0, A1, A2, A3, B0, B1, B2, B3, C_in : IN STD_LOGIC;
          S0, S1, S2, S3, C_out                : OUT STD_LOGIC);
END COMPONENT;

signal a0, a1, a2, a3, b0, b1, b2, b3, c_in, s0, s1, s2, s3, c_out : std_logic;

begin
UTT: RCA_4 PORT MAP(
    A0 => a0,
    A1 => a1,
    A2 => a2,
    A3 => a3,
    B0 => b0,
    B1 => b1,
    B2 => b2,
    B3 => b3,
    C_in => c_in,
    S0 => s0,
    S1 => s1,
    S2 => s2,
    S3 => s3,
    C_out => c_out
);

process
begin
 a0 <= '0';
 a1 <= '1';
 a2 <= '1';
 a3 <= '0'; -- set initial values
 b0 <= '1';
 b1 <= '0';
 b2 <= '1';
 b3 <= '0';
 c_in <= '0';
 WAIT FOR 100 ns; -- after 100 ns change inputs
 a2 <= '0';
 b0 <= '0';
 b3 <= '1';
 WAIT FOR 100 ns; --change again
 a3 <= '1';
 b0 <= '1';
 WAIT FOR 100 ns; --change again
 a2 <= '1';
 b1 <= '1';
 WAIT FOR 100 ns; --change again
 b0 <= '0';
 b3 <= '0';
 WAIT FOR 100 ns; --change again
 b0 <= '1';
 a1 <= '0';
 WAIT FOR 100 ns; --change again
 b2 <= '0';
 WAIT FOR 100 ns; --change again
 a0 <= '1';
 b1 <= '0';
 b2 <= '1';
 b3 <= '1';
 WAIT;
end process;

end Behavioral;
