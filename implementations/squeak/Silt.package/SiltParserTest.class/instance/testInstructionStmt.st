tests
testInstructionStmt

	self triples:
		{
			{'.loop: ADD i0 0x20 -> i2'	.#instructionStmt.		 #(instruction 'add' (localLabel 'loop') ((regRef 'i' '0') (#literal 'b' '0x20')) (regRef 'i' '2'))}.
			{'JUMP .loop'				.#instructionStmt.		 #(instruction  'jump' nil ((localLabel 'loop')) nil)}.
	}.
