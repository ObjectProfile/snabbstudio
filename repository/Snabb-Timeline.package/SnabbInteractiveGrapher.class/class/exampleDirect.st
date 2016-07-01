as yet unclassified
exampleDirect
	| g records |
	g := SnabbInteractiveGrapher new.
	records := (SnabbTimeline new
		load: 10000
		from: FileLocator home asFileReference / 'prog/snabb-data/state/state/6630/engine/timeline')
		records.
	g data: records.
	g zoom: 1.
	g maxPoints: 10.
	g build.
	^ g view inspect