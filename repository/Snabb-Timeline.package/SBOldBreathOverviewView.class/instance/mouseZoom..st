hooks
mouseZoom: anEvent
	| dist |
	dist := anEvent position - view canvas camera position.
	anEvent isUp
		ifTrue: [ | p |
			p := self context
				detectMin:
					[ :each | (dataset getPixelPositionOf: each tsc @ each lag) dist: anEvent position ].
			self zoomIn.
			"self zoomInOn: p first @ p second" ].
	anEvent isDown
		ifTrue: [ ^ self zoomOut ]