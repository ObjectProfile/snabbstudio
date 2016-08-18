printing
printOn: stream
	"Printing"
	stream nextPut: $<.
	stream nextPutAll: self name.
	stream nextPut: $>.