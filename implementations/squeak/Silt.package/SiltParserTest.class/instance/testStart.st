tests
testStart

	self triples: {
		{self helloWorldString. #start.
		{
			self build: {self dataDefString. #dataDef}.
			self build: {self funcDefString. #funcDef}}}}