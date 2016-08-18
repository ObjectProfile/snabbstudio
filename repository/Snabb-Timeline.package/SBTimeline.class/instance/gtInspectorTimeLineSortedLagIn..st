visualizations
gtInspectorTimeLineSortedLagIn: composite
	<gtInspectorPresentationOrder: -25>
	| maxEntries |
	maxEntries := 1000.
	self entries size > maxEntries
		ifTrue: [ ^ composite label
				title: 'Sorted Lag';
				display:
					'Due to graph complexity Lag view is available only for entry size samples <= '
						, maxEntries asString , '. You are currently inspecting '
						, self entries size asString , ' entries.' ].
	composite roassal2
		title: 'Sorted Lag';
		initializeView: [ | v |
			v := RTView new.
			SBTimeLineLagView new
				entries: (self entries reverseSortedAs: #lag);
				renderIn: v.
			v ]