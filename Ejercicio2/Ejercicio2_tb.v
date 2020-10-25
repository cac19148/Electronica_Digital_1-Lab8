module Ejercicio2_tb();

reg [11:0]Address;
wire [7:0]Data; 

ROM4kx8 R1(Address, Data);

initial 
	begin
		
		#1 $display("");
		$display("Ejercicio 2");
		$display("  Address | Data ");
		$display("--------|------");
		$monitor("%d      | %d ", Address, Data);

		Address = 10;
		#1 Address = 25;
		#1 Address = 50;
		#1 Address = 75;
		#1 Address = 100;
		#1 Address = 33;
		#1 Address = 99;
		#1 Address = 21;
		#1 Address = 73;
		#1 Address = 245;
		

	end
 
initial
#11 $finish; 

initial begin
    $dumpfile("Ejercicio2_tb.vcd");
    $dumpvars(0, Ejercicio2_tb);
end

endmodule 