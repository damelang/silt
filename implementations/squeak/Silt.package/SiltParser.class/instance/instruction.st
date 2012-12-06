rules
instruction =
	spaces < (letter | $< | $= | $> | $! )+ >:s -> [s asLowercase]

