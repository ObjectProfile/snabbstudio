hooks
createGrapher
	| g |
	g := RTGrapher new.
	g extent: 300 @ 200.
	g minX: self context first tsc.
	g withoutOrigin.
	^ g