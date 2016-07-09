hooks
zoomAllOut
	zoom <= 1
		ifTrue: [ ^ self ].
	zoom := 1.
	centerIndex := nil.
	self cleanView.
	self renderIn: view.
	view signalUpdate