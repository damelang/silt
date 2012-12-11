initialization
initialize
	super initialize.
	memory := ByteArray new: 8192.
	globalLabels := Dictionary new.
	localLabels := Dictionary new.
	status := 0.
	endText := 0.
