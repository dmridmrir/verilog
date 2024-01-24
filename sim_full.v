`timescale 10ns/1ps
module tb_full_adder;

	reg X,Y,CARRY_IN;
	wire SUM,CARRY_OUT;

	Full_Adder mFull(
		.SUM(SUM),
		.CARRY_OUT(CARRY_OUT),
		.X(X),
		.Y(Y),
		.CARRY_IN(CARRY_IN)
	);
	initial
	begin
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	X = 1'b0; Y = 1'b0; CARRY_IN = 1'b0;
	#10
	$finish;
	end

endmodule
