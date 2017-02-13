module adder_tb; 
// Inputs 
reg [3:0] A; 
reg [3:0] B; 
reg Cin; 
// Outputs 
wire [3:0] Sum; 
wire Cout; 
// Instantiate the Unit Under Test (UUT) 
ripple_adder_4bit uut ( 
.Sum(Sum), 
.Cout(Cout), 
.A(A), 
.B(B), 
.Cin(Cin) 
); 
initial begin 
// Initialize Inputs 
A = 0; 
B = 0; 
Cin = 0; 
// Wait 100 ns for global reset to finish 
#100; 
// Add stimulus here 
A=4'b0000;B=4'b0000;Cin=1'b0; 
#105 A=4'b0001;B=4'b001;Cin=1'b0; 
#110 A=4'b0010;B=4'b001;Cin=1'b0; 
#115 A=4'b0011;B=4'b001;Cin=1'b0; 
#120 A=4'b0100;B=4'b001;Cin=1'b0; 
#125 A=4'b1111;B=4'b000;Cin=1'b0; 
#130 A=4'b1111;B=4'b001;Cin=1'b0; 
#135 A=4'b1111;B=4'b111;Cin=1'b1; 
#140 A=4'b0000;B=4'b000;Cin=1'b0;
end 
initial begin 
$dumpfile("adder.vcd"); 
$dumpvars; 
end 
endmodule
