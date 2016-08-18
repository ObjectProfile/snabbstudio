as yet unclassified
renderIn: aView
	| b ds lb messageTypes normalizer ib recordsByType |
	recordsByType := Dictionary new.
	self entries
		do:
			[ :each | (recordsByType at: each messageTemplate ifAbsentPut: [ OrderedCollection new ]) add: each ].
	recordsByType
		keysAndValuesDo: [ :key :values | 
			recordsByType
				at: key
				put:
					(RTData new
						y: #lag;
						points: values;
						yourself) ].
	messageTypes := recordsByType keys.
	normalizer := RTMultiLinearColorForIdentity new
		objects: messageTypes;
		command: #messageTemplate.
	b := RTGrapher new.
	b view: aView.
	ds := RTData new.
	ds dotShape circle color: [ :e | normalizer rtValue: e ].
	ds points: self entries.
	ds interaction noInteractions.
	ds interaction fixedPopupText: #yourself.
	ds interaction
		highlightElements: [ :e | ds elements select: [ :each | each model messageTemplate = e messageTemplate ] ].
	ds interaction
		popupDecorator: [ :model | 
			RTAverageDecorator new
				withLabel: [ :x | 'avg' ];
				lineColor: Color black;
				dataset: (recordsByType at: model messageTemplate) ].
	ds interaction
		popupDecorator: [ :model | 
			RTStandardDeviationDecorator new
				withLabel: [ :x | 'SD' ];
				lineColor: Color black;
				dataset: (recordsByType at: model messageTemplate) ].
	ds y: #lag.
	b add: ds.
	b axisX
		noLabel;
		noTick.
	b axisY
		title: 'Lag';
		noDecimal;
		withThousandsSeparator.
	b addDecorator: (RTAverageDecorator new lineColor: Color red).
	b addDecorator: (RTStandardDeviationDecorator new lineColor: Color red trans).
	b build.
	lb := RTLegendBuilder new.
	lb onDemand.
	lb view: b view.
	messageTypes
		do: [ :each | 
			| index |
			index := messageTypes indexOf: each.
			lb
				addColor: (normalizer level: (index - 1) / messageTypes size)
				object: each lines first
				text: #yourself ].
	lb right.
	lb build.
	lb := RTLegendBuilder new.
	lb textSize: 10.
	lb gapSize: 0.
	lb view: b view.
	messageTypes
		do: [ :each | 
			| index |
			index := messageTypes indexOf: each.
			lb
				addColor: (normalizer level: (index - 1) / messageTypes size)
				object: each
				text: [ :t | ((t lines first , '  ' splitOn: ' ') first: 3) joinUsing: ' ' ] ].
	lb right.
	lb build.
	ib := RTDataInteractionBuilder new.
	ib builder: b.
	ib
		highlightElements: [ :e | ds elements select: [ :each | each model messageTemplate = e ] ].
	ib
		popupDecorator: [ :messageText | 
			RTAverageDecorator new
				withLabel: [ :x | 'avg' ];
				lineColor: Color black;
				dataset: (recordsByType at: messageText) ].
	ib
		popupDecorator: [ :messageText | 
			RTStandardDeviationDecorator new
				withLabel: [ :x | 'SD' ];
				lineColor: Color black;
				dataset: (recordsByType at: messageText) ].
	ib
		setUpElements:
			((lb legendElement attributeAt: #nestedElements)
				flatCollect: [ :each | 
					each first model: each second model.
					each ]).
	lb := RTLegendBuilder new.
	lb view: b view.
	lb textSize: 10.
	lb gapSize: 0.
	lb addText: 'Lag along the entries'.
	lb addLineColor: Color red text: 'Average'.
	lb
		addLineColor: Color red trans
		text: 'Standard deviation (= tell the range of normal values)'.
	lb build.
	RTGrapherSelectRangeViewContext
		onGrapher: b
		callback: [ :elements | (b view attributeAt: #presentation) selection: elements ].
	b view @ RTResizeableViewContextInteraction.
	b view