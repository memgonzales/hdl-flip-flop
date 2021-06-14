// Module Name: T_flip_flop
// Behavioral Modeling 
module T_flip_flop(Q, Q_bar, T, clk, reset);
	input T;
	input clk, reset;
	output reg Q;
	output Q_bar;
	
	always @(posedge clk, negedge reset)
		if (reset == 1) Q <= 1'b0;
		else
			begin
				case (T)
					1'b0: Q <= Q;		// No change
					1'b1: Q <= ~Q;		// Toggle
				endcase
			end
			
	assign Q_bar = ~Q;
endmodule