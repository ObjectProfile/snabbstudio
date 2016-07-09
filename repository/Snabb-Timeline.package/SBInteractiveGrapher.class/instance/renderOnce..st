hooks
renderOnce: aBlock
	wasRendered = true
		ifTrue: [ ^ self ].
	aBlock value.
	wasRendered := true