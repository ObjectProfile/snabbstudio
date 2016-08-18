grammar
mcodeTraceStart
	^'---- TRACE' asParser trim ,
		#digit asParser plus trim ,
		'mcode' asParser trim ,
		#digit asParser plus ,
		#newline asParser