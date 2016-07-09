hooks
zoomIn
	zoom := zoom + self zoomStep.
	self cleanView.
	self renderIn: view.
	view signalUpdate