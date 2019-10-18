assume cs:code, ds:data, ss:stack

data segment
    dw 0123H, 0456H
data ends

stack segment
     dw  0, 0
stack ends

code segment
start:  mov ax, stack
        mov ss, ax
		mov sp, 16
		mov ax, data
		mov ds, ax
		push ds:[0]
		push ds:[2]
		pop ds:[2]
		pop ds:[0]
		
		mov ax, 4c00h
		int 32
ends code
end start