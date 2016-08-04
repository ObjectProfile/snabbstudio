hooks
createZoomSlider
	| zoomSlider |
	zoomSlider := RTSlider new.
	zoomSlider view: view.
	zoomSlider labeled.
	zoomSlider min: 1.0.
	zoomSlider max: 20.0.
	zoomSlider value: zoom.
	zoomSlider
		callback: [ :value | 
			zoom := value.
			self basicZoom ].
	zoomSlider vertical.
	^ zoomSlider