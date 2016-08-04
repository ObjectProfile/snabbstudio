tests
testGroup
	| groups |
	groups := grouper groupEntries: self createEntries.
	self assert: groups size equals: 5.
	self assert: groups first records size equals: 1.
	self assert: groups second records size equals: 3.
	self assert: groups third records size equals: 2.
	self assert: groups fourth records size equals: 1.
	self assert: groups fifth records size equals: 2