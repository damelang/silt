tests
testMemory
	| vm memory |
	vm := SiltInterpreter new.
	memory := vm instVarNamed: 'memory'.

	vm store: 16rFFFE of: 's' into: 16r100.
	self assert: (memory at: 16r100 + 1) = 16rFE.
	self assert: (memory at: 16r101 + 1) = 16rFF.
	self assert: (vm fetchValueOf: 's' from: 16r100) = 16rFFFE.

	vm store: (FloatArray with: 42.5) of: 'f' into: 16r200.
	self assert: (vm fetchValueOf: 'f' from: 16r200) first = 42.5.

	vm store: 42.5 of: 'd' into: 16r300.
	self assert: (vm fetchValueOf: 'd' from: 16r300) = 42.5.
