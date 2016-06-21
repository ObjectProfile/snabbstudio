hooks
zoomInOn: aPoint by: aZoomStep
	zoom := zoom + aZoomStep.
	centerPoint := aPoint.
	centerIndex := data indexOf: (Array with: centerPoint x with: centerPoint y).
	self cleanView.
	self renderIn: view.
	view signalUpdate