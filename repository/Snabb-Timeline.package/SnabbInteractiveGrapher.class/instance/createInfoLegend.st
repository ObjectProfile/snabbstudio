hooks
createInfoLegend
	| lb |
	lb := RTLegendBuilder new.
	lb view: view.
	lb addObject: self totalPoints text: [ :v | 'Total points: ' , v asString ].
	lb addObject: self zoom text: [ :v | 'Zoom: ' , (v round: 1) asString ].
	lb addObject: self maxPoints text: [ :v | 'Max points visible: ' , v asString ].
	lb addObject: self perGroup text: [ :v | 'Group size: ' , v asString ].
	lb addObject: self contextSize text: [ :v | 'Context size: ' , v asString ].
	lb addObject: self centerIndex text: [ :v | 'Center index: ' , v asString ].
	lb addObject: self centerPoint text: [ :v | 'Center point: ' , v asString ].
	lb right.
	^ lb