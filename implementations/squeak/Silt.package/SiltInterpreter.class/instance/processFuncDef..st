initialization
processFuncDef: func
	| insts |
	insts := func fourth.
	insts withIndexDo: [:inst :index |
		inst third ifNotNilDo: [:label |
			(localLabels at: func ifAbsentPut: [Dictionary new])
				at: (self getLabelOfLocalLabel: label) put: index]].
	^ func
