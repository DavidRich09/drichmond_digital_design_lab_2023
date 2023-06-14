module PC_Logic 	

(
	input logic [3:0] rd,   
	input logic branch,
	input logic reg_w,	
	output logic pcs

);

	assign pcs = ((rd==4'd15)& reg_w)|branch;

endmodule