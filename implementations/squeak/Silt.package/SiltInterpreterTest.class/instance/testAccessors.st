tests
testAccessors
	| vm funcDef |
	vm := SiltInterpreter new.
	funcDef := self build: {
'@hello (i0 w0):
	RETURN i0
'. #funcDef}.

	self assert: (vm getFormalArguments: funcDef) = {{#regRef. 'i'. '0'}. {#regRef. 'w'. '0'}}.
	self assert: (vm getInstructions: funcDef) = #((instruction 'return' nil ((regRef 'i' '0')) nil)).
	self assert: (vm getLabelOf: funcDef) = 'hello'.
	self assert: (vm getOpCode: (vm getInstructions: funcDef) first) = 'return'.

	self assert: (vm getRegIndexOf: {#regRef. 'w'. '1'}) = 1.
	self assert: (vm getRegTypeOf: {#regRef. 'w'. '1'}) = 'w'.
	self assert: (vm getSrcOperands: (self build: {'COPY @hello_string -> w1'. #instructionStmt})) = #((globalLabel 'hello_string')).
	self assert: (vm getDstRegister: (self build: {'COPY @hello_string -> w1'. #instructionStmt})) = {#regRef. 'w'. '1'}.
