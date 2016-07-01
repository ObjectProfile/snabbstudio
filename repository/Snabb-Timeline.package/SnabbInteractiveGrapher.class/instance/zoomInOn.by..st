hooks
zoomInOn: aPoint by: aZoomStep
	zoom := zoom + aZoomStep.
	centerIndex := data indexOf: aPoint.
	self cleanView.
	self renderIn: view.
	view signalUpdate