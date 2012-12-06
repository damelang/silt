initialization
processDataDef: data
	| oldEndText |
	oldEndText := endText.
	data third do: [:d |
		| type value |
		type := d second.
		value := self lookupLiteral: d.
		self store: value of: type into: endText.
		endText := endText + (self sizeOf: type)].
	^ oldEndText
