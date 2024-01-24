module mux4_to_1(out,i0,i1,i2,i3,s1,s0);

//port declarations
	output wire out;
	input wire i0,i1,i2,i3;
	input wire s1,s0;

//internal wire declarations
	wire s1n, s0n;
	wire y0,y1,y2,y3;
//gate instantiations
	not (s1n,s1);
	not (s0n,s0);
	and (y0,i0,sln,s0n);
	and (y1,i1,s1n,s0);
	and (y2,i2,sl,s0n);
	and (y3,i3,sl,s0);
	or (out,y0,y1,y2,y3);

endmodule	
