module alu (
    input  wire [31:0] a,             // First operand
    input  wire [31:0] b,             // Second operand
    input  wire [2:0]  alu_control,   // ALU control signal
    output reg  [31:0] result         // ALU result
);

    always @(*) begin
        case (alu_control)
            3'b000: result = a + b;         // ADD
            3'b001: result = a - b;         // SUB
            3'b010: result = a & b;         // AND
            3'b011: result = a | b;         // OR
            3'b100: result = a ^ b;         // XOR
            3'b101: result = a << b[4:0];   // SLL (use lower 5 bits for shift)
            default: result = 32'b0;        // Default case: output zero
        endcase
    end

endmodule
