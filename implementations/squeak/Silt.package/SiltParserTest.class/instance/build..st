support
build: elem
	(elem isArray and: [elem size = 2 and: [elem first isString and: [elem second isSymbol and: [SiltParser basicNew respondsTo: elem second]]]]) ifTrue: [^ SiltParser matchAll: elem first with: elem second].

	elem isArray ifTrue: [^ elem collect: [:e | self build: e]].
	^ elem.
