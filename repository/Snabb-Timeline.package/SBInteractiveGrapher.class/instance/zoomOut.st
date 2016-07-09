hooks
zoomOut
	zoom <= 1
		ifTrue: [ ^ self ].
	zoom := zoom - self zoomStep.
	self cleanView.
	self renderIn: view.
	view signalUpdate