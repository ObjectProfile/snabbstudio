initialization
initialize
	super initialize.
	evaluations := SortedCollection sortBlock: [ :a :b | a id < b id ]