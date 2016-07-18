printing
printOn: stream
	"Printing"
	stream nextPut: $<.
	stream nextPutAll: fileReference basename.
	stream nextPut: $>.