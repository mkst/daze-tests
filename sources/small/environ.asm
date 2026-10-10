.model small
.stack 100h

.data
  varname db "FOO=",0

.code

main proc
  mov ax, @data
  mov ds, ax

  ; ES = environment segment from PSP:2Ch
  mov ah, 62h
  int 21h              ; BX = PSP segment

  mov es, bx
  mov ax, es:[2Ch]
  mov es, ax

  xor di, di            ; ES:DI -> current environment string

next_var:
  ; End of environment?
  cmp byte ptr es:[di], 0
  je not_found

  push di
  mov si, offset varname

compare_name:
  mov al, [si]
  cmp al, 0
  je found              ; matched "FOO="

  cmp al, es:[di]
  jne no_match

  inc si
  inc di
  jmp compare_name

no_match:
  pop di

skip_string:
  cmp byte ptr es:[di], 0
  je skipped
  inc di
  jmp skip_string

skipped:
  inc di
  jmp next_var

found:
  ; DI currently points at first character after "FOO="
  ; discard saved original DI
  add sp, 2

print_value:
  mov al, es:[di]
  cmp al, 0
  je done

  mov dl, al
  mov ah, 02h
  int 21h

  inc di
  jmp print_value

not_found:
done:
  mov ax, 4C00h
  int 21h

main endp
end main