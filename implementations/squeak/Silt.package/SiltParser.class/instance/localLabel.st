rules
localLabel =
	"." < alphaSym (alphaSym | digit)* >:label
		-> [{#localLabel. label}]
