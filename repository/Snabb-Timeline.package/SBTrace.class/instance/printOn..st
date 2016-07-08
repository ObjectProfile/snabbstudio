as yet unclassified
printOn: stream
	stream nextPut: $<.
	stream nextPutAll: fileReference basename.
	stream nextPut: $>.