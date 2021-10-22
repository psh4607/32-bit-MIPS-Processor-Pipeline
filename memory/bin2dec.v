`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:10 05/20/2021 
// Design Name: 
// Module Name:    bin2dec 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bin2dec(
    input [7:0] bin, 
    output integer dec
    );
    
     integer i;   
    
        always @(bin) begin
            dec = 0; //initialize dec to zero.
            for (i = 0; i < 8; i = i+1)begin //run for 32 iterations
						if(bin[i] == 1)begin
							dec = dec + 2**i;
						end
            end
        end     

endmodule 