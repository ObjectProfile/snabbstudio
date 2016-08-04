hooks
zoomInOn: aPoint by: aZoomStep
	zoom := zoom + aZoomStep.
	centerIndex := data indexOf: aPoint.
	self basicZoom