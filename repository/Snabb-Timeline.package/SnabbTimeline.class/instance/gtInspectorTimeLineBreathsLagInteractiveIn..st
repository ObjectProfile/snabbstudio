visualizations
gtInspectorTimeLineBreathsLagInteractiveIn: composite
	"No grouping of groups"

	<gtInspectorPresentationOrder: -28>
	(self records anySatisfy: [ :each | each isKindOf: SBBreath ])
		ifTrue: [ ^ self ].
	composite roassal2
		title: 'Breaths Lag interactive';
		initializeView: [ | b |
			b := SBInteractiveGrapher new.
			b data: (SBBreathGrouper new groupEntries: self records).
			b zoom: 1.
			b maxPoints: 100.
			b build.
			b view @ RTResizeableViewContextInteraction.
			b view ]