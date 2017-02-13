
adder.vcd: adder_tb.v adder.v
	iverilog -o adder adder.v adder_tb.v	
	vvp adder
	#yosys -p "synth_ice40 -blif adder.blif" adder.v
	#arachne-pnr -d 1k -p adder.pcf adder.blif -o adder.asc
	#icepack adder.asc adder.bin
	#gtkwave adder.vcd
	echo "run: gtkwave adder.vcd"

install:
	iceprog adder.bin

clean:
	rm -f adder.blif adder.txt adder.ex adder.bin
