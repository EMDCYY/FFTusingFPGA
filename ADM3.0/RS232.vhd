library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RS232 is
port(
     clk       :  in std_logic;
	  uart_cs   :  in std_logic := '0';
	  phase     :  in std_logic_vector(25 downto 0) := "00000000000000000000000000";--"00011000011101111110110011";
	  txd       : out std_logic := '0'
	  );
end RS232;

architecture Behavioral of RS232 is
--baud			 
SIGNAL set_baud: INTEGER := 511; 
SIGNAL cnt_baud: INTEGER RANGE 0 TO 217 := 0;
SIGNAL lgc_baud: STD_LOGIC := '1';

signal uart_begin   : STD_LOGIC := '0';
signal uart_done    : STD_LOGIC := '0';
SIGNAL uart_done_cnt: INTEGER RANGE 0 TO 250 := 0;
--transfer
TYPE   tstates IS (t_idle, t_start, t_shift, t_stop);
SIGNAL tstate: tstates:= t_idle;
SIGNAL txdbuf: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL   txds: STD_LOGIC := '1';             --transfer buffer
SIGNAL bitcnt: INTEGER RANGE 0 TO 8 := 0;
SIGNAL bytcnt: INTEGER RANGE 0 TO 8 :=0;

BEGIN
PROCESS(clk)
BEGIN
set_baud <=216;             --50mHZ / (115200*2) = 217
IF (clk'EVENT AND clk = '0') THEN
    IF (cnt_baud = set_baud) THEN
        cnt_baud <= 0;
        lgc_baud <= NOT lgc_baud;   --lgc_baud = '1' means to receive or transfer
    ELSE
	     cnt_baud <= cnt_baud + 1;
	 END IF;
END IF;
END PROCESS;

--Transfer
PROCESS(lgc_baud)
BEGIN
 IF (lgc_baud'EVENT AND lgc_baud = '1') THEN
     IF (uart_begin = '1' ) THEN
     CASE tstate IS
     WHEN t_idle =>
          bitcnt <= 0;
			 uart_done <= '0';
			 txdbuf <= "00000000";
	       if (bytcnt > 3) then
			     bytcnt <= 0;
              txds <= '1'; 
			     uart_done <= '1';
				  tstate <= t_idle;
				else
				  tstate <= t_start;
				end if;
 		
       WHEN t_start =>
            txds <= '0';
            CASE bytcnt IS
            WHEN 0 => txdbuf <= ('0','0','0','0','0','0',phase(25),phase(24));
            WHEN 1 => txdbuf <=  phase(23 downto 16);
				WHEN 2 => txdbuf <=  phase(15 downto 8);
				WHEN 3 => txdbuf <=  phase(7 downto 0);
            WHEN OTHERS => txdbuf <= "10101010";
            END CASE;
            tstate <= t_shift;
 
       WHEN t_shift =>
            IF ( bitcnt = 8 ) THEN
                 bitcnt <= 0;
					  bytcnt <= bytcnt + 1;
                 txds <= '1';
					  tstate <= t_idle;
            ELSE
                txds <= txdbuf( bitcnt );
                bitcnt <= bitcnt + 1;
					 tstate <= t_shift;
            END IF;
       
        WHEN OTHERS => tstate <= t_idle;
        END CASE;
	  END IF;
    txd <= txds;
  END IF;
END PROCESS;

process(CLK)
begin
if(CLK'event and CLK='1') then
   if(uart_cs='1') then
	   uart_begin <= '1';
	elsif(uart_done = '1') then
	   if (uart_done_cnt >136) then
			 uart_begin <= '0';
			 uart_done_cnt <= 0;
		else 
		    uart_done_cnt <= uart_done_cnt + 1;
		end if;
	END IF;
End if;
end process;
end Behavioral;

