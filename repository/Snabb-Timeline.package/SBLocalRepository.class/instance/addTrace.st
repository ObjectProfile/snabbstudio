actions
addTrace
	| path |
	path := UIManager default chooseFullFileNameMatching: nil label: 'Choose a timeline file.'.
	path ifNil: [ ^ self ].
	traces detect: [ :each | each fileReference = path ] ifFound: [ ^ self ].
	traces add: (SBTrace new fileReference: path)