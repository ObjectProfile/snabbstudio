tests
testIsBreathEndNot
	entry := SBTimelineEntry new.
	entry messageTemplate: ''.
	self deny: (grouper isBreathEnd: entry)