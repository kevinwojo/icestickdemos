module simple_pwm_tb(); 
    wire out;
    reg clock;
     
    always begin
 	#1 clock =!clock;
    end
     
    initial begin
 	//Initialize clock
 	clock = 0;
     
 //End simulation
 #10
 $finish;
     end
     
myModule simple_pwm (clock, out);
endmodule
 
module myModule (clk, pwm);
    input wire clk;
    output wire pwm;
    assign pwm = !clk;
endmodule
