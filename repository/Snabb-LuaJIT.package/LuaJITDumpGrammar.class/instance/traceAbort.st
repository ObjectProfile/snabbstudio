grammar
traceAbort
	^'---- TRACE' asParser trim ,
		#digit asParser plus trim ,
		'abort' asParser ,
		#newline asParser negate plus