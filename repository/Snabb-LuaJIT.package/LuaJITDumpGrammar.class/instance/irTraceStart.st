grammar-ir
irTraceStart
	^'---- TRACE' asParser trim ,
		#digit asParser plus trim ,
		'IR' asParser ,
		#newline asParser