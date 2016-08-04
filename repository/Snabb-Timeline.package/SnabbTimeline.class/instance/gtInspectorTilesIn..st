visualizations
gtInspectorTilesIn: composite
	<gtInspectorPresentationOrder: 30>
	| maxEntries b|
	maxEntries := 1000.
	self records size > maxEntries
		ifTrue: [ ^ composite label
				title: 'Tiles';
				display:
					'Due to graph complexity this view is available only for entry size samples <= '
						, maxEntries asString , '. You are currently inspecting '
						, self records size asString , ' entries.' ].
	b := RTMondrian new.
	b nodes: self records.
	b normalizer
		normalizeSize: [ :x | x lag sqrt ];
		distinctColorUsing: #messageText.
	b layout grid.
	b build.
	composite roassal2
		title: 'Tiles';
		initializeView: b view.