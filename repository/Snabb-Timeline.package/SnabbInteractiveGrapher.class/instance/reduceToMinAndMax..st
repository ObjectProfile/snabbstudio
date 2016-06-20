as yet unclassified
reduceToMinAndMax: aCollection
	| values |
	values := aCollection
		groupsOf: self perGroup
		atATimeCollect: [ :each | 
			{each detectMin: #second.
			each detectMax: #second} sorted: [ :a :b | a first < b first ] ].
	^ {aCollection first} , values flatten , {aCollection last}