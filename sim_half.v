`timescale 10ns/1ps
module tb_half_adder;

	reg X,Y;
	wire SUM,CARRY;

	Half_Adder mhalf(
		.SUM(SUM),
		.CARRY(CARRY),
		.X(X),
		.Y(Y)
	);
	initial
	begin
	X = 1'b0; Y = 1'b0;
	#10
	X = 1'b0; Y = 1'b1;
	#10
	X = 1'b1; Y = 1'b0;
	#10
	X = 1'b1; Y = 1'b1;
	#10
	$finish;
	end
endmodule

