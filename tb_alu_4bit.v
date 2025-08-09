`timescale 1ns/1ps
module tb_alu_4bit;

    reg [3:0] A, B;
    reg [2:0] op;
    wire [3:0] Y;
    wire carry;

    alu_4bit uut (.A(A), .B(B), .op(op), .Y(Y), .carry(carry));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, tb_alu_4bit);

        A = 4'b0101; B = 4'b0011;

        op = 3'b000; #10; // Add
        op = 3'b001; #10; // Sub
        op = 3'b010; #10; // AND
        op = 3'b011; #10; // OR
        op = 3'b100; #10; // XOR

        $finish;
    end

endmodule
