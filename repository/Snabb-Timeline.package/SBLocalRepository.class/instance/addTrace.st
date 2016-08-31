actions
addTrace
	(UIManager default chooseFullFileNameMatching: nil label: 'Choose a timeline file.')
		ifNotNil: [ :path | 
			(self loadTraceFromFile: path asFileReference)
				ifNotNil: [ :timeline | 
					traces
						add:
							(SBTrace new
								fileReference: path asFileReference;
								timeline: timeline) ] ]