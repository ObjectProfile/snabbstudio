hooks
renderIn: aView
	| sets |
	grapher ifNotNil: [ self cleanView: grapher view ].
	grapher := RTGrapher new.
	grapher minX: self breathGroups first time.
	grapher withoutOrigin.
	self renderOnce: aView.
	sets := Dictionary
		with: #cyclesPerBreath -> 'Cycles per Breath'
		with: #bytesPerPacket -> 'Bytes Per Packet'
		with: #packetsPerBreath -> 'Packets Per Breath'
		with: #packetsPerKCycle -> 'Packets Per KCycle'.
	normalizer := RTMultiLinearColorForIdentity new objects: sets keys.
	sets
		keysAndValuesDo: [ :selector :label | 
			grapher add: (self createDatasetFor: selector labeled: label).
			(self createDecoratorsFor: selector labeled: label)
				do: [ :each | grapher addDecorator: each ] ].
	self configureAxesOf: grapher.
	grapher legend.
	grapher build.
	self copyView: grapher view to: view