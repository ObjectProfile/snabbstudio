grammar
traceEnd
	^'---- TRACE' asParser trim , #digit asParser plus trim , 'stop' asParser trim , #newline asParser negate star trim