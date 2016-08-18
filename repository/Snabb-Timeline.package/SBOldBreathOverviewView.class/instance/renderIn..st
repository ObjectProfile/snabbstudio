hooks
renderIn: aView
	| ds |
	view := aView.
	grapher := self createGrapher.
	ds := self dataSet.
	ds interaction
		when: TRMouseLeftClick
		do: [ :evt | self zoomInOn: evt element model by: self zoomStep * 10 ].
	grapher add: ds.
	grapher axisX
		noDecimal;
		numberOfLabels: 10 / 2;
		numberOfTicks: 10;
		labelConversion: [ :num | num asInteger asStringWithCommas ];
		labelRotation: -30.
	grapher axisY
		noDecimal;
		labelConversion: [ :num | num asInteger asStringWithCommas ].
	grapher build.
	view addAll: grapher view elements.
	view addAll: grapher view edges