rules
regRef =
	spaces < letter+ >:type <digit+ >:d
		-> [{#regRef. type asLowercase. d}]
