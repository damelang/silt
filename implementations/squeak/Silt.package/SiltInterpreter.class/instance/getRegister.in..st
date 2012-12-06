support
getRegister: regRef in: registers
	^ [(registers at: (self getRegTypeOf: regRef)) at: (self getRegIndexOf: regRef)]
		on: Error do: [self error: 'accessing an uninitialized register'].
