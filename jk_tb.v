// Module Name: JK_flip_flop_tb
// Test Bench
module JK_flip_flop_tb();
	reg[1:0] t_A;
	reg t_clk, t_reset;
	wire t_Q, t_Q_bar;
	integer i;
	
	JK_flip_flop dut(t_Q, t_Q_bar, t_A[1], t_A[0], t_clk, t_reset);
	
	initial
		begin
			t_clk = 1'b0;
			forever #10 t_clk = ~t_clk;
		end
		
	initial
		begin
			t_reset = 1'b1;
			#12 t_reset = 1'b0;
		end
	
	initial
		begin
			t_A = 2'b00;
			for (i = 0; i < 16; i = i + 1)
				begin
					#20 t_A = i;
				end
		end
		
	initial
		begin
			$monitor("time = %0d, clk = %b, reset = %b, J = %b, K = %b, Q = %b, Q_bar = %b", $time, t_clk, t_reset, t_A[1], t_A[0], t_Q, t_Q_bar);
			$dumpfile("jk.vcd");
			$dumpvars();
		end
		
	initial #300 $finish;
endmodule