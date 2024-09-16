.model small
.data
array DB 'm','a','a','m'


.code 
main proc
mov ax,ds
mov ds,ax

mov ax,0h
mov bx,offset array
mov ax,bx

push ax
push cx
call palindrome

  
     
     
     
.exit 

main endp

palindrome proc
    
    push bp
    mov bp,sp
    mov cx,[bp+4]
    mov bx,[bp+6]
    
    ret
    
    palindrome endp



