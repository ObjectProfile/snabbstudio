as yet unclassified
file
	"Test file with header and one entry"

	| h e |
	h := self header copy.
	"set #last to 1, because it's actually +128B already"
	h at: 25 put: 1.
	h at: 26 put: 0.
	h at: 27 put: 0.
	"set #messageText to 30 to match whatever is in self strings"
	e := self entry copy.
	e at: 25 + 2 put: 30.
	e at: 26 + 2 put: 0.
	e at: 27 + 2 put: 0.
	^ h , e , (ByteArray new: 64) , self strings copy