rules
literal =
	spaces (
		(``0x''
			(	< numberOf(#hex. 16) >:h	['l']:t
			|	< numberOf(#hex. 8) >:h	['i']:t
			|	< numberOf(#hex. 4) >:h	['s']:t
			|	< numberOf(#hex. 2) >:h	['b']:t
			) -> [{#literal. t. '0x', h}]
		)
	|	< digit+ >:w (".." ['d'] | "." ['f']):t < digit+ >:f	-> [{#literal. t. w, '.', f}]
	)
