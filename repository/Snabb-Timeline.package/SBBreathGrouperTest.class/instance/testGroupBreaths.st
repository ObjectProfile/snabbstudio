tests
testGroupBreaths
	| groups |
	groups := grouper groupBreaths: self createBreaths bySize: 500 * 1e-6.
	self assert: groups size equals: 3.
	self assert: groups first totalCycles equals: 500.
	self assert: groups second totalCycles equals: 500.
	self assert: groups third totalCycles equals: 400