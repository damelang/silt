rules
funcDef =
	globalLabel:label "(" regRef*:params ")" ":" eol
	(instructionStmt:inst eol [inst])+:ins
		-> [{#funcDef. label. params asArray. ins asArray}]
