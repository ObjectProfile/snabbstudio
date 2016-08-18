tests
testGroupBreaths
	| groups |
	groups := grouper groupBreaths: self createBreaths bySize: 500 * 1e-6.
	self assert: groups size equals: 3.
	self assert: groups first cyclesPerBreath equals: 500.
	self assert: groups second cyclesPerBreath equals: 1100.
	self assert: groups third cyclesPerBreath equals: 400