visualizations
gtInspectorTimeLineLagInteractiveIn: composite
	<gtInspectorPresentationOrder: -28>
	composite roassal2
		title: 'Lag interactive';
		initializeView: [ | b |
			b := SBInteractiveGrapher new.
			b data: self records.
			b zoom: 1.
			b maxPoints: 100.
			b build.
			b view @ RTResizeableViewContextInteraction.
			b view ]