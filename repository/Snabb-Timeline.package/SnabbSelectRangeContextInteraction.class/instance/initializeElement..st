as yet unclassified
initializeElement: aView
	self
		assert: [ self presentation notNil ]
		description: 'The presentation has not been set yet.'.
	aView attributeAt: self className put: self