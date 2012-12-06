support
fetchValueOf: type from: addr
	^ type caseOf: {
		['b'] -> [self fetchIntegerOf: type from: addr].
		['s'] -> [self fetchIntegerOf: type from: addr].
		['i'] -> [self fetchIntegerOf: type from: addr].
		['l'] -> [self fetchIntegerOf: type from: addr].
		['w'] -> [self fetchIntegerOf: type from: addr].
		['f'] -> [
			(FloatArray new: 1) basicAt: 1 put: (self fetchIntegerOf: 'i' from: addr); yourself].
		['d'] -> [
			(Float basicNew: 2)
				basicAt: 1 put: (self fetchIntegerOf: 'i' from: addr + 4);
				basicAt: 2 put: (self fetchIntegerOf: 'i' from: addr);
				yourself]}
