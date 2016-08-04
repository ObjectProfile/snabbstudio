tests
testIsBreathStart
	entry := SnabbTimelineEntry new.
	entry messageText: #'start $breath'.
	self assert: (grouper isBreathStart: entry)