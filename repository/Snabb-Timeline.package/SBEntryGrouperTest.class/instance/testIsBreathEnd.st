tests
testIsBreathEnd
	entry := SBTimelineEntry new.
	entry messageTemplate: #'end $breath'.
	self assert: (grouper isBreathEnd: entry)