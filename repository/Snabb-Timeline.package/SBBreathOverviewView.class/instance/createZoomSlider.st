hooks
createZoomSlider
	| zoomSlider |
	zoomSlider := RTSlider new.
	zoomSlider view: view.
	zoomSlider labeled.
	zoomSlider max: ((self breaths sum: #cyclesPerBreath) / 1e6 / 2) asFloat.
	zoomSlider min: self groupSize.
	zoomSlider value: self groupSize.
	zoomSlider
		callback: [ :value | 
			groupSize := value.
			self updateView ].
	zoomSlider vertical.
	^ zoomSlider