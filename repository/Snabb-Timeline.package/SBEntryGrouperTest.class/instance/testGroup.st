tests
testGroup
	| groups |
	groups := grouper groupEntries: self createEntries.
	self assert: groups size equals: 5.
	self assert: groups first entries size equals: 1.
	self assert: groups second entries size equals: 3.
	self assert: groups third entries size equals: 2.
	self assert: groups fourth entries size equals: 1.
	self assert: groups fifth entries size equals: 2