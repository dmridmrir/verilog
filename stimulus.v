`timescale 10ns/1ps

module tb_mux;

//variables to be connetced to MUX inputs

	reg IN0,IN1,IN2,IN3;
	reg S0,S1;
//variables to be connected to MUX outputs
	wire OUTPUT;

//DUT instantiation
	mux4_to_1 mymux (OUTPUT,IN0,IN1,IN2,IN3,S1,S0);

//simulations
	initial
	begin
		IN0 = 1'b1;
		IN1 = 1'b0;
		IN2 = 1'b1;
		IN3 = 1'b0;
		S1 = 1'b0; S0= 1'b0;
		#1
		S1 = 1'b0; S0= 1'b1;
		#1
		S1 = 1'b1; S0= 1'b0;
		#1
		S1 = 1'b1; S0= 1'b1;
	end

endmodule	