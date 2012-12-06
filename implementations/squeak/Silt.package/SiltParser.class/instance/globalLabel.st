rules
globalLabel =
	"@" < alphaSym (alphaSym | digit)* >:label
		-> [{#globalLabel. label}]
