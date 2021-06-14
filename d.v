// Module Name: D_flip_flop
// Behavioral Modeling 
module D_flip_flop(Q, Q_bar, D, clk, reset);
	input D;
	input clk, reset;
	output reg Q;
	output Q_bar;
	
	always @(posedge clk, negedge reset)
		if (reset == 1) Q <= 1'b0;
		else Q <= D;		// Follow input D
		
	assign Q_bar = ~Q;
endmodule