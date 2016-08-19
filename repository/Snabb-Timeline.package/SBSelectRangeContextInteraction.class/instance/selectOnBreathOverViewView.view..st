hooks
selectOnBreathOverViewView: groups view: aView
	groups
		ifNotEmpty: [ | breaths entries |
			breaths := (groups flatCollect: #entries) removeDuplicates.
			entries := breaths flatCollect: #entries.
			self presentation selection: (SBTimeline new entries: entries) ]