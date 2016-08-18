tests
testReadHeaderEnd
	| stream |
	stream := self header readStream.
	reader readHeader: stream.
	self assert: stream position equals: 64.
	self assert: stream atEnd