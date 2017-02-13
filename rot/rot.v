module top(input clk, output D1);
	reg ready = 0;
	reg [23:0] divider;
	reg pwm = 50;
	reg light = 0;
	
	always @(posedge clk) begin
		if (divider == 12000000)
			begin
			 if (pwm < 
	end
	
	assign D1 = light;
endmodule // top
