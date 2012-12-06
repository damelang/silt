tests
testComment

	self triples: {
		{self dataDefString. #dataDef.
		{#dataDef.
	 		self build: {'@hello_string'. #globalLabel}.
			('0x68 0x65 0x6c 0x6c 0x6f 0x20
			0x77 0x6f 0x72 0x6c 0x64 0x00' substrings collect: [:x | self build: {x. #literal}])}}}