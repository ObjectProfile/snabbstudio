tests
testIsBreathEnd
	entry := SnabbTimelineEntry new.
	entry messageText: #'end $breath'.
	self assert: (grouper isBreathEnd: entry)