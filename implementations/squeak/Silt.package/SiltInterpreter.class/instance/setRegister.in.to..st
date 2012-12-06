support
setRegister: regRef in: registers to: aValue
	(registers at: (self getRegTypeOf: regRef) ifAbsentPut: [Dictionary new])
		at: (self getRegIndexOf: regRef) put: aValue
