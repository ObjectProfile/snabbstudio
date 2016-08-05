accessing
traces
	self path ifNil: [ ^ #() ].
	^ self path asFileReference children collect: [ :fr | SBTrace new fileReference: fr; yourself ]