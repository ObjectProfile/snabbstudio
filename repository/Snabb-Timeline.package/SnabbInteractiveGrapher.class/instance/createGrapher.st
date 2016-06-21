hooks
createGrapher
	| g |
	g := RTGrapher new.
	g view: view.
	g extent: 300 @ 200.
	g minX: self context first first.
	"g axisX
		noDecimal;
		numberOfLabels: maxPoints / 2;
		numberOfTicks: maxPoints.
	g axisY noDecimal."
	g withoutOrigin.
	^ g