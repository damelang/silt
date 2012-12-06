initialization
processFuncDef: func
	| insts |
	insts := func fourth.
	insts withIndexDo: [:inst :index |
		inst third ifNotNilDo: [:label |
			(localLabels at: func ifAbsentPut: [Dictionary new])
				at: label put: index]].
	^ func
