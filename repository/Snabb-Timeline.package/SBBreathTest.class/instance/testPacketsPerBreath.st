tests
testPacketsPerBreath
	breath add: (SBTimelineEntry new msg1: 20).
	self assert: breath packetsPerBreath equals: 20