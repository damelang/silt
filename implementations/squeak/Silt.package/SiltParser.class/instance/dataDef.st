rules
dataDef =
	globalLabel:label ":" eol (spaces nl? literal)+:lits
		-> [{#dataDef. label. lits asArray}]
