hooks
createZoomSlider
	| zoomSlider |
	zoomSlider := RTSlider new.
	zoomSlider view: view.
	zoomSlider labeled.
	zoomSlider max: (self breaths last time / 2 / 1e6) asFloat.
	zoomSlider min: self groupSize.
	zoomSlider value: self groupSize.
	zoomSlider
		callback: [ :value | 
			groupSize := value.
			self updateView ].
	zoomSlider vertical.
	^ zoomSlider