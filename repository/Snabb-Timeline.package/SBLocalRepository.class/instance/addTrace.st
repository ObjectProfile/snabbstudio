actions
addTrace
	| path |
	path := UIManager default chooseFullFileNameMatching: nil label: 'Choose a timeline file.'.
	path ifNil: [ ^ self ].
	path := path asFileReference.
	traces add: (SBTrace new fileReference: path)