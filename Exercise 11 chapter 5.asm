.386 
.model flat, stdcall 
.stack 4096 
ExitProcess PROTO, dwExitCódigo: DWORD 

N = 50 
.data 
array BYTE N DUP (0) 
K DWORD? 
.code 
main PROC 

    mov K, 2 
    call multiplesOfK 

    ; reinicialice la matriz a cero 
    MOV ECX, N 
    L2: 
        MOV BYTE PTR [ESI], 0 
        AGREGAR ESI, TIPO matriz 
    LOOP L2 
    mov K, 3 
    múltiplos de 

llamadaOfK INVOKE ExitProcess, 0 
múltiplos principales ENDP 

PROC PROCO 
    ; guardar todos los registros 
    push ECX 
    push ESI 
    push EBX 
    push EDX 

    MOV ESI, OFFSET array
    MOV ECX, N; array torcido 
    MOV EDX, 1; comparar índice de matriz 1 a 50 
    MOV EBX, K; múltiplo de K 
    L1: 
        CMP EBX, EDX 
        jne siguiente 

        ; se encontraron múltiples 
        MOV BYTE PTR [ESI], 1 
        ADD EBX, K; siguiente múltiplo de K 

        siguiente: 
        INC EDX 
        ADD ESI, TIPO array 
    Loop L1 

    ; recuperar todos los registros 
    pop EDX 
    pop EBX 
    pop ESI 
    pop ECX 
    ret 
múltiplosOfK ENDP 
END principal
