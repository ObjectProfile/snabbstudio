hooks
renderIn: aView
	| ds zs ps e |
	view := aView.
	grapher ifNotNil: [ self cleanView: grapher view ].
	grapher := self createGrapher.
	self
		renderOnce: [ view attributeAt: self className put: self.
			view
				when: TRMouseRightClick
				do: [ :evt | 
					zoom := zoom + self zoomStep.
					self zoomOut ].
			"view when: TRMouseWheelEvent do: [ :evt | self mouseZoom: evt ]."
			"view when: TRMouseDragging do: [ :evt | self mouseDrag: evt ]"
			view @ RTDraggableView.
			SBSelectRangeContext setOnView: view.
			self renderButtons.
			zs := self createZoomSlider.
			zs size: grapher extent y.
			zs build.
			e := zs view elements.
			e translateBy: (grapher extent x + 20) @ grapher extent y negated.
			ps := self createPanSlider.
			ps size: grapher extent x.
			ps build.
			(ps view elements copyWithoutAll: e) translateBy: 0 @ 100 ].
	labelBuilder ifNotNil: [ self cleanView: labelBuilder view ].
	labelBuilder := self createInfoLegend.
	ds := self dataSet.
	ds interaction
		when: TRMouseLeftClick
		do: [ :evt | self zoomInOn: evt element model by: self zoomStep * 10 ].
	grapher add: ds.
	grapher axisX
		noDecimal;
		numberOfLabels: 10 / 2;
		numberOfTicks: 10;
		labelRotation: -30.
	grapher axisY noDecimal.
	grapher build.
	view addAll: grapher view elements.
	view addAll: grapher view edges.
	labelBuilder build.
	labelBuilder legendElement translateBy: 0 @ 100.
	view addAll: labelBuilder view elements.
	view addAll: labelBuilder view edges