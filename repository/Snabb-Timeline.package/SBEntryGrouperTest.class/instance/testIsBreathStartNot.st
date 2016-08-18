tests
testIsBreathStartNot
	entry := SBTimelineEntry new.
	entry messageTemplate: ''.
	self deny: (grouper isBreathStart: entry)