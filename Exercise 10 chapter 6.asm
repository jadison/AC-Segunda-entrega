.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
byte1 BYTE 11111110b, 11011110b, 10001110b, 11101100b, 11001100b, 11001010b, 11001010b, 11001010b, 11000110b, 10001100b
byte2 BYTE 11111110b, 11011111b, 10001110b, 11101100b, 11001100b, 11001011b, 11001010b, 11001010b, 11000110b, 10001100b,11111110b, 11011110b
.code
 
main PROC
	mov esi, OFFSET byte1
	mov ecx, SIZEOF byte1
	
 
	mov esi, OFFSET byte2
	mov ecx, SIZEOF byte2
	

	
main ENDP
 
PFCheck PROC
; eax PF=1 verdadero PF=0 falso
; esi,ecx
	push esi
	push ecx
	sub ecx,1
	mov al,0
	xor al,0
 
	mov al,[esi]
 
	L1:
 
	inc esi
	xor al, [esi]
	mov bl, [esi]
	loop L1
 
 
	jp LPF1
	mov eax,0
	jmp LEND
	LPF1:
	mov eax,1
	LEND:
	pop ecx
	pop esi
	invoke ExitProcess,0
PFcheck ENDP
 
END main
