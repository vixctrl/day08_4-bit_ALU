module alu_4bit (
    input [3:0] A,
    input [3:0] B,
    input [2:0] op,  // Operation select
    output reg [3:0] Y,
    output reg carry
);
    always @(*) begin
        case(op)
            3'b000: {carry, Y} = A + B;    // Addition
            3'b001: {carry, Y} = A - B;    // Subtraction
            3'b010: {carry, Y} = {1'b0, A & B}; // AND
            3'b011: {carry, Y} = {1'b0, A | B}; // OR
            3'b100: {carry, Y} = {1'b0, A ^ B}; // XOR
            default: {carry, Y} = 5'b00000;
        endcase
    end
endmodule
