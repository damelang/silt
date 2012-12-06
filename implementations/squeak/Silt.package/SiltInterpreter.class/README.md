A SiltInterpreter is a simple emulator of the Silt virtual architecture.

	memory is ByteArray
	globalLabels is a dictionary of:
		(label (String) -> (location (Integer) | funcDef (Array)))+

	localLabels is a dictionary of:
		(funcDef (Array) -> locations (Dictionary))+
	and 
		locations is:
			label (String) -> index
		where index is the array index into the funcDef's instructions array.

	The entry point is #run:.

	program is an array that is the form of:
		(funcDef  | dataDef)+
	where funcDef is an array of:
		(#funcDef
			(#globalLabel string)
			((#regRef type indexString) ...)
			(
				instructions+))
	and dataDef is:
		(#dataDef
			((#literal type string) ... ))

	When a program is passed to #run: it scans all the top-level elements in it and store them in globalLabels, and scan each of funcDef and set up the localLabels dictionary. (This is done by #preprocess:.)

	Then find a funcDef named main and 'call' it.
