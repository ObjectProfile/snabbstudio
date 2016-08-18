tests
testIsBreathStart
	entry := SBTimelineEntry new.
	entry messageTemplate: #'start $breath'.
	self assert: (grouper isBreathStart: entry)