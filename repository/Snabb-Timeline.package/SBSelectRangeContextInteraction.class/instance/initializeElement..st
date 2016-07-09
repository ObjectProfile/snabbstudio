as yet unclassified
initializeElement: aView
	| int |
	self
		assert: [ self presentation notNil ]
		description: 'The presentation has not been set yet.'.
	aView attributeAt: self className put: self.
	int := RTSelectableView new.
	aView @ int.
	int
		when: RTSelectionEnd
		do: [ :evt | 
			| fullContext context entries |
			entries := (evt group collect: #model) reject: #isNil.
			entries
				ifNotEmpty: [ fullContext := (aView attributeAt: #SBInteractiveGrapher) context.
					context := fullContext
						copyFrom: (fullContext indexOf: entries first)
						to: (fullContext indexOf: entries last).
					self presentation selection: (SnabbTimeline new records: context) ] ]