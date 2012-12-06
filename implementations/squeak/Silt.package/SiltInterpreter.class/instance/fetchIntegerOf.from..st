support
fetchIntegerOf: aType from: addr
	^ (0 to: (self sizeOf: aType) - 1)
			inject: 0
			into: [:s :n | s + ((memory at: addr + n + 1) << (n * 8))]
