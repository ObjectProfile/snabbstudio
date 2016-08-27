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
	zs size: multiGrapher extent y.
	zs build.
	e := zs view elements.
	e translateBy: (multiGrapher extent x + 20) @ multiGrapher extent y negated
	"			ps := self createPanSlider.
			ps size: grapher extent x.
			ps build.
			(ps view elements copyWithoutAll: e) translateBy: 0 @ 100 "