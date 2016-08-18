hooks
selectOnInteractiveGrapher: entries view: aView
	| fullContext context |
	entries
		ifNotEmpty: [ fullContext := (aView attributeAt: #SBInteractiveGrapher) context.
			context := fullContext
				copyFrom: (fullContext indexOf: entries first)
				to: (fullContext indexOf: entries last).
			self presentation selection: (SBTimeline new entries: context) ]