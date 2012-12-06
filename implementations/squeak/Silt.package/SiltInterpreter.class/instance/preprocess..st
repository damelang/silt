initialization
preprocess: program
	program do: [:def |
		globalLabels at: (self getLabelOf: def)
			put: (def first = #funcDef
				ifTrue: [self processFuncDef: def]
				ifFalse: [self processDataDef: def])]
