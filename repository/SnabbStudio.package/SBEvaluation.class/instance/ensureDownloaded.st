downloading
ensureDownloaded
	self evalPage exists
		ifFalse: [ self downloadBase ]