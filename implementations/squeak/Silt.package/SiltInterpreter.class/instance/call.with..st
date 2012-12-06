interpreter
call: funcDef with: arguments
"	registers is a dictionary of:
		type (String) -> bank (Dictionary)
		bank is a dictionary of:
			index (Integer) -> value (Number, or for the float case, it is a FloatArray of length 1)
"
	| registers |
	registers := Dictionary new.
	(self getFormalArguments: funcDef) with: arguments do: [:formal :actual |
		self setRegister: formal in: registers to: actual].
	self interpret: funcDef with: registers whenReturn: [:result | ^ result].
