// Module Name: JK_flip_flop
// Behavioral Modeling 
module JK_flip_flop(Q, Q_bar, J, K, clk, reset);
	input J, K;
	input clk, reset;
	output reg Q;
	output Q_bar;
	
	always @(posedge clk, negedge reset)
		if (reset == 1) Q <= 1'b0;
		else
			begin
				case ({J, K})
					2'b00: Q <= Q;		// No change
					2'b01: Q <= 1'b0;	// Reset
					2'b10: Q <= 1'b1;	// Set
					2'b11: Q <= ~Q;		// Toggle
				endcase
			end
			
	assign Q_bar = ~Q;
endmodule