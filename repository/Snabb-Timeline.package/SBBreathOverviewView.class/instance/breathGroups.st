accessing
breathGroups
	^ breathGroups ifNil: [ SBBreathGrouper new groupBreaths: breaths bySize: self groupSize ]