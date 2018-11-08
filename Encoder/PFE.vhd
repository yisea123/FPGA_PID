library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity PFE is
generic(
	debounce_time : INTEGER:=500
	
);

port(
	CLK	 : IN STD_LOGIC;
	CHAN_A : IN STD_LOGIC;
	CHAN_B : IN STD_LOGIC;
	RAZ	 : IN STD_LOGIC;
	LED_A	 : OUT STD_LOGIC;
	LED_B	 : OUT STD_LOGIC;
	DIGIT_0: OUT STD_LOGIC_VECTOR(6 downto 0);
	DIGIT_1: OUT STD_LOGIC_VECTOR(6 downto 0);
	DIGIT_2: OUT STD_LOGIC_VECTOR(6 downto 0);
	DIGIT_3: OUT STD_LOGIC_VECTOR(6 downto 0);
	OUTPUT_LEDS : OUT STD_LOGIC_VECTOR(3 downto 0)
);
end;

architecture behavior of PFE is
SIGNAL count     : integer range -999 to 999
 :=0; --counter value
SIGNAL count_leds: STD_LOGIC_VECTOR(3 downto 0):="0000";
SIGNAL count_0   : integer range 0 to 9    :=0; --unit
SIGNAL count_1   : integer range 0 to 9    :=0; --dec
SIGNAL count_2   : integer range 0 to 9    :=0; --cent

SIGNAL timer : integer range 0 to debounce_time:=0;

SIGNAL A_CURR : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL B_CURR : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL A_LAST : STD_LOGIC;
SIGNAL B_LAST : STD_LOGIC;

SIGNAL DIR : STD_LOGIC;
--7 segment values:
CONSTANT Aff_0 : STD_LOGIC_VECTOR(6 downto 0) :="0000001";
CONSTANT Aff_1 : STD_LOGIC_VECTOR(6 downto 0) :="1001111";
CONSTANT Aff_2 : STD_LOGIC_VECTOR(6 downto 0) :="0010010";
CONSTANT Aff_3 : STD_LOGIC_VECTOR(6 downto 0) :="0000110";
CONSTANT Aff_4 : STD_LOGIC_VECTOR(6 downto 0) :="1001100";
CONSTANT Aff_5 : STD_LOGIC_VECTOR(6 downto 0) :="0100100";
CONSTANT Aff_6 : STD_LOGIC_VECTOR(6 downto 0) :="0100000";
CONSTANT Aff_7 : STD_LOGIC_VECTOR(6 downto 0) :="0001111";
CONSTANT Aff_8 : STD_LOGIC_VECTOR(6 downto 0) :="0000000";
CONSTANT Aff_9 : STD_LOGIC_VECTOR(6 downto 0) :="0000100";
CONSTANT Aff_minus : STD_LOGIC_VECTOR(6 downto 0) :="0111111";
CONSTANT Aff_none : STD_LOGIC_VECTOR(6 downto 0) :="1111111";

BEGIN
--PROCESS gerant le compte des ticks
CompteurTicks : PROCESS(CLK, RAZ)
BEGIN
	if RAZ = '0' then
		count<=0;
		count_leds<=(others=>'0');
		A_LAST<=CHAN_A;
		B_LAST<=CHAN_B;
		A_CURR<=(others=>CHAN_A);
		B_CURR<=(others=>CHAN_B);
		count_0<=0;
		count_1<=0;
		count_2<=0;
	elsif rising_edge(CLK)then
		A_CURR<=A_CURR(0)&CHAN_A;
		B_CURR<=B_CURR(0)&CHAN_B;
		if(((A_CURR(0) XOR A_CURR(1)) OR (B_CURR(0) XOR B_CURR(1)))='1') then -- changement des chans
			timer<=0;--reset
		elsif(timer=debounce_time) then
			A_LAST<=A_CURR(1);
			B_LAST<=B_CURR(1);
		else
			timer<=timer+1;
		end if;
		
		--pos:
		if(timer=debounce_time AND ((A_LAST XOR A_CURR(1)) OR (B_LAST XOR B_CURR(1)))='1') then
			DIR<=B_CURR(1) XOR A_LAST;
			if((B_LAST XOR A_CURR(1))='1')then
				count<=count+1;
				count_leds<=count_leds+1;
			else
				count<=count-1;
				count_leds<=count_leds-1;
			end if;
		end if;
		if(count<0)then
			count_2<=abs(count/100);
			count_1<=abs(count-count_2*100)/10;
			count_0<=abs(count-count_2*100 - count_1*10);
		else
			count_2<=abs(count/100);
			count_1<=abs(count-count_2*100)/10;
			count_0<=abs(count-count_2*100 - count_1*10);
		end if;
	end if;
END PROCESS;


--LEDs AFFICHANT L'ETAT DES PIN CHAN_A et CHAN_B
LED_A <= CHAN_A;
LED_B <= CHAN_B;
--ETAT DE LA DERNIERE TRANSITION (- = antitrigo)
DIGIT_3 <= Aff_minus when(count<0) else Aff_none; 
--AFFICHAGE DU DECOMPTE EN BINAIRE
OUTPUT_LEDS<=count_leds;


--AFFICHAGE DU COMPTE SUR 7SEGMENT, INUTILISE
with count_0 select
DIGIT_0 <= Aff_0 when(0),
			  Aff_1 when(1),
			  Aff_2 when(2),
			  Aff_3 when(3),
			  Aff_4 when(4),
			  Aff_5 when(5),
			  Aff_6 when(6),
			  Aff_7 when(7),
			  Aff_8 when(8),
           Aff_9 when(9);

with count_1 select
DIGIT_1 <= Aff_0 when(0),
			  Aff_1 when(1),
			  Aff_2 when(2),
			  Aff_3 when(3),
			  Aff_4 when(4),
			  Aff_5 when(5),
			  Aff_6 when(6),
			  Aff_7 when(7),
			  Aff_8 when(8),
           Aff_9 when(9);

with count_2 select
DIGIT_2 <= Aff_0 when(0),
			  Aff_1 when(1),
			  Aff_2 when(2),
			  Aff_3 when(3),
			  Aff_4 when(4),
			  Aff_5 when(5),
			  Aff_6 when(6),
			  Aff_7 when(7),
			  Aff_8 when(8),
           Aff_9 when(9);

END behavior;