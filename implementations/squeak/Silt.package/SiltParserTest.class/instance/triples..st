support
triples: triples
	| a b |
	triples do: [:triple |
		a := SiltParser matchAll: triple first with: triple second.
		b := triple third.
		self assert: a = b].
"
a
b
"