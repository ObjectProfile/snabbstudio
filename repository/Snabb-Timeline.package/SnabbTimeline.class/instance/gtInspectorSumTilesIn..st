visualizations
gtInspectorSumTilesIn: composite
	<gtInspectorPresentationOrder: 40>
	| maxEntries d b |
	maxEntries := 1000.
	self records size > maxEntries
		ifTrue: [ ^ composite label
				title: 'Sum Tiles';
				display:
					'Due to graph complexity this view is available only for entry size samples <= '
						, maxEntries asString , '. You are currently inspecting '
						, self records size asString , ' entries.' ].
	d := Dictionary new.
	self records do: [ :e |
		d at: e messageText put: e lag + (d at: e messageText ifAbsent: 0) ].
	b := RTMondrian new.
	b nodes: d associations.
	b normalizer
		normalizeSize: [ :x | x value sqrt ];
		distinctColorUsing: #key.
	b layout circle.
	b build.
	composite roassal2
		title: 'Sum Tiles';
		initializeView: b view.