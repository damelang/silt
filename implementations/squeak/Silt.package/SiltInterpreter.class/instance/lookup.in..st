support
lookup: ref in: registers
	ref first = #globalLabel ifTrue: [^ globalLabels at: ref second].
	ref first = #literal ifTrue: [^ self lookupLiteral: ref].
	^ self getRegister: ref in: registers