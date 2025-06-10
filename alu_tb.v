`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 11:34:53
// Design Name: 
// Module Name: alu_tb
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
/////////////////////////////////////////////////////////////////////////////////


module alu_tb;


    // Testbench variables
    reg [7:0] A, B;         // 8-bit inputs
    reg [2:0] Opcode;       // 3-bit opcode input
    wire [7:0] Result;      // 8-bit output
    wire Zero, Carry;       // Flags

    // Instantiate the ALU module
    alu uut (
        .A(A),
        .B(B),
        .Opcode(Opcode),
        .Result(Result),
        .Zero(Zero),
        .Carry(Carry)
    );

    // Test sequence
    initial begin
        // Monitor changes in variables
        $monitor("Time=%0t | A=%b, B=%b, Opcode=%b | Result=%b | Zero=%b | Carry=%b",
                 $time, A, B, Opcode, Result, Zero, Carry);

        // Test Addition (A + B)
        A = 8'b00001100; B = 8'b00000101; Opcode = 3'b000; #10;

        // Test Subtraction (A - B)
        A = 8'b00001100; B = 8'b00000101; Opcode = 3'b001; #10;

        // Test AND operation
        A = 8'b11001100; B = 8'b10101010; Opcode = 3'b010; #10;

        // Test OR operation
        A = 8'b11001100; B = 8'b10101010; Opcode = 3'b011; #10;

        // Test XOR operation
        A = 8'b11001100; B = 8'b10101010; Opcode = 3'b100; #10;

        // Test NOT operation
        A = 8'b11001100; Opcode = 3'b101; #10;

        // Test Left Shift
        A = 8'b00001100; Opcode = 3'b110; #10;

        // Test Right Shift
        A = 8'b00001100; Opcode = 3'b111; #10;

        // Test Zero flag condition
        A = 8'b00000000; B = 8'b00000000; Opcode = 3'b000; #10;

        // End simulation
        $finish;
    end

endmodule
 

