hooks
createZoomSlider
	| zoomSlider |
	zoomSlider := RTSlider new.
	zoomSlider view: view.
	zoomSlider labeled.
	zoomSlider min: 1.0.
	zoomSlider max: 100.0.
	zoomSlider value: self groupSize.
	zoomSlider
		callback: [ :value | 
			groupSize := value.
			self updateView ].
	zoomSlider vertical.
	^ zoomSlider