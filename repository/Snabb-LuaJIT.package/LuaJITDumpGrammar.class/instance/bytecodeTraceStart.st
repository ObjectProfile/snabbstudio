grammar
bytecodeTraceStart
	^'---- TRACE' asParser trim ,
		#digit asParser plus trim ,
		'start' asParser trim ,
		#newline asParser negate plus ,
		#newline asParser