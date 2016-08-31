hooks
renderIn: aView
	| sets grapher |
	multiGrapher ifNotNil: [ self cleanView: multiGrapher view ].
	multiGrapher := RTMultiGrapher new.
"	RTGrapherSelectRangeViewContext
		onGrapher: multiGrapher
		callback: [ :elements | (multiGrapher view attributeAt: #presentation) selection: elements ]."
	self renderOnce: aView.
	sets := Dictionary
		with: #packetsPerKCycle -> 'Packets Per KCycle'
		with: #cyclesPerBreath -> 'Cycles per Breath'
		with: #bytesPerPacket -> 'Bytes Per Packet'
		with: #packetsPerBreath -> 'Packets Per Breath'.
	normalizer := RTMultiLinearColorForIdentity new objects: sets keys.
	sets
		keysAndValuesDo: [ :metric :label | 
			grapher := RTGrapher new.
			grapher minX: self breathGroups first time.
			grapher withoutOrigin.
			grapher add: (self createDatasetFor: metric labeled: label).
			(self createDecoratorsFor: metric labeled: label) do: [ :each | grapher addDecorator: each ].
			self configureAxesOf: grapher for: metric.
			multiGrapher add: grapher ].
	multiGrapher legend.
	multiGrapher build.
	self copyView: multiGrapher view to: view