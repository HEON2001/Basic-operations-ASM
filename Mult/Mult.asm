// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// R0 = R1 * R2

// Initialize R0 to 0

@R3
M=0
@R1
D=M
@END
D;JEQ
@R2
D=M
@END
D;JEQ
@NEG
D;JLT

(LOOP)
@R1
D=M
@R3
M=M+D
@R2
M=M-1
D=M
@LOOP
D;JGT
@END
0;JMP

(NEG)
@R1
D=M
@R3
M=M-D
@R2
M=M+1
D=M
@NEG
D;JLT
(END)
@R3
D=M
@R0
M=D
