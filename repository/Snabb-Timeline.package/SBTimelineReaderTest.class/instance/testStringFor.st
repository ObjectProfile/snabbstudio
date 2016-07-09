tests
testStringFor
	reader strings: (reader readStrings: self strings readStream).
	self assert: (reader stringFor: 7) equals: #'sleeping $usec for $Hz'