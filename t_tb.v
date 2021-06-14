// Module Name: T_flip_flop_tb
// Test Bench
module T_flip_flop_tb();
	reg t_A;
	reg t_clk, t_reset;
	wire t_Q, t_Q_bar;
	integer i;
	
	T_flip_flop dut(t_Q, t_Q_bar, t_A, t_clk, t_reset);
	
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
			t_A = 1'b0;
			for (i = 0; i < 16; i = i + 1)
				begin
					#20 t_A = i;
				end
		end
		
	initial
		begin
			$monitor("time = %0d, clk = %b, reset = %b, T = %b, Q = %b, Q_bar = %b", $time, t_clk, t_reset, t_A, t_Q, t_Q_bar);
			$dumpfile("t.vcd");
			$dumpvars();
		end
		
	initial #300 $finish;
endmodule