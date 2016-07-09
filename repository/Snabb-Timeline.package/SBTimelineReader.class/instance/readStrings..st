reading
readStrings: aStream
	"The stream is already exected to be positioned at the first symbol. The format is a stream of strings separated by \0. The end of the data is filled with \0 so we can stop after reading \0\0.
	
	Converting to symbol, because all entries use just a couple of strings. Symbols are compiled and use the same instance.
	
	We return not just the strings, but also their offset.
	"

	| strings str offset |
	strings := Dictionary new.
	offset := 0.
	[ str := (aStream upTo: 0) asString asSymbol.
	str ifNotEmpty: [ strings add: offset -> str ].
	offset := offset + str size + 1 ] doWhileTrue: [ str isNotEmpty ].
	^ strings