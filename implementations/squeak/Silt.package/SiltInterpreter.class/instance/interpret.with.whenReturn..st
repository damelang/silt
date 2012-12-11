interpreter
interpret: funcDef with: registers whenReturn: aBlock
	| instructions pc |
	pc := 1.
	instructions := self getInstructions: funcDef.
	[
		| inst srcValues srcOps dstReg |
		inst := self getOpCode: (instructions at: pc).
		srcOps := self getSrcOperands: (instructions at: pc).
		srcValues := srcOps collect: [:reg | self lookup: reg in: registers or: (localLabels at: funcDef ifAbsent: [nil])].
		dstReg := self getDstRegister: (instructions at: pc).

		pc := pc + 1.
		inst caseOf: {
			['return'] -> [aBlock value: srcValues first].
			['call'] -> [
				| result |
				result := self call: srcValues first with: srcValues allButFirst.
				dstReg ifNotNil: [self setRegister: dstReg in: registers to: result]].
			['load'] -> [
				self
					setRegister: dstReg
					in: registers
					to: (self fetchValueOf: (self getRegTypeOf: dstReg) from: srcValues first)].
			['copy'] -> [
				self
					setRegister: dstReg
					in: registers
					to:  srcValues first].
			['syscall'] -> [
				| result |
				result := self syscallWith: srcValues.
				dstReg ifNotNil: [self setRegister: dstReg in: registers to: result]].
			['add'] -> [
				self setRegister: dstReg in: registers to: srcValues first + srcValues second].
			['sub'] -> [
				self setRegister: dstReg in: registers to: srcValues first - srcValues second].
			['comp'] -> [
				status := (srcValues first - srcValues second) sign].
			['jump>'] -> [
				status = 1 ifTrue: [
					pc := self lookup: srcOps first in: nil or: (localLabels at: funcDef ifAbsent: [nil])]].
			['jump!='] -> [
				status ~= 0 ifTrue: [
					pc := self lookup: srcOps first in: nil or: (localLabels at: funcDef ifAbsent: [nil])]].
		}.
	] repeat.
