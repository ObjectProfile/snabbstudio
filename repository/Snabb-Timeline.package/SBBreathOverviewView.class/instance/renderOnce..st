hooks
renderOnce: aView
	| zs e |
	(view hasAttribute: self className)
		ifTrue: [ ^ self ].
	view attributeAt: self className put: self.
	SBSelectRangeContext setOnView: view.
	view @ RTDraggableView.
	"			SBSelectRangeContext setOnView: view."
	"			self renderButtons."
	zs := self createZoomSlider.
	zs size: grapher extent y.
	zs build.
	e := zs view elements.
	e translateBy: (grapher extent x + 20) @ grapher extent y negated
	"			ps := self createPanSlider.
			ps size: grapher extent x.
			ps build.
			(ps view elements copyWithoutAll: e) translateBy: 0 @ 100 "