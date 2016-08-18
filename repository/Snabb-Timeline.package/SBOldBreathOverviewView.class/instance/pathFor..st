accessing
pathFor: anEdge
	| toStr midPoints midPoints2 pfp width groupSize groups |
	toStr := [ :el | el x asFloat asString , ',' , el y asFloat asString ].
	true
		ifTrue: [ ^ 'M' , (toStr value: anEdge from position) , ' ' , (toStr value: anEdge to position) ].
	midPoints := (data
		sliceFrom: (data indexOf: anEdge from model)
		to: (data indexOf: anEdge to model)) allButFirst allButLast.
	width := anEdge to position x - anEdge from position x.
	width := width asFloat.
	groupSize := (midPoints size / width) ceiling.
	midPoints2 := OrderedCollection new.
	groups := (0 to: width ceiling)
		collect: [ :i | midPoints sliceFrom: 1 + (groupSize * i) to: groupSize * (i + 1) ]
		thenReject: #isEmpty.
	midPoints2 := groups collect: [ :g | g detectMin: #lag ].
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
	^ String
		streamContents: [ :s | 
			s nextPutAll: 'M'.
			midPoints
				do: [ :each | s nextPutAll: (toStr value: (pfp value: (each tsc + 1) @ each lag)) ]
				separatedBy: [ s nextPutAll: ' ' ] ]