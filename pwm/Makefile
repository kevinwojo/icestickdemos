
pwm.bin: pwm.v
	#iverilog -o pwm pwm.v pwm_tb.v	
	#vvp pwm
	yosys -p "synth_ice40 -blif pwm.blif" pwm.v
	arachne-pnr -d 1k -p pwm.pcf pwm.blif -o pwm.asc
	icepack pwm.asc pwm.bin

install:
	iceprog pwm.bin

clean:
	rm -f pwm.blif pwm.txt pwm.ex pwm.bin
