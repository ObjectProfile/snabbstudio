visualizations
gtInspectorTimeLineSortedLagIn: composite
	<gtInspectorPresentationOrder: -25>
	| maxEntries |
	maxEntries := 1000.
	self records size > maxEntries
		ifTrue: [ ^ composite label
				title: 'Sorted Lag';
				display:
					'Due to graph complexity Lag view is available only for entry size samples <= '
						, maxEntries asString , '. You are currently inspecting '
						, self records size asString , ' entries.' ].
	composite roassal2
		title: 'Sorted Lag';
		initializeView: [ | v |
			v := RTView new.
			SBTimeLineLagView new
				records: (self records reverseSortedAs: #lag);
				renderIn: v.
			v ]