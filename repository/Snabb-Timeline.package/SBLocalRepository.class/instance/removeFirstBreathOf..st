gt-inspector-extension
removeFirstBreathOf: aTimeline
	^ aTimeline entries: (aTimeline breaths allButFirst flatCollect: #entries)