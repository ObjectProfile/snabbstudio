actions
loadTraceFromFile: aFileReference
	[ ^ SBTimelineReader new readFile: aFileReference ]
		on: Error
		do: [ :e | 
			UIManager default notify: 'Failed to read the file: ' , e messageText.
			^ nil ]