module Contador12bits(input wire [11:0] Load, input clk, input enable, input reset, input set, output [11:0] Q);
reg Q;

always @(posedge clk or posedge reset or posedge set)  
			begin
				if(reset)
					begin
						Q <= 12'b000000000000; 
					end
				else if(set)
					begin
						Q <= Load; 
					end
				else if(enable == 1)
					begin
						Q <= Q+1;
					end
				else
					begin
						Q <= Q;
					end
						
			end
endmodule 
