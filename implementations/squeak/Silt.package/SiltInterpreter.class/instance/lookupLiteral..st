support
lookupLiteral: literal
	^ literal second caseOf: {
		['b'] -> [('16r', (literal third allButFirst: 2) asUppercase) asNumber].
		['s'] -> [('16r', (literal third allButFirst: 2) asUppercase) asNumber].
		['i'] -> [('16r', (literal third allButFirst: 2) asUppercase) asNumber].
		['l'] -> [('16r', (literal third allButFirst: 2) asUppercase) asNumber].
		['w'] -> [('16r', (literal third allButFirst: 2) asUppercase) asNumber].
		['f'] -> [FloatArray with: literal third asNumber].
		['d'] -> [FloatArray with: literal third asNumber].
	}.
