visualizations
gtInspectorTimeLineLagIn: composite
	<gtInspectorPresentationOrder: -30>
	| lb |
	composite roassal2
		title: 'Lag';
		initializeView: [| b ds |
			b := RTGrapher new.
			b view: RTView new.
			ds := RTData new.
			ds dotShape circle color: Color red trans.
			ds points: self records.
			ds y: #lag.
			b add: ds.
			b axisX noLabel; noTick.
			b axisY title: 'Lag'; noDecimal; withThousandsSeparator.
			b addDecorator: (RTAverageDecorator new lineColor: Color blue).
			b addDecorator: (RTStandardDeviationDecorator new lineColor: Color blue trans).
			b build.
			
			lb := RTLegendBuilder new.
			lb view: b view.
			lb addText: 'Lag along the entries'.
			lb addLineColor: Color blue text: 'Average'.
			lb addLineColor: Color blue trans text: 'Standard deviation (= tell the range of normal values)'.
			lb build.
			
			RTGrapherSelectRangeViewContext onGrapher: b callback: [ :elements |  (b view attributeAt: #presentation) selection: elements ].
			b view  @ RTResizeableViewContextInteraction.
			
			b view ]
			