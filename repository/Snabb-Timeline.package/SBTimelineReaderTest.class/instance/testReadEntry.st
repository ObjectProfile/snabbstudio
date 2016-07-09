tests
testReadEntry
	| entry entryStream |
	entryStream := self entry readStream.
	entry := reader readEntry: entryStream.
	self assert: entry tsc equals: 12904876369829487.
	self assert: entry ip equals: 4282676.
	self assert: entry aux equals: #[1 0 0 0].
	self assert: entry core equals: 1.
	self assert: entry numa equals: 0.
	self assert: entry messageId equals: #[8 0 254 1 0 0 0 0].
	self assert: entryStream atEnd