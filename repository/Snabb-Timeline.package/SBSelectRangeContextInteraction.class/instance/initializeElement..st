hooks
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
			| entries |
			entries := (evt group collect: #model) reject: #isNil.
			(aView hasAttribute: SBInteractiveGrapher name)
				ifTrue: [ self selectOnInteractiveGrapher: entries view: aView ].
			(aView hasAttribute: SBBreathOverviewView name)
				ifTrue: [ self selectOnBreathOverViewView: entries view: aView ] ]