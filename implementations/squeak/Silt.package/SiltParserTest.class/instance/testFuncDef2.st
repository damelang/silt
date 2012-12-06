tests
testFuncDef2

	self triples: {
		{self funcDefString2. #funcDef.
			
	{#funcDef.
		self build: {'@main'. #globalLabel}.
		self build: {{'i0'. #regRef}. {'w0'. #regRef}}.
		{
			self build: {'COPY @hello_string -> w1'. #instructionStmt}.
			self build: {'SYSCALL 0x04 0x01 w1 0x0A'. #instructionStmt}.
			self build: {'COPY 0x0A -> i1'. #instructionStmt}.
			self build: {'RETURN i1'. #instructionStmt}}}}}
