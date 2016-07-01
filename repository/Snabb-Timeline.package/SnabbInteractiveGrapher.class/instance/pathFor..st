as yet unclassified
pathFor: anEdge
	| toStr midPoints midPoints2 pfp width |
	midPoints := data sliceFrom: (data indexOf: anEdge from model) to: (data indexOf: anEdge to model).
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
		minValue: midPoints first tsc
		maxValue: midPoints last tsc.
	anY := RTMetricNormalizer new
		getValue: point y
		min: anEdge from position y
		max: anEdge to position y
		minValue: midPoints first lag
		maxValue: midPoints last lag.
	anX @ anY ].
	toStr := [ :el | el x asFloat asString , ',' , el y asFloat asString ].
	^ String
		streamContents: [ :s | 
			s nextPutAll: 'M'.
			midPoints do: [ :each | s nextPutAll: (toStr value: (pfp value: (each tsc + 1) @ each lag)) ] separatedBy: [ s nextPutAll: ' ' ] ]