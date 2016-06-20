as yet unclassified
pathFor: anEdge
	| toStr midPoints midPoints2 pfp width |
	midPoints := data sliceFrom: anEdge from model first to: anEdge to model first.
	width := anEdge to position x - anEdge from position x.
	width := width asFloat.
	midPoints2 := OrderedCollection new.
	(width > 0 and: [ (midPoints size - 2) // width >= 0 ])
		ifTrue: [ 2 to: midPoints size - 1 by: (1 max: (midPoints size - 2) // width) do: [ :i | midPoints2 add: (midPoints at: i) ] ].
	midPoints := {midPoints first} , midPoints2 , {midPoints last}.
	pfp := [ :point | 
	| anX anY |
	anX := RTMetricNormalizer new
		getValue: point x
		min: anEdge from position x
		max: anEdge to position x
		minValue: midPoints first first
		maxValue: midPoints last first.
	anY := RTMetricNormalizer new
		getValue: point y
		min: anEdge from position y
		max: anEdge to position y
		minValue: midPoints first second
		maxValue: midPoints last second.
	anX @ anY ].
	toStr := [ :el | el x asFloat asString , ',' , el y asFloat asString ].
	^ String
		streamContents: [ :s | 
			s nextPutAll: 'M'.
			midPoints do: [ :each | s nextPutAll: (toStr value: (pfp value: (each first + 1) @ each second)) ] separatedBy: [ s nextPutAll: ' ' ] ]