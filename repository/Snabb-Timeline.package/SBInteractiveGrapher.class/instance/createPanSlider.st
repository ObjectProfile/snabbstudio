hooks
createPanSlider
	| panSlider |
	panSlider := RTSlider new.
	panSlider view: view.
	panSlider labeled.
	panSlider
		callback: [ :value | 
			self centerIndex: (self totalPoints * value) rounded.
			self update ].
	^ panSlider