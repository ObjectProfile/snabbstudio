hooks
configureAxesOf: aGrapher
	aGrapher axisX
		noDecimal;
		numberOfLabels: 10;
		labelConversion: [ :num | num asInteger asStringWithCommas ];
		labelRotation: -30.
	aGrapher axisY
		noDecimal;
		labelConversion: [ :num | num asInteger asStringWithCommas ]