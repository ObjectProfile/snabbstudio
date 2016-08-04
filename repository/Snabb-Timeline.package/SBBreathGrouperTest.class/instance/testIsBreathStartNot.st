tests
testIsBreathStartNot
	entry := SnabbTimelineEntry new.
	entry messageText: ''.
	self deny: (grouper isBreathStart: entry)