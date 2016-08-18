hooks
mouseDrag: anEvent
	| x normalizedX |
	x := (anEvent step negated / view canvas camera scale) x.
	normalizedX := RTMetricNormalizer new
		getValue: x
		min: dataset firstElement position x
		max: dataset lastElement position x
		minValue: data first first
		maxValue: data last first.
	
	view canvas camera translateBy: x @ 0.
	anEvent signalUpdate