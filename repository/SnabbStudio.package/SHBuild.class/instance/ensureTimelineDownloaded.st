downloading
ensureTimelineDownloaded
	self stateFile exists
		ifTrue: [ ^ self ].
	self stateFile parent ensureCreateDirectory.
	self evaluation download: self stateUrl to: self stateFile.
	self unpack: self stateFile