tests
testInstructionStmts
"
	self triples:
		{
			{
'.loop: ADD i0 0x20 -> i2
JUMP .loop
'			.#instructionStmt.		 #(instruction nil 'JUMP' (localLabel 'loop') nil)}.
	}.
"