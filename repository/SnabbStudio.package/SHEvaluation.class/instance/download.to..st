downloading
download: anUrl to: aFile
	aFile ensureDelete.
	[ :bar | 
	[ ZnClient new
		url: anUrl;
		signalProgress: true;
		downloadTo: aFile ]
		on: HTTPProgress
		do: [ :progress | 
			bar label: progress printString.
			progress isEmpty
				ifFalse: [ bar current: progress percentage ].
			progress resume ] ] asJob run