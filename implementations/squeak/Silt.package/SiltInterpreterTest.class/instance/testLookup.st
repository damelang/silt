tests
testLookup
	| vm hello |
	vm := SiltInterpreter new.
	hello := SiltParser
		matchAll: SiltParserTest basicNew helloWorldString
		with: #start.

	vm preprocess: hello.
	self assert: (vm lookup: {#globalLabel. 'hello_string'} in: nil or: nil) = 0.
