interpreter
syscallWith: arguments
	| string |
	arguments first = 4 ifTrue: [
		arguments second = 1 ifTrue: [
			string := (memory copyFrom: arguments third + 1 to: arguments third + 1 + arguments fourth) asString.
			
			console ifNil: [Transcript show: string] ifNotNil: [console add: string]].
		^ 0].
