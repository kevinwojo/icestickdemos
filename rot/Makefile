
rot.bin: rot.v rot.pcf
	yosys -p "synth_ice40 -blif rot.blif" rot.v
	arachne-pnr -d 1k -p rot.pcf rot.blif -o rot.asc
	icepack rot.asc rot.bin

install:
	iceprog rot.bin

clean:
	rm -f rot.blif rot.txt rot.ex rot.bin
