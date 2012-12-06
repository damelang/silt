rules
start =
	((space | eol)*
	(funcDef | dataDef))+:defs
	(space | eol)* 
		-> [defs asArray]
