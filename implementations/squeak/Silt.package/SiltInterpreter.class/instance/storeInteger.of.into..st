support
storeInteger: aValue of: type into: addr
	| mask |
	mask := 16rFF.
	0 to: (self sizeOf: type) - 1 do: [:off |
		memory at: addr + off + 1put: (aValue bitAnd: mask) >> (off * 8).
		mask := mask << 8].
