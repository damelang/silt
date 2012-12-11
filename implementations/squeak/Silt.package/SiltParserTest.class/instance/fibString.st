support
fibString
	^ '
@fib (i2):
    COPY 0x00 -> i0
    COMP i2 i0
    JUMP> .L1
    RETURN i0
.L1: COPY 0x01 -> i1
    COMP i2 i1
    JUMP!= .L2
    RETURN i1
.L2: SUB i2 i1 -> i2
    CALL @fib i2 -> i3
    SUB i2 i1 -> i2
    CALL @fib i2 -> i4
    ADD i3 i4 -> i5
    RETURN i5

@main ():
  COPY 0x0F -> i0
  CALL @fib i0 -> i0
  RETURN i0
'
