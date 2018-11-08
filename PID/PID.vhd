library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PID is
	port(
		k_p : IN integer range 0 to 1000;
		k_i : IN integer range 0 to 1000;
		k_d : IN integer range 0 to 1000;
		control_input : IN integer range -32768 to 32767;
		control_output : OUT integer range -255 to 255  --output duty cycle
	);
end PID;

architecture behavior of PID is
begin



end behavior;