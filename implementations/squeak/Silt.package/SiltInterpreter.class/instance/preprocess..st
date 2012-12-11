initialization
preprocess: program
	program do: [:def |
		globalLabels at: (self getLabelOfFuncDef: def)
			put: (def first = #funcDef
				ifTrue: [self processFuncDef: def]
				ifFalse: [self processDataDef: def])]
