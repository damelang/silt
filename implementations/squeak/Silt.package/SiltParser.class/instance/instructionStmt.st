rules
instructionStmt =
	(localLabel:label ":" | ) 
	instruction:inst operand*:src ("->" operand:dst)?
		-> [{#instruction. inst. label. src asArray. dst}]
