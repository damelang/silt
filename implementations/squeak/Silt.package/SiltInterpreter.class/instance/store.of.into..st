support
store: aValue of: type into: addr
	^ type caseOf: {
		['b'] -> [self storeInteger: aValue of: type into: addr].
		['s'] -> [self storeInteger: aValue of: type into: addr].
		['i'] -> [self storeInteger: aValue of: type into: addr].
		['l'] -> [self storeInteger: aValue of: type into: addr].
		['w'] -> [self storeInteger: aValue of: type into: addr].
		['f'] -> [(aValue basicAt: 1) in: [:w |
			self storeInteger: w of: 'i' into: addr]].
		['d'] -> [
			(aValue basicAt: 1) in: [:w |
				self storeInteger: w of: 'i' into: addr + 4].
			(aValue basicAt: 2) in: [:w |
				self storeInteger: w of: 'i' into: addr]].
	}
