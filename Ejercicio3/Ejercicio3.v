module ALU (input wire [3:0]A, input wire [3:0]B, input wire [2:0]Sel, output reg [3:0]Y); 
reg [4:0]C;
reg Menor;
	always @ (A or B or Sel) 
		case (Sel) 
			0 : Y = A & B; 
			1 : Y = A | B; 
			2 : begin
					C = A + B; 
					Y[0] = C[0];
					Y[1] = C[1];
					Y[2] = C[2];
					Y[3] = C[3];
				end
			3 : Y = 0;
			4 : Y = A & ~B;
			5 : Y = A | ~B;
			6 : begin
					C = A - B; 
					Y[0] = C[0];
					Y[1] = C[1];
					Y[2] = C[2];
					Y[3] = C[3];
				end
			7 : begin
					Menor = (A < B);
					if (Menor)
						begin
						Y = 4'b1111;
						end 
					else 
						begin
						Y = 0;
						end
				end
			default : $display("Error in Sel"); 
		endcase 
    
endmodule