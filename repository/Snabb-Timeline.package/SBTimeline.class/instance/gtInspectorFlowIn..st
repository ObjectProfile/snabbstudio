visualizations
gtInspectorFlowIn: composite
	<gtInspectorPresentationOrder: 50>
	| d l b |
	d := Dictionary new.
	self entries do: [ :e |
		d at: e messageTemplate put: e lag + (d at: e messageTemplate ifAbsent: 0) ].
	b := RTMondrian new.
"	b shape ellipse.
"	b nodes: d keys.

	l := Dictionary new.
	self entries inject: nil into: [ :prev :e |
		prev ifNotNil: [ l at: prev put:  e messageTemplate ].
		e messageTemplate ].
	b shape line.
	b edges useAssociations: l associations.
	b normalizer
		normalizeSize: [ :x | d at: x ];
		distinctColorUsing: #yourself.
	b layout tree.
	b build.
	composite roassal2
		title: 'Flow';
		initializeView: b view.