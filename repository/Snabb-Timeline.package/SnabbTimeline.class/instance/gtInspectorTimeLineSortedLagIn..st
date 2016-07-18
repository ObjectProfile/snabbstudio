visualizations
gtInspectorTimeLineSortedLagIn: composite
	<gtInspectorPresentationOrder: -25>
	| lb |
	composite roassal2
		title: 'Sorted Lag';
		initializeView: [| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds dotShape circle color: Color red trans.
			ds points: (self records reverseSortedAs: #lag).
			ds y: #lag.
			b add: ds.
			b axisX noLabel; noTick.
			b axisY title: 'Lag'; noDecimal; withThousandsSeparator.
			b addDecorator: (RTAverageDecorator new lineColor: Color blue).
			b build.
			
			lb := RTLegendBuilder new.
			lb view: b view.
			lb addText: 'Lag along the entries'.
			lb addText: 'Entries are sorted along their lag'.
			lb addLineColor: Color blue text: 'Average'.
			lb build.
			
			b view ]
			