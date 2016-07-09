tests
testReadStrings
	self
		assert: (reader readStrings: self strings readStream)
		equals:
			(Dictionary
				with: 0 -> #'engine'
				with: 7 -> #'sleeping $usec for $Hz'
				with: 30 -> #'sleeping user'
				with: 44 -> #'third entry')