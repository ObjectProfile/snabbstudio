accessing
breathGroups
	^ breathGroups
		ifNil: [ SBBreathGrouper new groupMiddleBreaths: breaths bySize: self groupSize ]