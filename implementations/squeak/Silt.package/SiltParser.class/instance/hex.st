rules
hex =
	anything:c ?['0123456789ABCDEFabcdef' includes: c]
		-> [c]
