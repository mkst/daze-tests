.model small
.stack 100h
.data
message db "MASM small smoke test$"
records db 4096 dup (0)
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset message
    mov ah, 9
    int 21h
    mov ax, 4c00h
    int 21h
main endp
end main
