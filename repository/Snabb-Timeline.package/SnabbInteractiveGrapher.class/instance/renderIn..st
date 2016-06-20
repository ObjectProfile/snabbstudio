hooks
renderIn: aView
	| g lb ds |
	view := aView.
	self
		renderOnce: [ view
				when: TRMouseRightClick
				do: [ :evt | 
					zoom := zoom + self zoomStep.
					self zoomOut ].
			view when: TRMouseWheelEvent do: [ :evt | self mouseZoom: evt ].
			view @ RTDraggableView ].
	g := self createGrapher.
	lb := self createInfoLegend.
	ds := self dataSet.
	ds interaction
		when: TRMouseLeftClick
		do:
			[ :evt | self zoomInOn: evt element model first @ evt element model second by: self zoomStep * 10 ].
	g add: ds.
	g axisX
		noDecimal;
		numberOfLabels: maxPoints / 2;
		numberOfTicks: maxPoints.
	g axisY noDecimal.
	g build.
	lb build