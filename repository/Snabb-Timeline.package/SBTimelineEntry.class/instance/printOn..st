printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: '(';
		nextPutAll: 'lag: ';
		nextPutAll: lag asString;
		nextPutAll: ' - ';
		nextPutAll: self messageText;
		nextPutAll: ')'