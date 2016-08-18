tests
testCyclesPerBreath
	breath
		add: (SBTimelineEntry new tsc: 50);
		add: (SBTimelineEntry new tsc: 150);
		add: (SBTimelineEntry new tsc: 500).
	self assert: breath cyclesPerBreath equals: 500 - 50