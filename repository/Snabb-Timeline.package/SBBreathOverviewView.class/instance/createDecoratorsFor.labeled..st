as yet unclassified
createDecoratorsFor: aMetric labeled: aLabel
	| dec |
	dec := RTVarianceRangeDecorator new.
	dec x: #time.
	dec avg: [ :grp | (grp entries collect: aMetric) average ].
	dec
		sd: [ :grp | 
			| mean |
			mean := (grp entries collect: aMetric) average.
			((grp entries collect: aMetric) collect: [ :e | (e - mean) squared ]) average sqrt ].
	dec
		moveBehind;
		color: ((self colorFor: aMetric) alpha: 0.5).
	^ {dec}