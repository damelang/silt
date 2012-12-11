support
lookup: ref in: registers or: locals
	ref first = #literal ifTrue: [^ self lookupLiteral: ref].
	ref first = #localLabel ifTrue: [^ locals at: (self getLabelOfLocalLabel: ref)].
	ref first = #globalLabel ifTrue: [^ globalLabels at: ref second].
	^ self getRegister: ref in: registers