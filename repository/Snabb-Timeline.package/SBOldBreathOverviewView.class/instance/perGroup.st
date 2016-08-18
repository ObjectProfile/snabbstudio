accessing - computed
perGroup
	maxPoints >= self totalPoints
		ifTrue: [ ^ self totalPoints ]
		ifFalse: [ ^ self totalPoints // (zoom * maxPoints / 2) ]