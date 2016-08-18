reading
readStream: aStream
	| header entries e strs prevTsc |
	header := self readHeader: aStream.
	entries := OrderedCollection new.
	[ e := self readEntry: aStream ] whileNotNil: [ entries add: e ].
	aStream position: ((header at: #last) + 2) * 64.
	strs := self readStrings: aStream.
	prevTsc := entries ifEmpty: [ 0 ] ifNotEmpty: [ entries first tsc ].
	entries
		do: [ :each | 
			| id |
			id := each messageId.
			each messageTemplate: (strs at: (id at: 3) + ((id at: 4) << 8) + ((id at: 5) << 16)).
			each messageCategory: (strs at: (id at: 6) + ((id at: 7) << 8) + ((id at: 8) << 16)).
			each lag: each tsc - prevTsc.
			prevTsc := each tsc ].
	^ SBTimeline new
		header: header;
		entries: entries;
		yourself