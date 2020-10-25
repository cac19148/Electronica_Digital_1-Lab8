module Ejercicio1_tb();

reg clk, enable, reset, set; 
reg [11:0]Load;
wire [11:0]Q; 

Contador12bits C1 (Load, clk, enable, reset, set, Q);

initial begin
	clk=1;
	forever #5 clk = ~clk;  
end 

initial begin

	#1 $display("");
	$display("Ejercicio 1");
    $display("  ENABLE | Q ");
    $display("-------|--");
    $monitor("    %d  | %d ", enable, Q);
	   
	#2 reset = 1; enable = 0; set = 0; Load = 12'b000000000000;
	#5 reset = 0;
	
	//Prueba del enable
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	
	//Prueba del load
	#10  reset = 0; enable = 0; set = 0; Load = 12'b010010100110;
    #10  reset = 0; enable = 0; set = 1; Load = 12'b010010100110;
    #10  reset = 0; enable = 1; set = 1; Load = 12'b010010100110;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b010010100110;
	#10  reset = 0; enable = 1; set = 0; Load = 12'b010010100110;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 0; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 0; set = 0; Load = 12'b111111111100;
    #10  reset = 0; enable = 1; set = 1; Load = 12'b111111111100;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	#10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
    #10  reset = 0; enable = 1; set = 0; Load = 12'b000000000000;
	
	
	#10 $display("");
 end
 
initial
#410 $finish; 

initial begin
    $dumpfile("Ejercicio1_tb.vcd");
    $dumpvars(0, Ejercicio1_tb);
end

endmodule 
	