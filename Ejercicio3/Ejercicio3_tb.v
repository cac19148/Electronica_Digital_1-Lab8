module Ejercicio3_tb();

reg [3:0]A; reg [3:0]B; reg [2:0]sel;
wire [3:0]Y;

ALU A1 (A, B, sel, Y);

initial begin

    #1 $display("\n");
	$display("Ejercicio 3");
    $display(" A     B   Sel  | Y");
    $display("---------------------");
    $monitor("%b %b %b  |%b", A, B, sel, Y);
	
	//Prueba de AND 
	sel = 0; A = 1; B = 1;
	#1 B = 7;
	#1 A = 5;
	#1 B = 15;
	#1 A = 15;
	//Prueba de OR
	#1 sel = 1; A = 0; B = 0;
	#1 A = 15;
	#1 A = 0;
	#1 B = 15;
	#1 A = 15;
	//Prueba de Suma
	#1 sel = 2; A = 0; B = 0;
	#1 A = 1; B = 1;
	#1 A = 6; B = 4;
	#1 A = 1; B = 15;
	#1 A = 14; B = 1;
	//Prueba de Sel=3
	#1 sel = 3; A = 15; B = 15;
	#1 A = 1; B = 1;
	#1 A = 7; B = 5;
	//Prueba de A AND ~B
	#1 sel = 4; A = 0; B = 0;
	#1 A = 15;
	#1 B = 15;
	#1 A = 0;
	#1 A = 8; B = 7;
	//Prueba de A OR ~B
	#1 sel = 5; A = 0; B = 0;
	#1 B = 15;
	#1 A = 15;
	#1 B = 0;
	#1 A = 8; B = 8;
	//Prueban de Resta
	#1 sel = 6; A = 0; B = 0;
	#1 A = 10; B = 3;
	#1 A = 15; B = 11;
	#1 A = 9; B = 9;
	#1 A = 2; B = 1;
	//Prueba Menor Que
	#1 sel = 7; A = 0; B = 0;
	#1 A = 1; B = 1;
	#1 A = 15; B = 15;
	#1 A = 1; B = 15;
	#1 A = 7; B = 11;
	#1 A = 13; B = 10;
	#1 A = 5; B = 1;
	
  end 
  
  initial
#41 $finish; 

initial begin
    $dumpfile("Ejercicio3_tb.vcd");
    $dumpvars(0, Ejercicio3_tb);
end

endmodule 