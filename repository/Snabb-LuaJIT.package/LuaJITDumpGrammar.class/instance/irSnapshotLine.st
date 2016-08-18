grammar
irSnapshotLine
	^'....' asParser ,
		(#newline asParser negate plus) ,
		(#newline asParser optional)