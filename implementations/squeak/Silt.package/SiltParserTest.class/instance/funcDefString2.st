support
funcDefString2
	^ '@main (i0 w0):
	COPY @hello_string -> w1
	SYSCALL 0x04 0x01 w1 0x0A
	COPY 0x0A -> i1
	RETURN i1
'
