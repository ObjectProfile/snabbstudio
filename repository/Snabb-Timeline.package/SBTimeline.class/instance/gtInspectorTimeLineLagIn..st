visualizations
gtInspectorTimeLineLagIn: composite
	<gtInspectorPresentationOrder: -30>
	| maxEntries |
	maxEntries := 1000.
	self entries size > maxEntries
		ifTrue: [ ^ composite label
				title: 'Lag';
				display:
					'Due to graph complexity Lag view is available only for entry size samples <= '
						, maxEntries asString , '. You are currently inspecting '
						, self entries size asString , ' entries.' ].
	^ composite roassal2
		title: 'Lag';
		initializeView: [ | v |
			v := RTView new.
			SBTimeLineLagView new
				entries: entries;
				renderIn: v.
			v ]