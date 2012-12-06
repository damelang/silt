interpreter
run: program
	self preprocess: program.
	globalLabels at: 'main' ifPresent: [:main |
		^ self call: main with: #()].
