tests
testIsBreathEndNot
	entry := SnabbTimelineEntry new.
	entry messageText: ''.
	self deny: (grouper isBreathEnd: entry)