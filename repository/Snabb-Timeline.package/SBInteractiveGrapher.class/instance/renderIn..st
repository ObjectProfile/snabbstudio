hooks
renderIn: aView
	| g lb ds |
	view := aView.
	self
		renderOnce: [ | int |
			view attributeAt: self className put: self.
			view
				when: TRMouseRightClick
				do: [ :evt | 
					zoom := zoom + self zoomStep.
					self zoomOut ].
			view when: TRMouseWheelEvent do: [ :evt | self mouseZoom: evt ].
			"view when: TRMouseDragging do: [ :evt | self mouseDrag: evt ]"
			view @ RTDraggableView.
			SBSelectRangeContext setOnView: view.
			self renderButtons ].
	g := self createGrapher.
	lb := self createInfoLegend.
	ds := self dataSet.
	ds interaction
		when: TRMouseLeftClick
		do: [ :evt | self zoomInOn: evt element model by: self zoomStep * 10 ].
	g add: ds.
	g axisX
		noDecimal;
		numberOfLabels: maxPoints / 2;
		numberOfTicks: maxPoints;
		labelRotation: -30.
	g axisY noDecimal.
	g build.
	lb build