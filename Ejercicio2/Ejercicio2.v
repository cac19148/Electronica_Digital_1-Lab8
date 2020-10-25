module ROM4kx8 (input wire [11:0]Address, output wire [7:0]Data);           
	reg [11:0] ROM [0:4095] ;  
    
	assign Data = ROM[Address];

initial begin
  $readmemb("Lista.txt", ROM); 
end

endmodule