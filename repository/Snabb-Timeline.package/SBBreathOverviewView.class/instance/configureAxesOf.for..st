hooks
configureAxesOf: aGrapher for: aMetric
	aGrapher shouldUseNiceLabels: true.
	aGrapher axisX
		noDecimal;
		numberOfLabels: 10;
		labelConversion: [ :num | num asInteger asStringWithCommas ];
		labelRotation: -30.
	aGrapher axisY
		noDecimal;
		color: (self colorFor: aMetric);
		labelConversion: [ :num | num asInteger asStringWithCommas ]