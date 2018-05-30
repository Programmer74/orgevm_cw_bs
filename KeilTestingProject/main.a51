Cseg at 0h;
	ljmp _start
	var: db 0, 0
		
_stuff:
	reti	

_start:
	add A, #03h
	mov R0, #var
	add A, @R0
	rlc A
	push ACC
	lcall _stuff
	ajmp _end
_end: 
	nop
