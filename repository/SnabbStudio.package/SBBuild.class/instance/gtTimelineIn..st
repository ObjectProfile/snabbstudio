gt-inspector-extension
gtTimelineIn: composite
	<gtInspectorPresentationOrder: 30>
	self ensureTimelineDownloaded.
	composite roassal2
		title: 'Timeline (first 10k)';
		initializeView: [ | g records |
			g := SBInteractiveGrapher new.
			records := (SnabbTimeline new load: 10000 from: self timelineFile) records.
			g data: records.
			g zoom: 1.
			g maxPoints: 10.
			g build.
			g view ]