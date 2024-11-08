// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm
// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//Multiplies R0 and R1 
//Store the Value:

@R2
M=0 //product

@R0 
D=M

(LOOP_START)

    @R0
    D=M

    @DONE
    D;JEQ

    @R1
    D=M
    
    @R2
    D=D+M
    M=D

    @R0
    M=M-1

    @LOOP_START
    0;JMP

(DONE)
    @END
    0;JMP
    
(END)

 
