`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 11:12:25
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module alu(
    input wire [7:0] A, B,      
    input wire [2:0] Opcode,    
    output reg [7:0] Result,   
    output reg Zero,           
    output reg Carry            
);
    
 always @(*) begin
        Carry = 0;  
        case (Opcode)
            3'b000: {Carry, Result} = A + B;  
            3'b001: {Carry, Result} = A - B;  
            3'b010: Result = A & B;           
            3'b011: Result = A | B;           
            3'b100: Result = A ^ B;          
            3'b101: Result = ~A;             
            3'b110: Result = A << 1;          
            3'b111: Result = A >> 1;          
            default: Result = 8'b00000000;    
        endcase
        Zero = (Result == 8'b00000000) ? 1'b1 : 1'b0;
    end
endmodule

