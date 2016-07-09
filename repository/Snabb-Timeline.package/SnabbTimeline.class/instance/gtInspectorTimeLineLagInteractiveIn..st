visualizations
gtInspectorTimeLineLagInteractiveIn: composite
	<gtInspectorPresentationOrder: 30>
	composite roassal2
		title: 'Lag interactive';
		initializeView: [ | b |
			b := SBInteractiveGrapher new.
			b data: self records.
			b zoom: 1.
			b maxPoints: 10.
			b build.
			b view ]