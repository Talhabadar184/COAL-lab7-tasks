.model small
.data
A DB 2,2,2,2,2

B DB 2,2,2,2,2
C DB 5 DUP(?)
SIZE DB 5


 
.code
Main proc

MOV AX, @DATA
MOV DS, AX

MOV BX , OFFSET A
PUSH BX
MOV BX , OFFSET B
PUSH BX
MOV BX , OFFSET C
PUSH BX

PUSH 5
CALL SUM

POP BX
POP BX
POP BX
POP BX



.exit
Main endp


SUM PROC


PUSH BP
PUSH SI
PUSH CX
MOV BP, SP
 
MOV CX, [BP+8]
MOV BX, [BP+14]
MOV SI, [BP+12]
MOV DI, [BP+10]



LOOP1:

MOV AL, [BX]
ADD AL, [SI]
MOV [DI], AL
INC BX
INC SI
INC DI




LOOP LOOP1

POP BX
POP BX
POP BX





RET 
MOV SI, 0     





   

    
    
    
RET    
SUM ENDP