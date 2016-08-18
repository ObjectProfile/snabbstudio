utility
reduceToMinAndMax: aCollection
	| values |
	values := aCollection allButFirst allButLast
		groupsOf: self perGroup
		atATimeCollect: [ :each | 
			{each detectMin: #lag.
			each detectMax: #lag} sorted: [ :a :b | a tsc < b tsc ] ].
	^ {aCollection first} , values flatten , {aCollection last}