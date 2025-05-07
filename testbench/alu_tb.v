`timescale 1ns / 1ps

module alu_tb;

    // Declare testbench variables (inputs/outputs for ALU)
    reg  [31:0] a, b;
    reg  [2:0]  alu_control;
    wire [31:0] result;

    // Instantiate the ALU module
    alu uut (
        .a(a),
        .b(b),
        .alu_control(alu_control),
        .result(result)
    );

    initial begin
        // Test 1: ADD
        a = 32'd10; b = 32'd5; alu_control = 3'b000;
        #10 $display("ADD: 10 + 5 = %d", result);

        // Test 2: SUB
        a = 32'd20; b = 32'd8; alu_control = 3'b001;
        #10 $display("SUB: 20 - 8 = %d", result);

        // Test 3: AND
        a = 32'b10101010; b = 32'b11001100; alu_control = 3'b010;
        #10 $display("AND: %b", result);

        // Test 4: OR
        a = 32'b10101010; b = 32'b11001100; alu_control = 3'b011;
        #10 $display("OR: %b", result);

        // Test 5: XOR
        a = 32'b10101010; b = 32'b11001100; alu_control = 3'b100;
        #10 $display("XOR: %b", result);

        // Test 6: SLL
        a = 32'b00000000000000000000000000000001; b = 32'd3; alu_control = 3'b101;
        #10 $display("SLL: 1 << 3 = %b", result);

        $finish; // End simulation
    end

endmodule
