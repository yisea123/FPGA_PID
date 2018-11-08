LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 100_000;    --PWM switching frequency in Hz
      bits_resolution : INTEGER := 3;          --bits of resolution setting the duty cycle
      phases          : INTEGER := 1);         --number of output pwms and phases
  PORT(
      clk       : IN  STD_LOGIC;                                    --system clock
      duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0); --duty cycle
      pwm_out   : OUT STD_LOGIC);          --pwm outputs
END pwm;

ARCHITECTURE logic OF pwm IS
  CONSTANT  period     :  INTEGER                        := sys_clk/pwm_freq;  --number of clocks in one pwm period
  SIGNAL  count        :  INTEGER range 0 to period-1    := 0;                 --array of period counters
  SIGNAL   half_duty_new  :  INTEGER RANGE 0 TO period/2 := 0;                 --number of clocks in 1/2 duty cycle
  SIGNAL  half_duty    :  INTEGER range 0 to period/2    := 0;                 --array of half duty values (for each phase)ù
  SIGNAL s:STD_LOGIC:='0';
BEGIN
  PROCESS(clk)
  BEGIN
    IF(clk'EVENT AND clk = '1') THEN                                      --rising system clock edge
     half_duty_new <= conv_integer(duty)*period/(2**bits_resolution)/2;    --determine clocks in 1/2 duty cycle
	  IF(count = period - 1) THEN                                           --end of period reached
		 count <= 0;                                                         --reset counter
		 half_duty <= half_duty_new;                                         --set most recent duty cycle value
	  ELSE                                                                  --end of period not reached
		 count <= count + 1;                                                 --increment counter
	  END IF;
	  IF(count = half_duty) THEN                                       --phase's falling edge reached
		 s<= '0';                                                     --deassert the pwm output
	  ELSIF(count = period - half_duty) THEN                           --phase's rising edge reached
		 s<= '1';                                                     --assert the pwm output
	  END IF;
    END IF;
  END PROCESS;
pwm_out<=s;
END logic;
