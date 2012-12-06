tests
testHello
	| vm hello console |
	vm := SiltInterpreter new.
	console := OrderedCollection new.
	vm console: console.

	hello := SiltParser
		matchAll: SiltParserTest basicNew helloWorldString
		with: #start.

	vm run: hello.
	self assert: console first = 'hello world'.
