accessing
totalCycles
	entries ifEmpty: [ ^ 0 ].
	^ entries last tsc - entries first tsc