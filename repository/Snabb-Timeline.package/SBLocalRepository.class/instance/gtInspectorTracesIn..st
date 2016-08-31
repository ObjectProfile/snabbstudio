gt-inspector-extension
gtInspectorTracesIn: composite
	<gtInspectorPresentationOrder: 5>
	composite table
		title: 'Local Traces';
		display: [ traces ];
		column: 'Name' evaluated: [ :each | each name ] width: 150;
		column: 'Events count' evaluated: [ :each | each timeline entries size ] width: 85;
		column: 'Path' evaluated: [ :each | each fileReference fullName ] width: 500;
		column: 'Date'
			evaluated: [ :each | 
			each fileReference creationTime asDate asString , ' '
				, each fileReference creationTime asTime asString ];
		act: [ self addTrace.
			composite update ]
			icon: (Smalltalk ui icons iconNamed: #smallAdd)
			entitled: 'Add Local Trace';
		selectionAct: [ :list | list selection inspect ]
			icon: Smalltalk ui theme icons glamorousInspect
			on: $i
			entitled: 'Inspect';
		selectionAct: [ :list | self removeFirstBreathOf: list selection timeline ]
			icon: Smalltalk ui theme icons glamorousPreferences
			entitled: 'Remove first breath';
		selectionAct: [ :each | 
			(UIManager default request: 'New trace name' initialAnswer: each selection name)
				ifNotNil: [ :newName | 
					each selection name: newName.
					composite update ] ]
			icon: Smalltalk ui theme icons glamorousEdit
			entitled: 'Rename ...';
		selectionAct: [ :each | 
			traces remove: each selection.
			composite update ]
			icon: Smalltalk ui theme icons glamorousRemove
			entitled: 'Remove from list'