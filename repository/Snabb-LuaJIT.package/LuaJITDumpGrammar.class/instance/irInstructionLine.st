grammar
irInstructionLine
	^(irInstructionNumber trim) ,
		((irRegister / irStackSlot / irSink) optional trim) ,
		(irFlagGuard optional trim) ,
		(irFlagPhi optional trim) ,
		(irFlagSink optional trim) ,
		(irType trim) ,
		(irOpcode trim) ,
		irOperands ,
		#newline asParser optional