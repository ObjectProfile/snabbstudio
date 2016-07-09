tests
testReadHeader
	self
		assert: (reader readHeader: self header readStream)
		equals:
			{#magic -> 0.
			#majorVersion -> 0.
			#minorVersion -> 0.
			#flags -> 0.
			#priorityMask -> 16r7.
			#next -> 16r3019.
			#last -> 16rfffff} asDictionary