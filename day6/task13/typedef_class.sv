typedef XYZ;

module typedef_class;
	XYZ #(8'h3f, real)              xyz0;   // positional parameter override
	XYZ #(.ADDR(8'h60), .T(real))   xyz1;  	// named parameter override
endmodule

class XYZ #(parameter ADDR = 8'h00, type T = int);
endclass

