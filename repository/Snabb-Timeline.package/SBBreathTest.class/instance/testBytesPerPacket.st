tests
testBytesPerPacket
	breath add: (SBTimelineEntry new msg2: 20).
	self assert: breath bytesPerPacket equals: 20