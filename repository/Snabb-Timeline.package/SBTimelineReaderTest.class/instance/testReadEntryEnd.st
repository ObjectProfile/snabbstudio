tests
testReadEntryEnd
	| stream |
	stream := self entry readStream.
	reader readEntry: stream.
	self assert: stream position equals: 64.
	self assert: stream atEnd