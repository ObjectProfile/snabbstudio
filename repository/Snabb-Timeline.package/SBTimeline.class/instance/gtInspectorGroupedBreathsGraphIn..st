visualizations
gtInspectorGroupedBreathsGraphIn: composite
	"No grouping of groups"

	<gtInspectorPresentationOrder: -28>
	((self isKindOf: SBBreath)
		or: [ self entries anySatisfy: [ :each | each isKindOf: SBBreath ] ])
		ifTrue: [ ^ self ].
	composite roassal2
		title: 'Grouped Breaths';
		initializeView: [ | b |
			b := SBBreathOverviewView new.
			b breaths: self breaths.
			b build.
			"b view @ RTEmptyViewContextInteraction."
			b view ]