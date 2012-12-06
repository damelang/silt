tests
testFuncDef
	self triples: {
		{self funcDefString. #funcDef.

		{#funcDef.
			self build: {'@main'. #globalLabel}.
			#().
			{
				self build: {'COPY @hello_string -> w1'. #instructionStmt}.
				self build: {'SYSCALL 0x04 0x01 w1 0x0A'. #instructionStmt}.
				self build: {'COPY 0x0A -> i1'. #instructionStmt}.
				self build: {'RETURN i1'. #instructionStmt}}}}}
