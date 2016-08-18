tests
testPacketsPerKCycle
	breath
		add: (SBTimelineEntry new tsc: 50);
		add: (SBTimelineEntry new tsc: 150);
		add:
			(SBTimelineEntry new
				tsc: 500;
				msg1: 900).
	self assert: breath packetsPerKCycle equals: 1000 * 900 / (500 - 50)