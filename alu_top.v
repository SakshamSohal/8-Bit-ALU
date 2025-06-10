`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 12:24:45
// Design Name: 
// Module Name: alu_top
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


module alu_top (
    input  wire [7:0] A, B,      
    input  wire [2:0] Opcode,    
    output wire [7:0] Result,   
    output wire Zero,           
    output wire Carry            
);

    // Instantiate ALU module
    alu my_alu (
        .A(A),
        .B(B),
        .Opcode(Opcode),
        .Result(Result),
        .Zero(Zero),
        .Carry(Carry)
    );

endmodule


   
