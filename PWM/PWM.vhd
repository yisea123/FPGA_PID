LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000;	--system clock frequency in Hz
      pwm_freq        : INTEGER := 25_000;    	--PWM switching in Hz
      bits_resolution : INTEGER := 3);          --resolution of PWM in bits
  PORT(
      clk       : IN  STD_LOGIC;                                    --system clock (50MHz on Cyclone III DE3)
      duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0); --duty cycle of PWM (0 to 2^resolution -1)
      pwm_out   : OUT STD_LOGIC);          								  --pwm output
END pwm;

ARCHITECTURE simple_pwm OF pwm IS
  CONSTANT  period			:	INTEGER                    := sys_clk/pwm_freq;	--Clock pulses per PWM periods
  SIGNAL  	count				:	INTEGER RANGE 0 to period-1:= 0;						--Count of Clock pulses during a period of PWM
  SIGNAL 	s					:	STD_LOGIC						:='0';					--Output buffer, for debugging	
BEGIN
	PROCESS(clk)
		VARIABLE duty_prop		:	INTEGER RANGE 0 to period-1:= 0;						--Duty cycle mapped from resolution to period size(cf first line of process)
		VARIABLE	duty_prop_new	:	INTEGER RANGE 0 to period-1:= 0;						--Buffer, to only update duty cycle after a period
	BEGIN
		IF rising_edge(clk) THEN
			duty_prop_new := (conv_integer(duty))*(period-1)/(2**bits_resolution-1);	--duty cycle proportionnal to period
			IF(count = period - 1) THEN																--end of period reached
				count <= 0;																					--reset counter
			ELSE
				count <= count + 1;																		--update counter
			END IF;
			IF(count=0) THEN duty_prop := duty_prop_new; END IF;	--Update duty cycle value at the begginning of each periods
			IF(count<duty_prop) THEN										--Begginning of period, until duty cycle value: 1
				s<='1';
			ELSE
				s<='0';															--Rest of the period: 0
			END IF;			
		END IF;
	END PROCESS;
	pwm_out<=s;	--Actual Output
END ARCHITECTURE simple_pwm;
