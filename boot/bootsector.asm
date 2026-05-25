bits 16
org 7c00h

_start:
	mov si, text
	call print
	jmp $

%include "boot/lib16/std.asm"
   
text db "welcome to narm OS", 0
times 510-($-$$) db 0
dw 0xAA55