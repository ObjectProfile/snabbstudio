gt-inspector-extension
gtInspectorEvaluationsIn: composite
	<gtInspectorPresentationOrder: 5>
	composite table
		title: 'Evaluations';
		display: [ evaluations ];
		column: 'ID' evaluated: [ :each | each id ];
		column: 'Date'
			evaluated: [ :each | each date asDate asString , ' ' , each date asTime asString ];
		act: [ self addEvaluation.
			composite update ]
			icon: (Smalltalk ui icons iconNamed: #smallAdd)
			entitled: 'Add Evaluation'