accessing
traces
	^ self path asFileReference children collect: [ :fr | SBTrace new fileReference: fr; yourself ]