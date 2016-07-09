as yet unclassified
testReadStream
	| result first |
	result := reader readStream: self file readStream.
	self assert: (result header at: #last) equals: 1.
	self assert: result records size equals: 1.
	first := result records first.
	self assert: first lag equals: 10.
	self assert: first messageCategory equals: #engine.
	self assert: first messageText equals: #'sleeping user'