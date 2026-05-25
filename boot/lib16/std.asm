
; ==================================
; NARM Boot library
; File : std.asm
; purpos : Basic 16-bit helprt function
; Mode : Real Mode (16bit)
; 
; ==================================

bits 16
; ==== Print with BIOS =====
; SI -> address of the first letter of the string 
; screen <- print the text
; varibles : AH, AL 
; -------------------------
print:
	mov ah, 0Eh ; service print one char BIOS 
	.loop:
		lodsb 
		cmp al, 0 ; if al == '\0'
		jz .return ; jmp if zero 
		int 10h ; interrupte for screen BIOS 
		jmp .loop ; jmp to loop
	.return:
		ret ; return of addres in stack
; =========================