module simple_pwm( 
		// 
		// This section describes the I/O for the module
		//
		input clock, // single bit-wide input
		// input [3:0] pwmValue // Register for controlling the duty cycle
		output pwmOUT // single output
	); 

	// 
	// This section behavior of the simple_pwm module
	//
	reg [3:0] counter; // 4-bit wide register used for counting
	reg [3:0] pwmValue; 

	initial
	begin
		pwmValue <= 4'b1111;  // 
	end

	always @(posedge clock) // Always on the positive edge of 'clock'
	begin
		counter <= counter + 1'b1; // Set the counter register to counter + 1bit
	end
	assign pwmOUT = (pwmValue>counter); // a comparator for if the pwmValue is greater than counter
endmodule
