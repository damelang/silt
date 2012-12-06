tests
testLiteral

	self triples:
		{
			{' 0x1234'	.#literal.		{#literal. 's'. '0x1234'}}.
			{' 12..34'	.#literal.		{#literal. 'd'. '12.34'}}.
			{' 56.78'	.#literal.		{#literal. 'f'. '56.78'}}.
	}.
