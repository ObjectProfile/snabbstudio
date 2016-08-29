actions
addTrace
	(UIManager default chooseFullFileNameMatching: nil label: 'Choose a timeline file.')
		ifNotNil:
			[ :path | (self loadTraceFromFile: path asFileReference) ifNotNil: [ :trace | traces add: trace ] ]