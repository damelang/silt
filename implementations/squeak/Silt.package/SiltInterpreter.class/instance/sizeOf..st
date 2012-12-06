support
sizeOf: type
	^ type caseOf: {
		['b'] -> [1].
		['s'] -> [2].
		['i'] -> [4].
		['l'] -> [8].
		['w'] -> [8].
		['f'] -> [4].
		['d'] -> [8]}.
